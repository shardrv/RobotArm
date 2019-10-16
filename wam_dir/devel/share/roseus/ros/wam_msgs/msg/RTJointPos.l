;; Auto-generated. Do not edit!


(when (boundp 'wam_msgs::RTJointPos)
  (if (not (find-package "WAM_MSGS"))
    (make-package "WAM_MSGS"))
  (shadow 'RTJointPos (find-package "WAM_MSGS")))
(unless (find-package "WAM_MSGS::RTJOINTPOS")
  (make-package "WAM_MSGS::RTJOINTPOS"))

(in-package "ROS")
;;//! \htmlinclude RTJointPos.msg.html


(defclass wam_msgs::RTJointPos
  :super ros::object
  :slots (_joints _rate_limits ))

(defmethod wam_msgs::RTJointPos
  (:init
   (&key
    ((:joints __joints) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:rate_limits __rate_limits) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _joints __joints)
   (setq _rate_limits __rate_limits)
   self)
  (:joints
   (&optional __joints)
   (if __joints (setq _joints __joints)) _joints)
  (:rate_limits
   (&optional __rate_limits)
   (if __rate_limits (setq _rate_limits __rate_limits)) _rate_limits)
  (:serialization-length
   ()
   (+
    ;; float32[] _joints
    (* 4    (length _joints)) 4
    ;; float32[] _rate_limits
    (* 4    (length _rate_limits)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[] _joints
     (write-long (length _joints) s)
     (dotimes (i (length _joints))
       (sys::poke (elt _joints i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _rate_limits
     (write-long (length _rate_limits) s)
     (dotimes (i (length _rate_limits))
       (sys::poke (elt _rate_limits i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[] _joints
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _joints (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _joints i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _rate_limits
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _rate_limits (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _rate_limits i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get wam_msgs::RTJointPos :md5sum-) "6db71b8c4d3c870c701b3f89e85b7a36")
(setf (get wam_msgs::RTJointPos :datatype-) "wam_msgs/RTJointPos")
(setf (get wam_msgs::RTJointPos :definition-)
      "float32[] joints
float32[] rate_limits

")



(provide :wam_msgs/RTJointPos "6db71b8c4d3c870c701b3f89e85b7a36")


