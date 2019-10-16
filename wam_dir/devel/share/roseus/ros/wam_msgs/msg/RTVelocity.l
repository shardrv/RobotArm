;; Auto-generated. Do not edit!


(when (boundp 'wam_msgs::RTVelocity)
  (if (not (find-package "WAM_MSGS"))
    (make-package "WAM_MSGS"))
  (shadow 'RTVelocity (find-package "WAM_MSGS")))
(unless (find-package "WAM_MSGS::RTVELOCITY")
  (make-package "WAM_MSGS::RTVELOCITY"))

(in-package "ROS")
;;//! \htmlinclude RTVelocity.msg.html


(defclass wam_msgs::RTVelocity
  :super ros::object
  :slots (_v_direction _v_magnitude _kp _change_gains ))

(defmethod wam_msgs::RTVelocity
  (:init
   (&key
    ((:v_direction __v_direction) (make-array 3 :initial-element 0.0 :element-type :float))
    ((:v_magnitude __v_magnitude) 0.0)
    ((:kp __kp) 0.0)
    ((:change_gains __change_gains) nil)
    )
   (send-super :init)
   (setq _v_direction __v_direction)
   (setq _v_magnitude (float __v_magnitude))
   (setq _kp (float __kp))
   (setq _change_gains __change_gains)
   self)
  (:v_direction
   (&optional __v_direction)
   (if __v_direction (setq _v_direction __v_direction)) _v_direction)
  (:v_magnitude
   (&optional __v_magnitude)
   (if __v_magnitude (setq _v_magnitude __v_magnitude)) _v_magnitude)
  (:kp
   (&optional __kp)
   (if __kp (setq _kp __kp)) _kp)
  (:change_gains
   (&optional __change_gains)
   (if __change_gains (setq _change_gains __change_gains)) _change_gains)
  (:serialization-length
   ()
   (+
    ;; float32[3] _v_direction
    (* 4    3)
    ;; float32 _v_magnitude
    4
    ;; float32 _kp
    4
    ;; bool _change_gains
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[3] _v_direction
     (dotimes (i 3)
       (sys::poke (elt _v_direction i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32 _v_magnitude
       (sys::poke _v_magnitude (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _kp
       (sys::poke _kp (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _change_gains
       (if _change_gains (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[3] _v_direction
   (dotimes (i (length _v_direction))
     (setf (elt _v_direction i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; float32 _v_magnitude
     (setq _v_magnitude (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _kp
     (setq _kp (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _change_gains
     (setq _change_gains (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get wam_msgs::RTVelocity :md5sum-) "6fd73d4c205ad728e90044131e5d954b")
(setf (get wam_msgs::RTVelocity :datatype-) "wam_msgs/RTVelocity")
(setf (get wam_msgs::RTVelocity :definition-)
      "float32[3] v_direction
float32 v_magnitude
float32 kp
bool change_gains

")



(provide :wam_msgs/RTVelocity "6fd73d4c205ad728e90044131e5d954b")


