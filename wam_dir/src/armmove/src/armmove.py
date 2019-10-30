#!/usr/bin/env python

#include "wam_srvs/Hold.h"

import rospy, cv2, re, sys
import numpy as np
from std_msgs.msg import String
from sensor_msgs.msg import CompressedImage, JointState
from wam_msgs.msg import MatrixMN
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

cond1 = 0
cond2 = 0


#Set target value of the experiment
target = [0.0, 0.0, 0.0, 0.0 , 0.0, 0.0, 0.0]
waypoints_filename1 = "/home/dhruv/Documents/waypoints/f1.txt"
waypoints_filename2 = "/home/dhruv/Documents/waypoints/f2.txt"
waypoints_filename3 = "/home/dhruv/Documents/waypoints/f3.txt"

#print "Program running..."
print "Program Run"

def write_to_file(path, content):
	file = open(path, "w+")
	file.write(content)
	file.close()

class Robot():
#############################################################################################################
# INITIALIZATION METHODS
#############################################################################################################
	def __init__(self):
		print "DEF INIT is RUNNING"
		#super(WamTeleopWidget, self).__init__()
		#self.setWindowTitle("WAM Teleop Widget")
		# global variables
		#self.bridge = CvBridge()
		self.previous_pose = PoseStamped()
		self.current_pose = PoseStamped()
		self.previous_joint_state = JointState()
		self.current_joint_state = JointState()
		self.jacobian_data = MatrixMN()
#		print self.jacobian_value
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
#			elif re.match('.*?(slax).*?', text) != None:
#				print "Connected to Slax"
#				self.ns = "/slax"
#				self.dof = 4
#				connected = True
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
#		self.teach_motion_srvs = rospy.ServiceProxy("/" + ns + "/wam/teach_motion", Teach)

		# setup subscribers and publishers
		rospy.init_node('jacobian')



#		if (cond1 == 0 and cond2 == 0): 
		self.joint_state_sub = rospy.Subscriber(self.ns + "/wam/joint_states",  JointState, self.joint_state_callback, queue_size = 3)
		self.jacobian_sub = rospy.Subscriber(self.ns + "/wam/jacobian",  MatrixMN, self.jacobian_callback, queue_size = 3)
		#rospy.spin()
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
#		rospy.wait_for_service(self.ns + "/wam/teach_pos")
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

	def command_wam(self):
		if self.dof == 7:
			pos = target
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

	def write_to_file(path, content):
		file = open(path, "w")
		file.write(content)
		file.close()


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


	def lock_joint_position(self, lock):
		try:
			return self.hold_joint_pos(lock)
		except rospy.ServiceException, e:
			print "Service call hold_joint_pos failed: %s" %e
			return False

######################################################################################################################################################
######################################################## TEACH WAYPOINTS ##########################################################################
###############################Teach the robot to move write in python teach waypoints in joint space##############################################
######################################################################################################################################################
#	def teach_waypoints_joint(self):
#		lock_joint_position(False);

#		capturing = True;
#		user = raw_input("Move arm to desired waypoint then press 'c' to save position\nPress 'd' to finish and save to file\n")

#		while (capturing = True): 		
#			while (!std::getline(std::cin, input)) 
#			 	continue 
#			 	 wait for users input	
#			if user == 'c' or user == 'C':    
#				for i in range(0, dof):
#				 	print ss, previous_joint_state.position[i], " "
				
#				write_to_file(waypoints_filename, ss.str() + "\n")
#				print "\tWriting [", ss.str(), "] to ", waypoints_filename, ".txt\n"

#			elif user == 'd' or user == 'D': 
#				capturing = False			 
#			else:  
#				print "Press 'c' to capture waypoint and 'd' when done\n"			
#		return True

######################################################################################################################################################
######################################################################################################################################################


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
	# def camera_callback(self, data):
	# 	self.pixmap = self.convert_compressed_img(data)
	# 	self.paint_pixmap(self.pixmap)
	# 	if self.current_widget == "menu":
	# 		self._view.setPixmap(self.pixmap)
	# 	else:
	# 		print "Image callback error -- invalid current_widget"

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
#		c1 = 0
#		if c1 == 0:
		write_to_file(waypoints_filename2, str(self.current_joint_state.position))
		write_to_file(waypoints_filename3, str(self.current_joint_state.effort))
