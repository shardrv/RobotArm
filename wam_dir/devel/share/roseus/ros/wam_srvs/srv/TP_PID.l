;; Auto-generated. Do not edit!


(when (boundp 'wam_srvs::TP_PID)
  (if (not (find-package "WAM_SRVS"))
    (make-package "WAM_SRVS"))
  (shadow 'TP_PID (find-package "WAM_SRVS")))
(unless (find-package "WAM_SRVS::TP_PID")
  (make-package "WAM_SRVS::TP_PID"))
(unless (find-package "WAM_SRVS::TP_PIDREQUEST")
  (make-package "WAM_SRVS::TP_PIDREQUEST"))
(unless (find-package "WAM_SRVS::TP_PIDRESPONSE")
  (make-package "WAM_SRVS::TP_PIDRESPONSE"))

(in-package "ROS")





(defclass wam_srvs::TP_PIDRequest
  :super ros::object
  :slots (_kp _kd _ki ))

(defmethod wam_srvs::TP_PIDRequest
  (:init
   (&key
    ((:kp __kp) 0.0)
    ((:kd __kd) 0.0)
    ((:ki __ki) 0.0)
    )
   (send-super :init)
   (setq _kp (float __kp))
   (setq _kd (float __kd))
   (setq _ki (float __ki))
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
    ;; float32 _kp
    4
    ;; float32 _kd
    4
    ;; float32 _ki
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _kp
       (sys::poke _kp (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _kd
       (sys::poke _kd (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _ki
       (sys::poke _ki (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _kp
     (setq _kp (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _kd
     (setq _kd (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _ki
     (setq _ki (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass wam_srvs::TP_PIDResponse
  :super ros::object
  :slots ())

(defmethod wam_srvs::TP_PIDResponse
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

(defclass wam_srvs::TP_PID
  :super ros::object
  :slots ())

(setf (get wam_srvs::TP_PID :md5sum-) "8dfae169c05c8647d6140e2a6c279a75")
(setf (get wam_srvs::TP_PID :datatype-) "wam_srvs/TP_PID")
(setf (get wam_srvs::TP_PID :request) wam_srvs::TP_PIDRequest)
(setf (get wam_srvs::TP_PID :response) wam_srvs::TP_PIDResponse)

(defmethod wam_srvs::TP_PIDRequest
  (:response () (instance wam_srvs::TP_PIDResponse :init)))

(setf (get wam_srvs::TP_PIDRequest :md5sum-) "8dfae169c05c8647d6140e2a6c279a75")
(setf (get wam_srvs::TP_PIDRequest :datatype-) "wam_srvs/TP_PIDRequest")
(setf (get wam_srvs::TP_PIDRequest :definition-)
      "float32 kp
float32 kd
float32 ki
---
")

(setf (get wam_srvs::TP_PIDResponse :md5sum-) "8dfae169c05c8647d6140e2a6c279a75")
(setf (get wam_srvs::TP_PIDResponse :datatype-) "wam_srvs/TP_PIDResponse")
(setf (get wam_srvs::TP_PIDResponse :definition-)
      "float32 kp
float32 kd
float32 ki
---
")



(provide :wam_srvs/TP_PID "8dfae169c05c8647d6140e2a6c279a75")


