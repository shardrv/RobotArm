;; Auto-generated. Do not edit!


(when (boundp 'wam_msgs::RTCartPos)
  (if (not (find-package "WAM_MSGS"))
    (make-package "WAM_MSGS"))
  (shadow 'RTCartPos (find-package "WAM_MSGS")))
(unless (find-package "WAM_MSGS::RTCARTPOS")
  (make-package "WAM_MSGS::RTCARTPOS"))

(in-package "ROS")
;;//! \htmlinclude RTCartPos.msg.html


(defclass wam_msgs::RTCartPos
  :super ros::object
  :slots (_position _rate_limits ))

(defmethod wam_msgs::RTCartPos
  (:init
   (&key
    ((:position __position) (make-array 3 :initial-element 0.0 :element-type :float))
    ((:rate_limits __rate_limits) (make-array 3 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _position __position)
   (setq _rate_limits __rate_limits)
   self)
  (:position
   (&optional __position)
   (if __position (setq _position __position)) _position)
  (:rate_limits
   (&optional __rate_limits)
   (if __rate_limits (setq _rate_limits __rate_limits)) _rate_limits)
  (:serialization-length
   ()
   (+
    ;; float32[3] _position
    (* 4    3)
    ;; float32[3] _rate_limits
    (* 4    3)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[3] _position
     (dotimes (i 3)
       (sys::poke (elt _position i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[3] _rate_limits
     (dotimes (i 3)
       (sys::poke (elt _rate_limits i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[3] _position
   (dotimes (i (length _position))
     (setf (elt _position i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; float32[3] _rate_limits
   (dotimes (i (length _rate_limits))
     (setf (elt _rate_limits i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;;
   self)
  )

(setf (get wam_msgs::RTCartPos :md5sum-) "f40423d4ca09896785d982c621cba554")
(setf (get wam_msgs::RTCartPos :datatype-) "wam_msgs/RTCartPos")
(setf (get wam_msgs::RTCartPos :definition-)
      "float32[3] position
float32[3] rate_limits

")



(provide :wam_msgs/RTCartPos "f40423d4ca09896785d982c621cba554")


