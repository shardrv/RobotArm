;; Auto-generated. Do not edit!


(when (boundp 'wam_srvs::Link)
  (if (not (find-package "WAM_SRVS"))
    (make-package "WAM_SRVS"))
  (shadow 'Link (find-package "WAM_SRVS")))
(unless (find-package "WAM_SRVS::LINK")
  (make-package "WAM_SRVS::LINK"))
(unless (find-package "WAM_SRVS::LINKREQUEST")
  (make-package "WAM_SRVS::LINKREQUEST"))
(unless (find-package "WAM_SRVS::LINKRESPONSE")
  (make-package "WAM_SRVS::LINKRESPONSE"))

(in-package "ROS")





(defclass wam_srvs::LinkRequest
  :super ros::object
  :slots (_remote_ip ))

(defmethod wam_srvs::LinkRequest
  (:init
   (&key
    ((:remote_ip __remote_ip) "")
    )
   (send-super :init)
   (setq _remote_ip (string __remote_ip))
   self)
  (:remote_ip
   (&optional __remote_ip)
   (if __remote_ip (setq _remote_ip __remote_ip)) _remote_ip)
  (:serialization-length
   ()
   (+
    ;; string _remote_ip
    4 (length _remote_ip)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _remote_ip
       (write-long (length _remote_ip) s) (princ _remote_ip s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _remote_ip
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _remote_ip (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass wam_srvs::LinkResponse
  :super ros::object
  :slots ())

(defmethod wam_srvs::LinkResponse
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

(defclass wam_srvs::Link
  :super ros::object
  :slots ())

(setf (get wam_srvs::Link :md5sum-) "a40ccb098e8ae81c40c4d8ba9679b483")
(setf (get wam_srvs::Link :datatype-) "wam_srvs/Link")
(setf (get wam_srvs::Link :request) wam_srvs::LinkRequest)
(setf (get wam_srvs::Link :response) wam_srvs::LinkResponse)

(defmethod wam_srvs::LinkRequest
  (:response () (instance wam_srvs::LinkResponse :init)))

(setf (get wam_srvs::LinkRequest :md5sum-) "a40ccb098e8ae81c40c4d8ba9679b483")
(setf (get wam_srvs::LinkRequest :datatype-) "wam_srvs/LinkRequest")
(setf (get wam_srvs::LinkRequest :definition-)
      "string remote_ip
---

")

(setf (get wam_srvs::LinkResponse :md5sum-) "a40ccb098e8ae81c40c4d8ba9679b483")
(setf (get wam_srvs::LinkResponse :datatype-) "wam_srvs/LinkResponse")
(setf (get wam_srvs::LinkResponse :definition-)
      "string remote_ip
---

")



(provide :wam_srvs/Link "a40ccb098e8ae81c40c4d8ba9679b483")


