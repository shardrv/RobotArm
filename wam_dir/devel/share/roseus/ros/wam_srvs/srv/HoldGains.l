;; Auto-generated. Do not edit!


(when (boundp 'wam_srvs::HoldGains)
  (if (not (find-package "WAM_SRVS"))
    (make-package "WAM_SRVS"))
  (shadow 'HoldGains (find-package "WAM_SRVS")))
(unless (find-package "WAM_SRVS::HOLDGAINS")
  (make-package "WAM_SRVS::HOLDGAINS"))
(unless (find-package "WAM_SRVS::HOLDGAINSREQUEST")
  (make-package "WAM_SRVS::HOLDGAINSREQUEST"))
(unless (find-package "WAM_SRVS::HOLDGAINSRESPONSE")
  (make-package "WAM_SRVS::HOLDGAINSRESPONSE"))

(in-package "ROS")





(defclass wam_srvs::HoldGainsRequest
  :super ros::object
  :slots (_hold _kp _kd ))

(defmethod wam_srvs::HoldGainsRequest
  (:init
   (&key
    ((:hold __hold) nil)
    ((:kp __kp) (make-array 3 :initial-element 0.0 :element-type :float))
    ((:kd __kd) (make-array 3 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _hold __hold)
   (setq _kp __kp)
   (setq _kd __kd)
   self)
  (:hold
   (&optional __hold)
   (if __hold (setq _hold __hold)) _hold)
  (:kp
   (&optional __kp)
   (if __kp (setq _kp __kp)) _kp)
  (:kd
   (&optional __kd)
   (if __kd (setq _kd __kd)) _kd)
  (:serialization-length
   ()
   (+
    ;; bool _hold
    1
    ;; float32[3] _kp
    (* 4    3)
    ;; float32[3] _kd
    (* 4    3)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _hold
       (if _hold (write-byte -1 s) (write-byte 0 s))
     ;; float32[3] _kp
     (dotimes (i 3)
       (sys::poke (elt _kp i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[3] _kd
     (dotimes (i 3)
       (sys::poke (elt _kd i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _hold
     (setq _hold (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32[3] _kp
   (dotimes (i (length _kp))
     (setf (elt _kp i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; float32[3] _kd
   (dotimes (i (length _kd))
     (setf (elt _kd i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;;
   self)
  )

(defclass wam_srvs::HoldGainsResponse
  :super ros::object
  :slots ())

(defmethod wam_srvs::HoldGainsResponse
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

(defclass wam_srvs::HoldGains
  :super ros::object
  :slots ())

(setf (get wam_srvs::HoldGains :md5sum-) "2321330bd020469c41b8f08acef334cb")
(setf (get wam_srvs::HoldGains :datatype-) "wam_srvs/HoldGains")
(setf (get wam_srvs::HoldGains :request) wam_srvs::HoldGainsRequest)
(setf (get wam_srvs::HoldGains :response) wam_srvs::HoldGainsResponse)

(defmethod wam_srvs::HoldGainsRequest
  (:response () (instance wam_srvs::HoldGainsResponse :init)))

(setf (get wam_srvs::HoldGainsRequest :md5sum-) "2321330bd020469c41b8f08acef334cb")
(setf (get wam_srvs::HoldGainsRequest :datatype-) "wam_srvs/HoldGainsRequest")
(setf (get wam_srvs::HoldGainsRequest :definition-)
      "bool hold
float32[3] kp
float32[3] kd
---

")

(setf (get wam_srvs::HoldGainsResponse :md5sum-) "2321330bd020469c41b8f08acef334cb")
(setf (get wam_srvs::HoldGainsResponse :datatype-) "wam_srvs/HoldGainsResponse")
(setf (get wam_srvs::HoldGainsResponse :definition-)
      "bool hold
float32[3] kp
float32[3] kd
---

")



(provide :wam_srvs/HoldGains "2321330bd020469c41b8f08acef334cb")


