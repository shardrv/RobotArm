;; Auto-generated. Do not edit!


(when (boundp 'wam_srvs::ForceTorqueToolTime)
  (if (not (find-package "WAM_SRVS"))
    (make-package "WAM_SRVS"))
  (shadow 'ForceTorqueToolTime (find-package "WAM_SRVS")))
(unless (find-package "WAM_SRVS::FORCETORQUETOOLTIME")
  (make-package "WAM_SRVS::FORCETORQUETOOLTIME"))
(unless (find-package "WAM_SRVS::FORCETORQUETOOLTIMEREQUEST")
  (make-package "WAM_SRVS::FORCETORQUETOOLTIMEREQUEST"))
(unless (find-package "WAM_SRVS::FORCETORQUETOOLTIMERESPONSE")
  (make-package "WAM_SRVS::FORCETORQUETOOLTIMERESPONSE"))

(in-package "ROS")





(defclass wam_srvs::ForceTorqueToolTimeRequest
  :super ros::object
  :slots (_force _torque _time ))

(defmethod wam_srvs::ForceTorqueToolTimeRequest
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

(defclass wam_srvs::ForceTorqueToolTimeResponse
  :super ros::object
  :slots ())

(defmethod wam_srvs::ForceTorqueToolTimeResponse
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

(defclass wam_srvs::ForceTorqueToolTime
  :super ros::object
  :slots ())

(setf (get wam_srvs::ForceTorqueToolTime :md5sum-) "85c62cf949363f45f75d48fcf714c6ad")
(setf (get wam_srvs::ForceTorqueToolTime :datatype-) "wam_srvs/ForceTorqueToolTime")
(setf (get wam_srvs::ForceTorqueToolTime :request) wam_srvs::ForceTorqueToolTimeRequest)
(setf (get wam_srvs::ForceTorqueToolTime :response) wam_srvs::ForceTorqueToolTimeResponse)

(defmethod wam_srvs::ForceTorqueToolTimeRequest
  (:response () (instance wam_srvs::ForceTorqueToolTimeResponse :init)))

(setf (get wam_srvs::ForceTorqueToolTimeRequest :md5sum-) "85c62cf949363f45f75d48fcf714c6ad")
(setf (get wam_srvs::ForceTorqueToolTimeRequest :datatype-) "wam_srvs/ForceTorqueToolTimeRequest")
(setf (get wam_srvs::ForceTorqueToolTimeRequest :definition-)
      "float32[]   force
float32[]   torque
float32 time
---
")

(setf (get wam_srvs::ForceTorqueToolTimeResponse :md5sum-) "85c62cf949363f45f75d48fcf714c6ad")
(setf (get wam_srvs::ForceTorqueToolTimeResponse :datatype-) "wam_srvs/ForceTorqueToolTimeResponse")
(setf (get wam_srvs::ForceTorqueToolTimeResponse :definition-)
      "float32[]   force
float32[]   torque
float32 time
---
")



(provide :wam_srvs/ForceTorqueToolTime "85c62cf949363f45f75d48fcf714c6ad")


