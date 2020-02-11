;; Auto-generated. Do not edit!


(when (boundp 'wam_msgs::RTJointVel)
  (if (not (find-package "WAM_MSGS"))
    (make-package "WAM_MSGS"))
  (shadow 'RTJointVel (find-package "WAM_MSGS")))
(unless (find-package "WAM_MSGS::RTJOINTVEL")
  (make-package "WAM_MSGS::RTJOINTVEL"))

(in-package "ROS")
;;//! \htmlinclude RTJointVel.msg.html


(defclass wam_msgs::RTJointVel
  :super ros::object
  :slots (_velocities ))

(defmethod wam_msgs::RTJointVel
  (:init
   (&key
    ((:velocities __velocities) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _velocities __velocities)
   self)
  (:velocities
   (&optional __velocities)
   (if __velocities (setq _velocities __velocities)) _velocities)
  (:serialization-length
   ()
   (+
    ;; float32[] _velocities
    (* 4    (length _velocities)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[] _velocities
     (write-long (length _velocities) s)
     (dotimes (i (length _velocities))
       (sys::poke (elt _velocities i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[] _velocities
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _velocities (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _velocities i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get wam_msgs::RTJointVel :md5sum-) "9b1dee67c9ae4d5adf87be09d4bf02ef")
(setf (get wam_msgs::RTJointVel :datatype-) "wam_msgs/RTJointVel")
(setf (get wam_msgs::RTJointVel :definition-)
      "float32[] velocities

")



(provide :wam_msgs/RTJointVel "9b1dee67c9ae4d5adf87be09d4bf02ef")


