;; Auto-generated. Do not edit!


(when (boundp 'wam_msgs::RTToolInfo)
  (if (not (find-package "WAM_MSGS"))
    (make-package "WAM_MSGS"))
  (shadow 'RTToolInfo (find-package "WAM_MSGS")))
(unless (find-package "WAM_MSGS::RTTOOLINFO")
  (make-package "WAM_MSGS::RTTOOLINFO"))

(in-package "ROS")
;;//! \htmlinclude RTToolInfo.msg.html


(defclass wam_msgs::RTToolInfo
  :super ros::object
  :slots (_velocity _position ))

(defmethod wam_msgs::RTToolInfo
  (:init
   (&key
    ((:velocity __velocity) (make-array 3 :initial-element 0.0 :element-type :float))
    ((:position __position) (make-array 3 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _velocity __velocity)
   (setq _position __position)
   self)
  (:velocity
   (&optional __velocity)
   (if __velocity (setq _velocity __velocity)) _velocity)
  (:position
   (&optional __position)
   (if __position (setq _position __position)) _position)
  (:serialization-length
   ()
   (+
    ;; float32[3] _velocity
    (* 4    3)
    ;; float32[3] _position
    (* 4    3)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[3] _velocity
     (dotimes (i 3)
       (sys::poke (elt _velocity i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[3] _position
     (dotimes (i 3)
       (sys::poke (elt _position i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[3] _velocity
   (dotimes (i (length _velocity))
     (setf (elt _velocity i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; float32[3] _position
   (dotimes (i (length _position))
     (setf (elt _position i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;;
   self)
  )

(setf (get wam_msgs::RTToolInfo :md5sum-) "b526edc7ba53dd034054d98a4c063fce")
(setf (get wam_msgs::RTToolInfo :datatype-) "wam_msgs/RTToolInfo")
(setf (get wam_msgs::RTToolInfo :definition-)
      "float32[3] velocity
float32[3] position

")



(provide :wam_msgs/RTToolInfo "b526edc7ba53dd034054d98a4c063fce")


