;; Auto-generated. Do not edit!


(when (boundp 'wam_srvs::JP_PID)
  (if (not (find-package "WAM_SRVS"))
    (make-package "WAM_SRVS"))
  (shadow 'JP_PID (find-package "WAM_SRVS")))
(unless (find-package "WAM_SRVS::JP_PID")
  (make-package "WAM_SRVS::JP_PID"))
(unless (find-package "WAM_SRVS::JP_PIDREQUEST")
  (make-package "WAM_SRVS::JP_PIDREQUEST"))
(unless (find-package "WAM_SRVS::JP_PIDRESPONSE")
  (make-package "WAM_SRVS::JP_PIDRESPONSE"))

(in-package "ROS")





(defclass wam_srvs::JP_PIDRequest
  :super ros::object
  :slots (_kp _kd _ki ))

(defmethod wam_srvs::JP_PIDRequest
  (:init
   (&key
    ((:kp __kp) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:kd __kd) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:ki __ki) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _kp __kp)
   (setq _kd __kd)
   (setq _ki __ki)
   self)
  (:kp
   (&optional __kp)
   (if __kp (setq _kp __kp)) _kp)
  (:kd
   (&optional __kd)
   (if __kd (setq _kd __kd)) _kd)
  (:ki
   (&optional __ki)
   (if __ki (setq _ki __ki)) _ki)
  (:serialization-length
   ()
   (+
    ;; float32[] _kp
    (* 4    (length _kp)) 4
    ;; float32[] _kd
    (* 4    (length _kd)) 4
    ;; float32[] _ki
    (* 4    (length _ki)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[] _kp
     (write-long (length _kp) s)
     (dotimes (i (length _kp))
       (sys::poke (elt _kp i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _kd
     (write-long (length _kd) s)
     (dotimes (i (length _kd))
       (sys::poke (elt _kd i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _ki
     (write-long (length _ki) s)
     (dotimes (i (length _ki))
       (sys::poke (elt _ki i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[] _kp
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _kp (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _kp i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _kd
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _kd (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _kd i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _ki
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _ki (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _ki i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(defclass wam_srvs::JP_PIDResponse
  :super ros::object
  :slots ())

(defmethod wam_srvs::JP_PIDResponse
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

(defclass wam_srvs::JP_PID
  :super ros::object
  :slots ())

(setf (get wam_srvs::JP_PID :md5sum-) "0db10bb243a6ebb8fbb8a7f8aee28be0")
(setf (get wam_srvs::JP_PID :datatype-) "wam_srvs/JP_PID")
(setf (get wam_srvs::JP_PID :request) wam_srvs::JP_PIDRequest)
(setf (get wam_srvs::JP_PID :response) wam_srvs::JP_PIDResponse)

(defmethod wam_srvs::JP_PIDRequest
  (:response () (instance wam_srvs::JP_PIDResponse :init)))

(setf (get wam_srvs::JP_PIDRequest :md5sum-) "0db10bb243a6ebb8fbb8a7f8aee28be0")
(setf (get wam_srvs::JP_PIDRequest :datatype-) "wam_srvs/JP_PIDRequest")
(setf (get wam_srvs::JP_PIDRequest :definition-)
      "float32[] kp
float32[] kd
float32[] ki
---
")

(setf (get wam_srvs::JP_PIDResponse :md5sum-) "0db10bb243a6ebb8fbb8a7f8aee28be0")
(setf (get wam_srvs::JP_PIDResponse :datatype-) "wam_srvs/JP_PIDResponse")
(setf (get wam_srvs::JP_PIDResponse :definition-)
      "float32[] kp
float32[] kd
float32[] ki
---
")



(provide :wam_srvs/JP_PID "0db10bb243a6ebb8fbb8a7f8aee28be0")


