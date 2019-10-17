;; Auto-generated. Do not edit!


(when (boundp 'wam_srvs::Hold)
  (if (not (find-package "WAM_SRVS"))
    (make-package "WAM_SRVS"))
  (shadow 'Hold (find-package "WAM_SRVS")))
(unless (find-package "WAM_SRVS::HOLD")
  (make-package "WAM_SRVS::HOLD"))
(unless (find-package "WAM_SRVS::HOLDREQUEST")
  (make-package "WAM_SRVS::HOLDREQUEST"))
(unless (find-package "WAM_SRVS::HOLDRESPONSE")
  (make-package "WAM_SRVS::HOLDRESPONSE"))

(in-package "ROS")





(defclass wam_srvs::HoldRequest
  :super ros::object
  :slots (_hold ))

(defmethod wam_srvs::HoldRequest
  (:init
   (&key
    ((:hold __hold) nil)
    )
   (send-super :init)
   (setq _hold __hold)
   self)
  (:hold
   (&optional __hold)
   (if __hold (setq _hold __hold)) _hold)
  (:serialization-length
   ()
   (+
    ;; bool _hold
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _hold
       (if _hold (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _hold
     (setq _hold (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass wam_srvs::HoldResponse
  :super ros::object
  :slots ())

(defmethod wam_srvs::HoldResponse
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

(defclass wam_srvs::Hold
  :super ros::object
  :slots ())

(setf (get wam_srvs::Hold :md5sum-) "797a139a4299aebd587b00a7001c67f7")
(setf (get wam_srvs::Hold :datatype-) "wam_srvs/Hold")
(setf (get wam_srvs::Hold :request) wam_srvs::HoldRequest)
(setf (get wam_srvs::Hold :response) wam_srvs::HoldResponse)

(defmethod wam_srvs::HoldRequest
  (:response () (instance wam_srvs::HoldResponse :init)))

(setf (get wam_srvs::HoldRequest :md5sum-) "797a139a4299aebd587b00a7001c67f7")
(setf (get wam_srvs::HoldRequest :datatype-) "wam_srvs/HoldRequest")
(setf (get wam_srvs::HoldRequest :definition-)
      "bool hold
---

")

(setf (get wam_srvs::HoldResponse :md5sum-) "797a139a4299aebd587b00a7001c67f7")
(setf (get wam_srvs::HoldResponse :datatype-) "wam_srvs/HoldResponse")
(setf (get wam_srvs::HoldResponse :definition-)
      "bool hold
---

")



(provide :wam_srvs/Hold "797a139a4299aebd587b00a7001c67f7")


