;; Auto-generated. Do not edit!


(when (boundp 'wam_srvs::PoseMove)
  (if (not (find-package "WAM_SRVS"))
    (make-package "WAM_SRVS"))
  (shadow 'PoseMove (find-package "WAM_SRVS")))
(unless (find-package "WAM_SRVS::POSEMOVE")
  (make-package "WAM_SRVS::POSEMOVE"))
(unless (find-package "WAM_SRVS::POSEMOVEREQUEST")
  (make-package "WAM_SRVS::POSEMOVEREQUEST"))
(unless (find-package "WAM_SRVS::POSEMOVERESPONSE")
  (make-package "WAM_SRVS::POSEMOVERESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass wam_srvs::PoseMoveRequest
  :super ros::object
  :slots (_pose ))

(defmethod wam_srvs::PoseMoveRequest
  (:init
   (&key
    ((:pose __pose) (instance geometry_msgs::Pose :init))
    )
   (send-super :init)
   (setq _pose __pose)
   self)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Pose _pose
    (send _pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Pose _pose
       (send _pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;;
   self)
  )

(defclass wam_srvs::PoseMoveResponse
  :super ros::object
  :slots ())

(defmethod wam_srvs::PoseMoveResponse
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass wam_srvs::PoseMove
  :super ros::object
  :slots ())

(setf (get wam_srvs::PoseMove :md5sum-) "f192399f711a48924df9a394d37edd67")
(setf (get wam_srvs::PoseMove :datatype-) "wam_srvs/PoseMove")
(setf (get wam_srvs::PoseMove :request) wam_srvs::PoseMoveRequest)
(setf (get wam_srvs::PoseMove :response) wam_srvs::PoseMoveResponse)

(defmethod wam_srvs::PoseMoveRequest
  (:response () (instance wam_srvs::PoseMoveResponse :init)))

(setf (get wam_srvs::PoseMoveRequest :md5sum-) "f192399f711a48924df9a394d37edd67")
(setf (get wam_srvs::PoseMoveRequest :datatype-) "wam_srvs/PoseMoveRequest")
(setf (get wam_srvs::PoseMoveRequest :definition-)
      "geometry_msgs/Pose pose

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
---

")

(setf (get wam_srvs::PoseMoveResponse :md5sum-) "f192399f711a48924df9a394d37edd67")
(setf (get wam_srvs::PoseMoveResponse :datatype-) "wam_srvs/PoseMoveResponse")
(setf (get wam_srvs::PoseMoveResponse :definition-)
      "geometry_msgs/Pose pose

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
---

")



(provide :wam_srvs/PoseMove "f192399f711a48924df9a394d37edd67")


