;; Auto-generated. Do not edit!


(when (boundp 'wam_srvs::ForceTorqueBase)
  (if (not (find-package "WAM_SRVS"))
    (make-package "WAM_SRVS"))
  (shadow 'ForceTorqueBase (find-package "WAM_SRVS")))
(unless (find-package "WAM_SRVS::FORCETORQUEBASE")
  (make-package "WAM_SRVS::FORCETORQUEBASE"))
(unless (find-package "WAM_SRVS::FORCETORQUEBASEREQUEST")
  (make-package "WAM_SRVS::FORCETORQUEBASEREQUEST"))
(unless (find-package "WAM_SRVS::FORCETORQUEBASERESPONSE")
  (make-package "WAM_SRVS::FORCETORQUEBASERESPONSE"))

(in-package "ROS")





(defclass wam_srvs::ForceTorqueBaseRequest
  :super ros::object
  :slots (_force _torque _kp _kd _mode ))

(defmethod wam_srvs::ForceTorqueBaseRequest
  (:init
   (&key
    ((:force __force) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:torque __torque) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:kp __kp) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:kd __kd) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:mode __mode) 0.0)
    )
   (send-super :init)
   (setq _force __force)
   (setq _torque __torque)
   (setq _kp __kp)
   (setq _kd __kd)
   (setq _mode (float __mode))
   self)
  (:force
   (&optional __force)
   (if __force (setq _force __force)) _force)
  (:torque
   (&optional __torque)
   (if __torque (setq _torque __torque)) _torque)
  (:kp
   (&optional __kp)
   (if __kp (setq _kp __kp)) _kp)
  (:kd
   (&optional __kd)
   (if __kd (setq _kd __kd)) _kd)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:serialization-length
   ()
   (+
    ;; float32[] _force
    (* 4    (length _force)) 4
    ;; float32[] _torque
    (* 4    (length _torque)) 4
    ;; float32[] _kp
    (* 4    (length _kp)) 4
    ;; float32[] _kd
    (* 4    (length _kd)) 4
    ;; float32 _mode
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[] _force
     (write-long (length _force) s)
     (dotimes (i (length _force))
       (sys::poke (elt _force i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _torque
     (write-long (length _torque) s)
     (dotimes (i (length _torque))
       (sys::poke (elt _torque i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
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
     ;; float32 _mode
       (sys::poke _mode (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[] _force
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _force (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _force i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _torque
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _torque (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _torque i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
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
   ;; float32 _mode
     (setq _mode (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass wam_srvs::ForceTorqueBaseResponse
  :super ros::object
  :slots ())

(defmethod wam_srvs::ForceTorqueBaseResponse
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

(defclass wam_srvs::ForceTorqueBase
  :super ros::object
  :slots ())

(setf (get wam_srvs::ForceTorqueBase :md5sum-) "f20a22c7eb9bac32ef69cf5f2e40693f")
(setf (get wam_srvs::ForceTorqueBase :datatype-) "wam_srvs/ForceTorqueBase")
(setf (get wam_srvs::ForceTorqueBase :request) wam_srvs::ForceTorqueBaseRequest)
(setf (get wam_srvs::ForceTorqueBase :response) wam_srvs::ForceTorqueBaseResponse)

(defmethod wam_srvs::ForceTorqueBaseRequest
  (:response () (instance wam_srvs::ForceTorqueBaseResponse :init)))

(setf (get wam_srvs::ForceTorqueBaseRequest :md5sum-) "f20a22c7eb9bac32ef69cf5f2e40693f")
(setf (get wam_srvs::ForceTorqueBaseRequest :datatype-) "wam_srvs/ForceTorqueBaseRequest")
(setf (get wam_srvs::ForceTorqueBaseRequest :definition-)
      "float32[]   force
float32[]   torque
float32[]   kp
float32[]   kd
float32     mode
---

")

(setf (get wam_srvs::ForceTorqueBaseResponse :md5sum-) "f20a22c7eb9bac32ef69cf5f2e40693f")
(setf (get wam_srvs::ForceTorqueBaseResponse :datatype-) "wam_srvs/ForceTorqueBaseResponse")
(setf (get wam_srvs::ForceTorqueBaseResponse :definition-)
      "float32[]   force
float32[]   torque
float32[]   kp
float32[]   kd
float32     mode
---

")



(provide :wam_srvs/ForceTorqueBase "f20a22c7eb9bac32ef69cf5f2e40693f")


