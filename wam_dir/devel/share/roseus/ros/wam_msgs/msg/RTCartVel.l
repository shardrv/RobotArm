;; Auto-generated. Do not edit!


(when (boundp 'wam_msgs::RTCartVel)
  (if (not (find-package "WAM_MSGS"))
    (make-package "WAM_MSGS"))
  (shadow 'RTCartVel (find-package "WAM_MSGS")))
(unless (find-package "WAM_MSGS::RTCARTVEL")
  (make-package "WAM_MSGS::RTCARTVEL"))

(in-package "ROS")
;;//! \htmlinclude RTCartVel.msg.html


(defclass wam_msgs::RTCartVel
  :super ros::object
  :slots (_direction _magnitude ))

(defmethod wam_msgs::RTCartVel
  (:init
   (&key
    ((:direction __direction) (make-array 3 :initial-element 0.0 :element-type :float))
    ((:magnitude __magnitude) 0.0)
    )
   (send-super :init)
   (setq _direction __direction)
   (setq _magnitude (float __magnitude))
   self)
  (:direction
   (&optional __direction)
   (if __direction (setq _direction __direction)) _direction)
  (:magnitude
   (&optional __magnitude)
   (if __magnitude (setq _magnitude __magnitude)) _magnitude)
  (:serialization-length
   ()
   (+
    ;; float32[3] _direction
    (* 4    3)
    ;; float32 _magnitude
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[3] _direction
     (dotimes (i 3)
       (sys::poke (elt _direction i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32 _magnitude
       (sys::poke _magnitude (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[3] _direction
   (dotimes (i (length _direction))
     (setf (elt _direction i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; float32 _magnitude
     (setq _magnitude (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get wam_msgs::RTCartVel :md5sum-) "bde6e49ce1902bc915138d25af0e9ef1")
(setf (get wam_msgs::RTCartVel :datatype-) "wam_msgs/RTCartVel")
(setf (get wam_msgs::RTCartVel :definition-)
      "float32[3] direction
float32    magnitude

")



(provide :wam_msgs/RTCartVel "bde6e49ce1902bc915138d25af0e9ef1")


