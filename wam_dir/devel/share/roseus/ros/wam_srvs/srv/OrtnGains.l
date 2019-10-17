;; Auto-generated. Do not edit!


(when (boundp 'wam_srvs::OrtnGains)
  (if (not (find-package "WAM_SRVS"))
    (make-package "WAM_SRVS"))
  (shadow 'OrtnGains (find-package "WAM_SRVS")))
(unless (find-package "WAM_SRVS::ORTNGAINS")
  (make-package "WAM_SRVS::ORTNGAINS"))
(unless (find-package "WAM_SRVS::ORTNGAINSREQUEST")
  (make-package "WAM_SRVS::ORTNGAINSREQUEST"))
(unless (find-package "WAM_SRVS::ORTNGAINSRESPONSE")
  (make-package "WAM_SRVS::ORTNGAINSRESPONSE"))

(in-package "ROS")





(defclass wam_srvs::OrtnGainsRequest
  :super ros::object
  :slots (_kp_gain _kd_gain ))

(defmethod wam_srvs::OrtnGainsRequest
  (:init
   (&key
    ((:kp_gain __kp_gain) (make-array 3 :initial-element 0.0 :element-type :float))
    ((:kd_gain __kd_gain) (make-array 3 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _kp_gain __kp_gain)
   (setq _kd_gain __kd_gain)
   self)
  (:kp_gain
   (&optional __kp_gain)
   (if __kp_gain (setq _kp_gain __kp_gain)) _kp_gain)
  (:kd_gain
   (&optional __kd_gain)
   (if __kd_gain (setq _kd_gain __kd_gain)) _kd_gain)
  (:serialization-length
   ()
   (+
    ;; float32[3] _kp_gain
    (* 4    3)
    ;; float32[3] _kd_gain
    (* 4    3)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[3] _kp_gain
     (dotimes (i 3)
       (sys::poke (elt _kp_gain i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[3] _kd_gain
     (dotimes (i 3)
       (sys::poke (elt _kd_gain i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[3] _kp_gain
   (dotimes (i (length _kp_gain))
     (setf (elt _kp_gain i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; float32[3] _kd_gain
   (dotimes (i (length _kd_gain))
     (setf (elt _kd_gain i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;;
   self)
  )

(defclass wam_srvs::OrtnGainsResponse
  :super ros::object
  :slots ())

(defmethod wam_srvs::OrtnGainsResponse
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

(defclass wam_srvs::OrtnGains
  :super ros::object
  :slots ())

(setf (get wam_srvs::OrtnGains :md5sum-) "26320303f516c59455807c34544a7fb5")
(setf (get wam_srvs::OrtnGains :datatype-) "wam_srvs/OrtnGains")
(setf (get wam_srvs::OrtnGains :request) wam_srvs::OrtnGainsRequest)
(setf (get wam_srvs::OrtnGains :response) wam_srvs::OrtnGainsResponse)

(defmethod wam_srvs::OrtnGainsRequest
  (:response () (instance wam_srvs::OrtnGainsResponse :init)))

(setf (get wam_srvs::OrtnGainsRequest :md5sum-) "26320303f516c59455807c34544a7fb5")
(setf (get wam_srvs::OrtnGainsRequest :datatype-) "wam_srvs/OrtnGainsRequest")
(setf (get wam_srvs::OrtnGainsRequest :definition-)
      "float32[3] kp_gain
float32[3] kd_gain
---
")

(setf (get wam_srvs::OrtnGainsResponse :md5sum-) "26320303f516c59455807c34544a7fb5")
(setf (get wam_srvs::OrtnGainsResponse :datatype-) "wam_srvs/OrtnGainsResponse")
(setf (get wam_srvs::OrtnGainsResponse :definition-)
      "float32[3] kp_gain
float32[3] kd_gain
---
")



(provide :wam_srvs/OrtnGains "26320303f516c59455807c34544a7fb5")


