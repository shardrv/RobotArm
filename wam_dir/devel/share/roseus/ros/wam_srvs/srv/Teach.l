;; Auto-generated. Do not edit!


(when (boundp 'wam_srvs::Teach)
  (if (not (find-package "WAM_SRVS"))
    (make-package "WAM_SRVS"))
  (shadow 'Teach (find-package "WAM_SRVS")))
(unless (find-package "WAM_SRVS::TEACH")
  (make-package "WAM_SRVS::TEACH"))
(unless (find-package "WAM_SRVS::TEACHREQUEST")
  (make-package "WAM_SRVS::TEACHREQUEST"))
(unless (find-package "WAM_SRVS::TEACHRESPONSE")
  (make-package "WAM_SRVS::TEACHRESPONSE"))

(in-package "ROS")





(defclass wam_srvs::TeachRequest
  :super ros::object
  :slots (_path ))

(defmethod wam_srvs::TeachRequest
  (:init
   (&key
    ((:path __path) "")
    )
   (send-super :init)
   (setq _path (string __path))
   self)
  (:path
   (&optional __path)
   (if __path (setq _path __path)) _path)
  (:serialization-length
   ()
   (+
    ;; string _path
    4 (length _path)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _path
       (write-long (length _path) s) (princ _path s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _path
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _path (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass wam_srvs::TeachResponse
  :super ros::object
  :slots ())

(defmethod wam_srvs::TeachResponse
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

(defclass wam_srvs::Teach
  :super ros::object
  :slots ())

(setf (get wam_srvs::Teach :md5sum-) "1d00cd540af97efeb6b1589112fab63e")
(setf (get wam_srvs::Teach :datatype-) "wam_srvs/Teach")
(setf (get wam_srvs::Teach :request) wam_srvs::TeachRequest)
(setf (get wam_srvs::Teach :response) wam_srvs::TeachResponse)

(defmethod wam_srvs::TeachRequest
  (:response () (instance wam_srvs::TeachResponse :init)))

(setf (get wam_srvs::TeachRequest :md5sum-) "1d00cd540af97efeb6b1589112fab63e")
(setf (get wam_srvs::TeachRequest :datatype-) "wam_srvs/TeachRequest")
(setf (get wam_srvs::TeachRequest :definition-)
      "string path
---

")

(setf (get wam_srvs::TeachResponse :md5sum-) "1d00cd540af97efeb6b1589112fab63e")
(setf (get wam_srvs::TeachResponse :datatype-) "wam_srvs/TeachResponse")
(setf (get wam_srvs::TeachResponse :definition-)
      "string path
---

")



(provide :wam_srvs/Teach "1d00cd540af97efeb6b1589112fab63e")


