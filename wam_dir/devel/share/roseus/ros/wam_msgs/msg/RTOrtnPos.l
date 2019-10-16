;; Auto-generated. Do not edit!


(when (boundp 'wam_msgs::RTOrtnPos)
  (if (not (find-package "WAM_MSGS"))
    (make-package "WAM_MSGS"))
  (shadow 'RTOrtnPos (find-package "WAM_MSGS")))
(unless (find-package "WAM_MSGS::RTORTNPOS")
  (make-package "WAM_MSGS::RTORTNPOS"))

(in-package "ROS")
;;//! \htmlinclude RTOrtnPos.msg.html


(defclass wam_msgs::RTOrtnPos
  :super ros::object
  :slots (_orientation _rate_limits ))

(defmethod wam_msgs::RTOrtnPos
  (:init
   (&key
    ((:orientation __orientation) (make-array 4 :initial-element 0.0 :element-type :float))
    ((:rate_limits __rate_limits) (make-array 4 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _orientation __orientation)
   (setq _rate_limits __rate_limits)
   self)
  (:orientation
   (&optional __orientation)
   (if __orientation (setq _orientation __orientation)) _orientation)
  (:rate_limits
   (&optional __rate_limits)
   (if __rate_limits (setq _rate_limits __rate_limits)) _rate_limits)
  (:serialization-length
   ()
   (+
    ;; float32[4] _orientation
    (* 4    4)
    ;; float32[4] _rate_limits
    (* 4    4)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[4] _orientation
     (dotimes (i 4)
       (sys::poke (elt _orientation i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[4] _rate_limits
     (dotimes (i 4)
       (sys::poke (elt _rate_limits i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[4] _orientation
   (dotimes (i (length _orientation))
     (setf (elt _orientation i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; float32[4] _rate_limits
   (dotimes (i (length _rate_limits))
     (setf (elt _rate_limits i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;;
   self)
  )

(setf (get wam_msgs::RTOrtnPos :md5sum-) "5b352081db430205c87e0e439f09a0b2")
(setf (get wam_msgs::RTOrtnPos :datatype-) "wam_msgs/RTOrtnPos")
(setf (get wam_msgs::RTOrtnPos :definition-)
      "float32[4] orientation
float32[4] rate_limits

")



(provide :wam_msgs/RTOrtnPos "5b352081db430205c87e0e439f09a0b2")


