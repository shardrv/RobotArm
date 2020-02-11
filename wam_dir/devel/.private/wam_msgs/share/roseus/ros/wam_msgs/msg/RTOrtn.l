;; Auto-generated. Do not edit!


(when (boundp 'wam_msgs::RTOrtn)
  (if (not (find-package "WAM_MSGS"))
    (make-package "WAM_MSGS"))
  (shadow 'RTOrtn (find-package "WAM_MSGS")))
(unless (find-package "WAM_MSGS::RTORTN")
  (make-package "WAM_MSGS::RTORTN"))

(in-package "ROS")
;;//! \htmlinclude RTOrtn.msg.html


(defclass wam_msgs::RTOrtn
  :super ros::object
  :slots (_orientation _kp _kd _change_gains ))

(defmethod wam_msgs::RTOrtn
  (:init
   (&key
    ((:orientation __orientation) (make-array 4 :initial-element 0.0 :element-type :float))
    ((:kp __kp) (make-array 3 :initial-element 0.0 :element-type :float))
    ((:kd __kd) (make-array 3 :initial-element 0.0 :element-type :float))
    ((:change_gains __change_gains) nil)
    )
   (send-super :init)
   (setq _orientation __orientation)
   (setq _kp __kp)
   (setq _kd __kd)
   (setq _change_gains __change_gains)
   self)
  (:orientation
   (&optional __orientation)
   (if __orientation (setq _orientation __orientation)) _orientation)
  (:kp
   (&optional __kp)
   (if __kp (setq _kp __kp)) _kp)
  (:kd
   (&optional __kd)
   (if __kd (setq _kd __kd)) _kd)
  (:change_gains
   (&optional __change_gains)
   (if __change_gains (setq _change_gains __change_gains)) _change_gains)
  (:serialization-length
   ()
   (+
    ;; float32[4] _orientation
    (* 4    4)
    ;; float32[3] _kp
    (* 4    3)
    ;; float32[3] _kd
    (* 4    3)
    ;; bool _change_gains
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[4] _orientation
     (dotimes (i 4)
       (sys::poke (elt _orientation i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[3] _kp
     (dotimes (i 3)
       (sys::poke (elt _kp i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[3] _kd
     (dotimes (i 3)
       (sys::poke (elt _kd i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; bool _change_gains
       (if _change_gains (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[4] _orientation
   (dotimes (i (length _orientation))
     (setf (elt _orientation i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; float32[3] _kp
   (dotimes (i (length _kp))
     (setf (elt _kp i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; float32[3] _kd
   (dotimes (i (length _kd))
     (setf (elt _kd i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; bool _change_gains
     (setq _change_gains (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get wam_msgs::RTOrtn :md5sum-) "2e3f1019db9e6ee5ee0fb74a74917cbb")
(setf (get wam_msgs::RTOrtn :datatype-) "wam_msgs/RTOrtn")
(setf (get wam_msgs::RTOrtn :definition-)
      "float32[4] orientation
float32[3] kp
float32[3] kd
bool change_gains

")



(provide :wam_msgs/RTOrtn "2e3f1019db9e6ee5ee0fb74a74917cbb")


