;; Auto-generated. Do not edit!


(when (boundp 'wam_srvs::ForceTorque)
  (if (not (find-package "WAM_SRVS"))
    (make-package "WAM_SRVS"))
  (shadow 'ForceTorque (find-package "WAM_SRVS")))
(unless (find-package "WAM_SRVS::FORCETORQUE")
  (make-package "WAM_SRVS::FORCETORQUE"))
(unless (find-package "WAM_SRVS::FORCETORQUEREQUEST")
  (make-package "WAM_SRVS::FORCETORQUEREQUEST"))
(unless (find-package "WAM_SRVS::FORCETORQUERESPONSE")
  (make-package "WAM_SRVS::FORCETORQUERESPONSE"))

(in-package "ROS")





(defclass wam_srvs::ForceTorqueRequest
  :super ros::object
  :slots (_force _torque _kp _kd _initialize ))

(defmethod wam_srvs::ForceTorqueRequest
  (:init
   (&key
    ((:force __force) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:torque __torque) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:kp __kp) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:kd __kd) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:initialize __initialize) nil)
    )
   (send-super :init)
   (setq _force __force)
   (setq _torque __torque)
   (setq _kp __kp)
   (setq _kd __kd)
   (setq _initialize __initialize)
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
  (:initialize
   (&optional __initialize)
   (if __initialize (setq _initialize __initialize)) _initialize)
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
    ;; bool _initialize
    1
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
     ;; bool _initialize
       (if _initialize (write-byte -1 s) (write-byte 0 s))
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
   ;; bool _initialize
     (setq _initialize (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass wam_srvs::ForceTorqueResponse
  :super ros::object
  :slots ())

(defmethod wam_srvs::ForceTorqueResponse
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

(defclass wam_srvs::ForceTorque
  :super ros::object
  :slots ())

(setf (get wam_srvs::ForceTorque :md5sum-) "8ca0374c6da7480d9143f818b4e38e75")
(setf (get wam_srvs::ForceTorque :datatype-) "wam_srvs/ForceTorque")
(setf (get wam_srvs::ForceTorque :request) wam_srvs::ForceTorqueRequest)
(setf (get wam_srvs::ForceTorque :response) wam_srvs::ForceTorqueResponse)

(defmethod wam_srvs::ForceTorqueRequest
  (:response () (instance wam_srvs::ForceTorqueResponse :init)))

(setf (get wam_srvs::ForceTorqueRequest :md5sum-) "8ca0374c6da7480d9143f818b4e38e75")
(setf (get wam_srvs::ForceTorqueRequest :datatype-) "wam_srvs/ForceTorqueRequest")
(setf (get wam_srvs::ForceTorqueRequest :definition-)
      "float32[] force
float32[] torque
float32[] kp
float32[] kd
bool initialize
---

")

(setf (get wam_srvs::ForceTorqueResponse :md5sum-) "8ca0374c6da7480d9143f818b4e38e75")
(setf (get wam_srvs::ForceTorqueResponse :datatype-) "wam_srvs/ForceTorqueResponse")
(setf (get wam_srvs::ForceTorqueResponse :definition-)
      "float32[] force
float32[] torque
float32[] kp
float32[] kd
bool initialize
---

")



(provide :wam_srvs/ForceTorque "8ca0374c6da7480d9143f818b4e38e75")


