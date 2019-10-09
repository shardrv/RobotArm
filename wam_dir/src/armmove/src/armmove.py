#!/usr/bin/env python

import rospy, cv2, re, sys
import numpy as np
from std_msgs.msg import String
from sensor_msgs.msg import CompressedImage, JointState
from geometry_msgs.msg import PoseStamped, Pose
from std_srvs.srv import Empty
from wam_srvs.srv import Hold
from wam_srvs.srv import JointMove
from wam_srvs.srv import PoseMove
from wam_srvs.srv import CartPosMove
from wam_srvs.srv import OrtnMove
from wam_srvs.srv import OrtnSplitMove
from wam_srvs.srv import BHandGraspVel
from wam_srvs.srv import BHandSpreadVel
from wam_srvs.srv import BHandGraspPos
from wam_srvs.srv import BHandSpreadPos
from wam_srvs.srv import Teach

from cv_bridge import CvBridge, CvBridgeError
from python_qt_binding.QtCore import *
from python_qt_binding.QtGui import *
from python_qt_binding.QtWidgets import *

TEXT_WIDTH = 420
TEXT_HEIGHT = 150


print "Program running..."

class Robot():
#############################################################################################################
# INITIALIZATION METHODS
#############################################################################################################
	def __init__(self):
		#super(WamTeleopWidget, self).__init__()
		#self.setWindowTitle("WAM Teleop Widget")
		# global variables
		#self.bridge = CvBridge()
		self.previous_pose = PoseStamped()
		self.current_pose = PoseStamped()
		self.previous_joint_state = JointState()
		self.current_joint_state = JointState()
		# check which robot is running

		T = rospy.get_published_topics()
		text = ''.join(str(r) for t in T for r in t)
		connected = False
		while not connected:
			print "Waiting for WAM connection..."
			if re.match('.*?(zeus).*?', text) != None:
				print "Connected to Zeus"
				self.ns = "/zeus"
				self.dof = 7
				connected = True
			elif re.match('.*?(slax).*?', text) != None:
				print "Connected to Slax"
				self.ns = "/slax"
				self.dof = 4
				connected = True
			else:
				rospy.sleep(2.)
		print "Waiting for WAM services..."
		while not self.initialize_wam_client():
			print "Waiting for WAM services..."
			continue
		print "Connected to all services"

		# setup services
		self.go_home = rospy.ServiceProxy(self.ns + "/wam/go_home", Empty)
		self.hold_joint_pos = rospy.ServiceProxy(self.ns + "/wam/hold_joint_pos", Hold)
		self.hold_cart_pos = rospy.ServiceProxy(self.ns + "/wam/hold_cart_pos", Hold)
		self.hold_ortn = rospy.ServiceProxy(self.ns + "/wam/hold_ortn", Hold)
		self.joint_move = rospy.ServiceProxy(self.ns + "/wam/joint_move", JointMove)
		self.pose_move = rospy.ServiceProxy(self.ns + "/wam/pose_move", PoseMove)
		self.cart_move = rospy.ServiceProxy(self.ns + "/wam/cart_move", CartPosMove)
		self.ortn_move = rospy.ServiceProxy(self.ns + "/wam/ortn_move", OrtnMove)
		self.ortn_split_move = rospy.ServiceProxy(self.ns + "/wam/ortn_split_move", OrtnSplitMove)
		self.bhand_IN = rospy.ServiceProxy(self.ns + "/bhand/initialize", Empty)
		self.bhand_GC = rospy.ServiceProxy(self.ns + "/bhand/close_grasp", Empty)
		self.bhand_SC = rospy.ServiceProxy(self.ns + "/bhand/close_spread", Empty)
		self.bhand_GO = rospy.ServiceProxy(self.ns + "/bhand/open_grasp", Empty)
		self.bhand_SO = rospy.ServiceProxy(self.ns + "/bhand/open_spread", Empty)
		self.bhand_GV = rospy.ServiceProxy(self.ns + "/bhand/grasp_vel", BHandGraspVel)
		self.bhand_SV = rospy.ServiceProxy(self.ns + "/bhand/spread_vel", BHandSpreadVel)
		self.bhand_GP = rospy.ServiceProxy(self.ns + "/bhand/grasp_pos", BHandGraspPos)
		self.bhand_SP = rospy.ServiceProxy(self.ns + "/bhand/spread_pos", BHandSpreadPos)
		#self.teach_pos = rospy.ServiceProxy(self.ns + "/wam/Teach", Empty)
		self.teach_motion_srvs = rospy.ServiceProxy("/" + ns + "/wam/teach_motion", Teach)

		# setup subscribers and publishers
		joint_state_sub = rospy.Subscriber(self.ns + "/wam/joint_states",  JointState, self.joint_state_callback, queue_size = 3)
		#camera_sub = rospy.Subscriber("/usb_cam/image_raw/compressed",  CompressedImage, self.camera_callback, queue_size = 3)
		pose_sub = rospy.Subscriber(self.ns + "/wam/pose",  PoseStamped, self.pose_callback, queue_size = 3)
		self.pub_ = rospy.Publisher('/task_coordinates', String, queue_size = 1)
		# finish initialization
		#self.initialize_widgets()
		# if not self.initialize_wam():
		# 	print "Initializing WAM failed"
		# else:
		# 	print "WAM initialized"
		# if not self.initialize_bhand():
		# 	print "Initializing bhand failed"
		# else:
		# 	print "bhand initialized"

	def initialize_wam_client(self):
		rospy.wait_for_service(self.ns + "/wam/go_home")
		rospy.wait_for_service(self.ns + "/wam/hold_joint_pos")
		rospy.wait_for_service(self.ns + "/wam/hold_cart_pos")
		rospy.wait_for_service(self.ns + "/wam/hold_ortn")
		rospy.wait_for_service(self.ns + "/wam/joint_move")
		rospy.wait_for_service(self.ns + "/wam/pose_move")
		rospy.wait_for_service(self.ns + "/wam/cart_move")
		rospy.wait_for_service(self.ns + "/wam/cart_vel")
		rospy.wait_for_service(self.ns + "/wam/ortn_move")
		rospy.wait_for_service(self.ns + "/wam/ortn_split_move")
		rospy.wait_for_service(self.ns + "/bhand/initialize")
		rospy.wait_for_service(self.ns + "/bhand/close_grasp")
		rospy.wait_for_service(self.ns + "/bhand/close_spread")
		rospy.wait_for_service(self.ns + "/bhand/open_grasp")
		rospy.wait_for_service(self.ns + "/bhand/open_spread")
		rospy.wait_for_service(self.ns + "/bhand/grasp_vel")
		rospy.wait_for_service(self.ns + "/bhand/spread_vel")
		rospy.wait_for_service(self.ns + "/bhand/grasp_pos")
		rospy.wait_for_service(self.ns + "/bhand/spread_pos")
		rospy.wait_for_service(self.ns + "/wam/teach_pos")
		return True


	def initialize_wam(self):
		if self.dof == 7:
			pos = [0.0, 0.0, 0.0, 1.57, 0.0, 0.0, 0.0]
		elif self.dof == 4:
			pos = [0.0, 0.0, 0.0, 1.57]
		else:
			print "Unknown DOF: ", self.dof
			return False
		return self.move_joints(pos)

	def initialize_bhand(self):
		try:
			self.bhand_IN()
		except rospy.ServiceException, e:
			print "Service call bhand_initialize failed: %s" %e
			return False
		if not self.velocity_grasp(30.0) or not self.velocity_spread(20.0) or not self.close_spread():
			return False
		else:
			return True

