;; Auto-generated. Do not edit!


(when (boundp 'wam_srvs::Connect)
  (if (not (find-package "WAM_SRVS"))
    (make-package "WAM_SRVS"))
  (shadow 'Connect (find-package "WAM_SRVS")))
(unless (find-package "WAM_SRVS::CONNECT")
  (make-package "WAM_SRVS::CONNECT"))
(unless (find-package "WAM_SRVS::CONNECTREQUEST")
  (make-package "WAM_SRVS::CONNECTREQUEST"))
(unless (find-package "WAM_SRVS::CONNECTRESPONSE")
  (make-package "WAM_SRVS::CONNECTRESPONSE"))

(in-package "ROS")





(defclass wam_srvs::ConnectRequest
  :super ros::object
  :slots (_connect ))

(defmethod wam_srvs::ConnectRequest
  (:init
   (&key
    ((:connect __connect) nil)
    )
   (send-super :init)
   (setq _connect __connect)
   self)
  (:connect
   (&optional __connect)
   (if __connect (setq _connect __connect)) _connect)
  (:serialization-length
   ()
   (+
    ;; bool _connect
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _connect
       (if _connect (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _connect
     (setq _connect (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass wam_srvs::ConnectResponse
  :super ros::object
  :slots ())

(defmethod wam_srvs::ConnectResponse
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

(defclass wam_srvs::Connect
  :super ros::object
  :slots ())

(setf (get wam_srvs::Connect :md5sum-) "a31bf7076ca051d3bb47d5d808c4982b")
(setf (get wam_srvs::Connect :datatype-) "wam_srvs/Connect")
(setf (get wam_srvs::Connect :request) wam_srvs::ConnectRequest)
(setf (get wam_srvs::Connect :response) wam_srvs::ConnectResponse)

(defmethod wam_srvs::ConnectRequest
  (:response () (instance wam_srvs::ConnectResponse :init)))

(setf (get wam_srvs::ConnectRequest :md5sum-) "a31bf7076ca051d3bb47d5d808c4982b")
(setf (get wam_srvs::ConnectRequest :datatype-) "wam_srvs/ConnectRequest")
(setf (get wam_srvs::ConnectRequest :definition-)
      "bool connect
---

")

(setf (get wam_srvs::ConnectResponse :md5sum-) "a31bf7076ca051d3bb47d5d808c4982b")
(setf (get wam_srvs::ConnectResponse :datatype-) "wam_srvs/ConnectResponse")
(setf (get wam_srvs::ConnectResponse :definition-)
      "bool connect
---

")



(provide :wam_srvs/Connect "a31bf7076ca051d3bb47d5d808c4982b")


