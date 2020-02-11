;; Auto-generated. Do not edit!


(when (boundp 'wam_msgs::RTPose)
  (if (not (find-package "WAM_MSGS"))
    (make-package "WAM_MSGS"))
  (shadow 'RTPose (find-package "WAM_MSGS")))
(unless (find-package "WAM_MSGS::RTPOSE")
  (make-package "WAM_MSGS::RTPOSE"))

(in-package "ROS")
;;//! \htmlinclude RTPose.msg.html


(defclass wam_msgs::RTPose
  :super ros::object
  :slots (_position _orientation _pos_rate_limits _ortn_rate_limits ))

(defmethod wam_msgs::RTPose
  (:init
   (&key
    ((:position __position) (make-array 3 :initial-element 0.0 :element-type :float))
    ((:orientation __orientation) (make-array 4 :initial-element 0.0 :element-type :float))
    ((:pos_rate_limits __pos_rate_limits) (make-array 3 :initial-element 0.0 :element-type :float))
    ((:ortn_rate_limits __ortn_rate_limits) (make-array 4 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _position __position)
   (setq _orientation __orientation)
   (setq _pos_rate_limits __pos_rate_limits)
   (setq _ortn_rate_limits __ortn_rate_limits)
   self)
  (:position
   (&optional __position)
   (if __position (setq _position __position)) _position)
  (:orientation
   (&optional __orientation)
   (if __orientation (setq _orientation __orientation)) _orientation)
  (:pos_rate_limits
   (&optional __pos_rate_limits)
   (if __pos_rate_limits (setq _pos_rate_limits __pos_rate_limits)) _pos_rate_limits)
  (:ortn_rate_limits
   (&optional __ortn_rate_limits)
   (if __ortn_rate_limits (setq _ortn_rate_limits __ortn_rate_limits)) _ortn_rate_limits)
  (:serialization-length
   ()
   (+
    ;; float32[3] _position
    (* 4    3)
    ;; float32[4] _orientation
    (* 4    4)
    ;; float32[3] _pos_rate_limits
    (* 4    3)
    ;; float32[4] _ortn_rate_limits
    (* 4    4)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[3] _position
     (dotimes (i 3)
       (sys::poke (elt _position i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[4] _orientation
     (dotimes (i 4)
       (sys::poke (elt _orientation i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[3] _pos_rate_limits
     (dotimes (i 3)
       (sys::poke (elt _pos_rate_limits i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[4] _ortn_rate_limits
     (dotimes (i 4)
       (sys::poke (elt _ortn_rate_limits i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[3] _position
   (dotimes (i (length _position))
     (setf (elt _position i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; float32[4] _orientation
   (dotimes (i (length _orientation))
     (setf (elt _orientation i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; float32[3] _pos_rate_limits
   (dotimes (i (length _pos_rate_limits))
     (setf (elt _pos_rate_limits i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; float32[4] _ortn_rate_limits
   (dotimes (i (length _ortn_rate_limits))
     (setf (elt _ortn_rate_limits i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;;
   self)
  )

(setf (get wam_msgs::RTPose :md5sum-) "34cb882fafa374fde18bf3b5e23cd4cd")
(setf (get wam_msgs::RTPose :datatype-) "wam_msgs/RTPose")
(setf (get wam_msgs::RTPose :definition-)
      "float32[3] position
float32[4] orientation
float32[3] pos_rate_limits
float32[4] ortn_rate_limits

")



(provide :wam_msgs/RTPose "34cb882fafa374fde18bf3b5e23cd4cd")