# set joint position lock to parameter value

	def lock_joint_position(bool lock)
		{ 
			wam_srvs::Hold req;
			req.request.hold = lock;
			return hold_jnt_srvs.call(req);  
		}
		

# teach waypoints in joint space
	def teach_waypoints_joint(self)
		try:
		self.lock_joint_position(false);
		capturing = true;
		stringstream ss;
		string input = "";
		print ("Move arm to desired waypoint then press 'c' to save position\nPress 'd' to finish and save to file\n")
		while (capturing) {
			while (!std::getline(std::cin, input)) { continue; } # wait for users input
			if (input[0] == 'c' || input[0] == 'C') {   
				for (int i = 0; i < dof; ++i) { ss << previous_joint_state.position[i] << " "; }
				write_to_file(waypoints_filename, ss.str() + "\n");
				std::cout << "\tWriting [" << ss.str() << "] to " << waypoints_filename << ".txt\n";
				ss.str(std::string());
			} else if (input[0] == 'd' || input[0] == 'D') {
				capturing = false;
			} else  {
				print("Press 'c' to capture waypoint and 'd' when done\n")
			}
		}
		return true;
	}



#############################################################################################################
# SERVICE CALL METHODS 
#############################################################################################################
	def move_joints(self, target):
		try:
			return self.joint_move(joints=target)
		except rospy.ServiceException, e:
			print "Service call joint_move failed: %s" %e
			return False

	def move_pose(self, target):
		try:
			return self.pose_move(pose=target)
		except rospy.ServiceException, e:
			print "Service call pose_move failed: %s" %e
			return False

	def close_grasp(self):
		try:
			return self.bhand_GC()
		except rospy.ServiceException, e:
			print "Service call bhand_GC failed: %s" %e
			return False

	def close_spread(self):
		try:
			return self.bhand_SC()
		except rospy.ServiceException, e:
			print "Service call bhand_SC failed: %s" %e
			return False

	def open_grasp(self):
		try:
			return self.bhand_GO()
		except rospy.ServiceException, e:
			print "Service call bhand_GO failed: %s" %e
			return False

	def open_spread(self):
		try:
			return self.bhand_SO()
		except rospy.ServiceException, e:
			print "Service call bhand_OS failed: %s" %e
			return False

	def velocity_grasp(self, vel):
		try:
			return self.bhand_GV(velocity=vel)
		except rospy.ServiceException, e:
			print "Service call bhand_GV failed: %s" %e
			return False

	def velocity_spread(self, vel):
		try:
			return self.bhand_SV(velocity=vel)
		except rospy.ServiceException, e:
			print "Service call bhand_SV failed: %s" %e
			return False