#			c1 = c1+1
		self.joint_state_sub.unregister()

	def jacobian_callback(self, data):
		self.jacobian_rows = data.m
		self.jacobian_cols = data.n
		self.jacobian_data = data.data
		#print "in callback"
		#print self.jacobian_data
#		c2 = 0
#		if c2 == 0:
		write_to_file(waypoints_filename1, str(self.jacobian_data))
#		c2 = c2+1
		self.jacobian_sub.unregister()



##############################################################
#######################MAIN ROUTINES##########################
##############################################################

#def main():
#	print "in main"
#	#__init__()
#	p = WamTeleopWidget()
#	p.close_grasp()	
#main()


p = Robot()
print p.dof

p.__init__()

print"WAM init has run..."

# p.initialize_wam_client()

# print"Init WAM client..."

# p.initialize_wam()

#rospy.signal_shutdown(reason)

#Initialize the robot arm

#INITIALIZE WAM
user = raw_input("press enter to initialise WAM")
if user == "":
    p.initialize_wam()
else:
    print "you haven't pressed enter"
#p.initialize_wam()
rospy.sleep(5)
print "WAM has been initialised..........."


# #INITIALIZE BHAND
# user = raw_input("press enter to initialise BHAND")
# if user == "":
#     p.initialize_bhand()
# else:
#     print "you haven't pressed enter"
# #p.initialize_bhand()
# rospy.sleep(5)
# print "BHAND initialised......"


# #WAM MOVE
user = raw_input("press enter to move WAM to position 0,0,0,0,0,0,0")
if user == "":
    p.command_wam()
else:
    print "you haven't pressed enter"
rospy.sleep(5)
print "WAM is at the position ......."



##############################################################
#Main program implementation to check the movement of the wam
##############################################################
# user = raw_input("press enter to initialise BHAND")
# if user == "":
#    p.initialize_bhand()
# else:
#    print "you haven't pressed enter"
# #Go to specific position for the experimental setup
# p.change_position()
# print "Moving to the new position......"
# rospy.sleep(5)



# #JOINT LOCK
# user = raw_input("press enter to lock joint position")
# if user == "":
#     p.lock_joint_position(True)
# else:
#     print "you haven't pressed enter"
# #p.lock_joint_position(True)
# rospy.sleep(5)
# print "Joints have been locked......"


# #SPREAD OPEN
# user = raw_input("press enter to open spread")
# if user == "":
#     p.open_spread()
# else:
#     print "you haven't pressed enter"
# #p.lock_joint_position(True)
# rospy.sleep(5)
# print "Spread open......"


# #GRASP CLOSE
# user = raw_input("press enter to close grasp")
# if user == "":
#     p.close_grasp()
# else:
#     print "you haven't pressed enter"
# #p.lock_joint_position(True)
# rospy.sleep(5)
# print "Grasp closed......"


# #GRASP OPEN
# user = raw_input("press enter to open grasp")
# if user == "":
#     p.open_grasp()
# else:
#     print "you haven't pressed enter"
# #p.lock_joint_position(True)
# rospy.sleep(5)
# print "Grasp opened......"


##############################################################


#rospy.sleep(5)
#Move to specific position11
#print "Move to target position 0.........." 
#p.move_joints(target)

#rospy.sleep(5)
#Take proper orientation
#p.open_grasp()
#rospy.sleep(5)
#p.open_spread()
#rospy.sleep(5)

#Open grasp and wait for the user to press enter
#print "Hit enter to grasp onto the object......"
#p.close_grasp()
#rospy.sleep(5)

#Close grasp, Find Joint efforts, Jacobian and finger position and Record in file
#p.jacobian_callback(target)

#Wait for user to press enter and open grasp
#print "Now opening grasp, please catch the object......" 
#p.open_grasp()
#rospy.sleep(5)
#p.close_spread()

#Goto the same state as before and record joint efforts

#Final calculation of the Forces and record

