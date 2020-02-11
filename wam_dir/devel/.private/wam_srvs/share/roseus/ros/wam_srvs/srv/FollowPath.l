;; Auto-generated. Do not edit!


(when (boundp 'wam_srvs::FollowPath)
  (if (not (find-package "WAM_SRVS"))
    (make-package "WAM_SRVS"))
  (shadow 'FollowPath (find-package "WAM_SRVS")))
(unless (find-package "WAM_SRVS::FOLLOWPATH")
  (make-package "WAM_SRVS::FOLLOWPATH"))
(unless (find-package "WAM_SRVS::FOLLOWPATHREQUEST")
  (make-package "WAM_SRVS::FOLLOWPATHREQUEST"))
(unless (find-package "WAM_SRVS::FOLLOWPATHRESPONSE")
  (make-package "WAM_SRVS::FOLLOWPATHRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass wam_srvs::FollowPathRequest
  :super ros::object
  :slots (_position _normal _size ))

(defmethod wam_srvs::FollowPathRequest
  (:init
   (&key
    ((:position __position) (let (r) (dotimes (i 0) (push (instance geometry_msgs::Point32 :init) r)) r))
    ((:normal __normal) (let (r) (dotimes (i 0) (push (instance geometry_msgs::Point32 :init) r)) r))
    ((:size __size) 0)
    )
   (send-super :init)
   (setq _position __position)
   (setq _normal __normal)
   (setq _size (round __size))
   self)
  (:position
   (&rest __position)
   (if (keywordp (car __position))
       (send* _position __position)
     (progn
       (if __position (setq _position (car __position)))
       _position)))
  (:normal
   (&rest __normal)
   (if (keywordp (car __normal))
       (send* _normal __normal)
     (progn
       (if __normal (setq _normal (car __normal)))
       _normal)))
  (:size
   (&optional __size)
   (if __size (setq _size __size)) _size)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Point32[] _position
    (apply #'+ (send-all _position :serialization-length)) 4
    ;; geometry_msgs/Point32[] _normal
    (apply #'+ (send-all _normal :serialization-length)) 4
    ;; int32 _size
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Point32[] _position
     (write-long (length _position) s)
     (dolist (elem _position)
       (send elem :serialize s)
       )
     ;; geometry_msgs/Point32[] _normal
     (write-long (length _normal) s)
     (dolist (elem _normal)
       (send elem :serialize s)
       )
     ;; int32 _size
       (write-long _size s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Point32[] _position
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _position (let (r) (dotimes (i n) (push (instance geometry_msgs::Point32 :init) r)) r))
     (dolist (elem- _position)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; geometry_msgs/Point32[] _normal
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _normal (let (r) (dotimes (i n) (push (instance geometry_msgs::Point32 :init) r)) r))
     (dolist (elem- _normal)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; int32 _size
     (setq _size (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass wam_srvs::FollowPathResponse
  :super ros::object
  :slots ())

(defmethod wam_srvs::FollowPathResponse
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

(defclass wam_srvs::FollowPath
  :super ros::object
  :slots ())

(setf (get wam_srvs::FollowPath :md5sum-) "d84f5b474d984f3bb9b08180eaffe23c")
(setf (get wam_srvs::FollowPath :datatype-) "wam_srvs/FollowPath")
(setf (get wam_srvs::FollowPath :request) wam_srvs::FollowPathRequest)
(setf (get wam_srvs::FollowPath :response) wam_srvs::FollowPathResponse)

(defmethod wam_srvs::FollowPathRequest
  (:response () (instance wam_srvs::FollowPathResponse :init)))

(setf (get wam_srvs::FollowPathRequest :md5sum-) "d84f5b474d984f3bb9b08180eaffe23c")
(setf (get wam_srvs::FollowPathRequest :datatype-) "wam_srvs/FollowPathRequest")
(setf (get wam_srvs::FollowPathRequest :definition-)
      "geometry_msgs/Point32[]   position
geometry_msgs/Point32[]   normal
int32 size

================================================================================
MSG: geometry_msgs/Point32
# This contains the position of a point in free space(with 32 bits of precision).
# It is recommeded to use Point wherever possible instead of Point32.  
# 
# This recommendation is to promote interoperability.  
#
# This message is designed to take up less space when sending
# lots of points at once, as in the case of a PointCloud.  

float32 x
float32 y
---
")

(setf (get wam_srvs::FollowPathResponse :md5sum-) "d84f5b474d984f3bb9b08180eaffe23c")
(setf (get wam_srvs::FollowPathResponse :datatype-) "wam_srvs/FollowPathResponse")
(setf (get wam_srvs::FollowPathResponse :definition-)
      "geometry_msgs/Point32[]   position
geometry_msgs/Point32[]   normal
int32 size

================================================================================
MSG: geometry_msgs/Point32
# This contains the position of a point in free space(with 32 bits of precision).
# It is recommeded to use Point wherever possible instead of Point32.  
# 
# This recommendation is to promote interoperability.  
#
# This message is designed to take up less space when sending
# lots of points at once, as in the case of a PointCloud.  

float32 x
float32 y
---
")



(provide :wam_srvs/FollowPath "d84f5b474d984f3bb9b08180eaffe23c")