#	def teaching(self):
#		try:
#			return self.teach_pos()
#		except rospy.ServiceException, e:
#			print "Service call bhand_SV failed: %s" %e
#			return False

	def teach_motion(self):
		name = raw_input("Please enter task name >> ")
		time = datetime.datetime.now().strftime("%Y%m%d%H%M")
		filename = name + "_" + time[2:]
		try:
  			self.teach_motion_srvs(filename)
			print "Saving motion to " + filename
			self.textfiles.append(filename)
		except rospy.ServiceException as exc:
  			print("Service Error: " + str(exc))

#############################################################################################################
# CONTROLLER METHODS 
#############################################################################################################
	def control_center(self, direction):
		print "Moving in direction: ", direction
		if direction == "right":
			# 
			self.change_pose("x", True, True)
		elif direction == "left":
			self.change_pose("x", True, False)
		elif direction == "up":
			# 
			self.change_pose("y", True, True)
		elif direction == "down":
			self.change_pose("y", True, False)
		elif direction == "forward":
			self.change_pose("z", True, True)
		elif direction == "backward":
			self.change_pose("z", True, False)
		

	def change_pose(self, var, linear, increase):
		target = Pose()
		target.orientation = self.current_pose.pose.orientation
		target.position = self.current_pose.pose.position
		if linear:
			self.change_position(target, var, increase)
		else:
			self.change_orientation(target, var, increase)

	def change_position(self, target, var, increase):
		if var == "x":
		 	if increase:
				target.position.x += 0.1
			else:
				target.position.x -= 0.1
		elif var == "y":
		 	if increase:
				target.position.y += 0.1
			else:
				target.position.y -= 0.1
		elif var == "z":
		 	if increase:
				target.position.z += 0.1
			else:
				target.position.z -= 0.1
		else:
			print "Unknown variable option: ", var
		self.move_pose(target)

	def change_orientation(self, target, var, increase):
		if var == "x":
		 	if increase:
				target.orientation.x += 0.1
			else:
				target.orientation.x -= 0.1
		elif var == "y":
		 	if increase:
				target.orientation.y += 0.1
			else:
				target.orientation.y -= 0.1			
		elif var == "z":
		 	if increase:
				target.orientation.z += 0.1
			else:
				target.orientation.z -= 0.1	
		elif var == "w":
		 	if increase:
				target.orientation.w += 0.1
			else:
				target.orientation.w -= 0.1
		else:
			print "Unknown variable option: ", var
		self.move_pose(target)

#############################################################################################################
# DEBUGGING METHODS
#############################################################################################################
	def debug(self):
		print "********************************************************\nDEBUGGING INFORMATION: "
		print "\nROBOT NAMESPACE: \n", self.ns
		print "\nPREVIOUS POSE: \n", self.previous_pose
		print "\nCURRENT POSE: \n", self.current_pose
		print "\nPREVIOUS JOINT STATES: \n", self.previous_joint_state
		print "\nCURRENT JOINT STATES: \n", self.current_joint_state
		print "********************************************************\n"

#############################################################################################################
# CALLBACK METHODS
#############################################################################################################
	def camera_callback(self, data):
		self.pixmap = self.convert_compressed_img(data)
		self.paint_pixmap(self.pixmap)
		if self.current_widget == "menu":
			self._view.setPixmap(self.pixmap)
		else:
			print "Image callback error -- invalid current_widget"

	def pose_callback(self, data):
		self.previous_pose = self.current_pose
		self.current_pose.pose = data.pose

	def joint_state_callback(self, data):
		self.previous_joint_state = self.current_joint_state
		self.current_joint_state.header = data.header
		self.current_joint_state.name = data.name
		self.current_joint_state.position = data.position
		self.current_joint_state.velocity = data.velocity
		self.current_joint_state.effort = data.effort

#def main():
#	print "in main"
#	#__init__()
#	p = WamTeleopWidget()
#	p.close_grasp()	
#main()

p = Robot()
print p.dof

#Initialize the robot arm
p.initialize_wam()
p.initialize_bhand()

#Go to specific position for the experimental setup
#p.teach_motion()
p.teach_motion()

#Take proper orientation


#Open grasp and wait for the user to press enter
print "Hit enter to grasp onto the object......"


#Close grasp, Find Joint efforts, Jacobian and finger position and Record in file


#Wait for user to press enter and open grasp
print "Now opening grasp, please catch the object......" 



#Goto the same state as before and record joint efforts



#Final calculation of the Forces and record


