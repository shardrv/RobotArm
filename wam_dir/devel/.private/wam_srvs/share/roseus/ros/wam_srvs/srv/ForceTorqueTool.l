;; Auto-generated. Do not edit!


(when (boundp 'wam_srvs::ForceTorqueTool)
  (if (not (find-package "WAM_SRVS"))
    (make-package "WAM_SRVS"))
  (shadow 'ForceTorqueTool (find-package "WAM_SRVS")))
(unless (find-package "WAM_SRVS::FORCETORQUETOOL")
  (make-package "WAM_SRVS::FORCETORQUETOOL"))
(unless (find-package "WAM_SRVS::FORCETORQUETOOLREQUEST")
  (make-package "WAM_SRVS::FORCETORQUETOOLREQUEST"))
(unless (find-package "WAM_SRVS::FORCETORQUETOOLRESPONSE")
  (make-package "WAM_SRVS::FORCETORQUETOOLRESPONSE"))

(in-package "ROS")





(defclass wam_srvs::ForceTorqueToolRequest
  :super ros::object
  :slots (_force _torque _time ))

(defmethod wam_srvs::ForceTorqueToolRequest
  (:init
   (&key
    ((:force __force) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:torque __torque) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:time __time) 0.0)
    )
   (send-super :init)
   (setq _force __force)
   (setq _torque __torque)
   (setq _time (float __time))
   self)
  (:force
   (&optional __force)
   (if __force (setq _force __force)) _force)
  (:torque
   (&optional __torque)
   (if __torque (setq _torque __torque)) _torque)
  (:time
   (&optional __time)
   (if __time (setq _time __time)) _time)
  (:serialization-length
   ()
   (+
    ;; float32[] _force
    (* 4    (length _force)) 4
    ;; float32[] _torque
    (* 4    (length _torque)) 4
    ;; float32 _time
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
     ;; float32 _time
       (sys::poke _time (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
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
   ;; float32 _time
     (setq _time (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass wam_srvs::ForceTorqueToolResponse
  :super ros::object
  :slots ())

(defmethod wam_srvs::ForceTorqueToolResponse
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

(defclass wam_srvs::ForceTorqueTool
  :super ros::object
  :slots ())

(setf (get wam_srvs::ForceTorqueTool :md5sum-) "85c62cf949363f45f75d48fcf714c6ad")
(setf (get wam_srvs::ForceTorqueTool :datatype-) "wam_srvs/ForceTorqueTool")
(setf (get wam_srvs::ForceTorqueTool :request) wam_srvs::ForceTorqueToolRequest)
(setf (get wam_srvs::ForceTorqueTool :response) wam_srvs::ForceTorqueToolResponse)

(defmethod wam_srvs::ForceTorqueToolRequest
  (:response () (instance wam_srvs::ForceTorqueToolResponse :init)))

(setf (get wam_srvs::ForceTorqueToolRequest :md5sum-) "85c62cf949363f45f75d48fcf714c6ad")
(setf (get wam_srvs::ForceTorqueToolRequest :datatype-) "wam_srvs/ForceTorqueToolRequest")
(setf (get wam_srvs::ForceTorqueToolRequest :definition-)
      "float32[]   force
float32[]   torque
float32     time
---

")

(setf (get wam_srvs::ForceTorqueToolResponse :md5sum-) "85c62cf949363f45f75d48fcf714c6ad")
(setf (get wam_srvs::ForceTorqueToolResponse :datatype-) "wam_srvs/ForceTorqueToolResponse")
(setf (get wam_srvs::ForceTorqueToolResponse :definition-)
      "float32[]   force
float32[]   torque
float32     time
---

")



(provide :wam_srvs/ForceTorqueTool "85c62cf949363f45f75d48fcf714c6ad")


