
(cl:in-package :asdf)

(defsystem "wam_srvs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
)
  :components ((:file "_package")
    (:file "BHandFingerPos" :depends-on ("_package_BHandFingerPos"))
    (:file "_package_BHandFingerPos" :depends-on ("_package"))
    (:file "BHandFingerVel" :depends-on ("_package_BHandFingerVel"))
    (:file "_package_BHandFingerVel" :depends-on ("_package"))
    (:file "BHandGraspPos" :depends-on ("_package_BHandGraspPos"))
    (:file "_package_BHandGraspPos" :depends-on ("_package"))
    (:file "BHandGraspVel" :depends-on ("_package_BHandGraspVel"))
    (:file "_package_BHandGraspVel" :depends-on ("_package"))
    (:file "BHandPinchPos" :depends-on ("_package_BHandPinchPos"))
    (:file "_package_BHandPinchPos" :depends-on ("_package"))
    (:file "BHandSpreadPos" :depends-on ("_package_BHandSpreadPos"))
    (:file "_package_BHandSpreadPos" :depends-on ("_package"))
    (:file "BHandSpreadVel" :depends-on ("_package_BHandSpreadVel"))
    (:file "_package_BHandSpreadVel" :depends-on ("_package"))
    (:file "CartPosMove" :depends-on ("_package_CartPosMove"))
    (:file "_package_CartPosMove" :depends-on ("_package"))
    (:file "CartVel" :depends-on ("_package_CartVel"))
    (:file "_package_CartVel" :depends-on ("_package"))
    (:file "Connect" :depends-on ("_package_Connect"))
    (:file "_package_Connect" :depends-on ("_package"))
    (:file "FollowPath" :depends-on ("_package_FollowPath"))
    (:file "_package_FollowPath" :depends-on ("_package"))
    (:file "ForceTorque" :depends-on ("_package_ForceTorque"))
    (:file "_package_ForceTorque" :depends-on ("_package"))
    (:file "ForceTorqueBase" :depends-on ("_package_ForceTorqueBase"))
    (:file "_package_ForceTorqueBase" :depends-on ("_package"))
    (:file "ForceTorqueTool" :depends-on ("_package_ForceTorqueTool"))
    (:file "_package_ForceTorqueTool" :depends-on ("_package"))
    (:file "ForceTorqueToolTime" :depends-on ("_package_ForceTorqueToolTime"))
    (:file "_package_ForceTorqueToolTime" :depends-on ("_package"))
    (:file "GetToolPose" :depends-on ("_package_GetToolPose"))
    (:file "_package_GetToolPose" :depends-on ("_package"))
    (:file "GravityComp" :depends-on ("_package_GravityComp"))
    (:file "_package_GravityComp" :depends-on ("_package"))
    (:file "HapticSphere" :depends-on ("_package_HapticSphere"))
    (:file "_package_HapticSphere" :depends-on ("_package"))
    (:file "Hold" :depends-on ("_package_Hold"))
    (:file "_package_Hold" :depends-on ("_package"))
    (:file "HoldGains" :depends-on ("_package_HoldGains"))
    (:file "_package_HoldGains" :depends-on ("_package"))
    (:file "JP_PID" :depends-on ("_package_JP_PID"))
    (:file "_package_JP_PID" :depends-on ("_package"))
    (:file "JV_PID" :depends-on ("_package_JV_PID"))
    (:file "_package_JV_PID" :depends-on ("_package"))
    (:file "JointMove" :depends-on ("_package_JointMove"))
    (:file "_package_JointMove" :depends-on ("_package"))
    (:file "JointMoveBlock" :depends-on ("_package_JointMoveBlock"))
    (:file "_package_JointMoveBlock" :depends-on ("_package"))
    (:file "Link" :depends-on ("_package_Link"))
    (:file "_package_Link" :depends-on ("_package"))
    (:file "OrtnGains" :depends-on ("_package_OrtnGains"))
    (:file "_package_OrtnGains" :depends-on ("_package"))
    (:file "OrtnMove" :depends-on ("_package_OrtnMove"))
    (:file "_package_OrtnMove" :depends-on ("_package"))
    (:file "OrtnSplitMove" :depends-on ("_package_OrtnSplitMove"))
    (:file "_package_OrtnSplitMove" :depends-on ("_package"))
    (:file "PID" :depends-on ("_package_PID"))
    (:file "_package_PID" :depends-on ("_package"))
    (:file "Play" :depends-on ("_package_Play"))
    (:file "_package_Play" :depends-on ("_package"))
    (:file "PoseMove" :depends-on ("_package_PoseMove"))
    (:file "_package_PoseMove" :depends-on ("_package"))
    (:file "TP_PID" :depends-on ("_package_TP_PID"))
    (:file "_package_TP_PID" :depends-on ("_package"))
    (:file "Teach" :depends-on ("_package_Teach"))
    (:file "_package_Teach" :depends-on ("_package"))
  ))