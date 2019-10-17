;; Auto-generated. Do not edit!


(when (boundp 'wam_srvs::Play)
  (if (not (find-package "WAM_SRVS"))
    (make-package "WAM_SRVS"))
  (shadow 'Play (find-package "WAM_SRVS")))
(unless (find-package "WAM_SRVS::PLAY")
  (make-package "WAM_SRVS::PLAY"))
(unless (find-package "WAM_SRVS::PLAYREQUEST")
  (make-package "WAM_SRVS::PLAYREQUEST"))
(unless (find-package "WAM_SRVS::PLAYRESPONSE")
  (make-package "WAM_SRVS::PLAYRESPONSE"))

(in-package "ROS")





(defclass wam_srvs::PlayRequest
  :super ros::object
  :slots (_path ))

(defmethod wam_srvs::PlayRequest
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

(defclass wam_srvs::PlayResponse
  :super ros::object
  :slots ())

(defmethod wam_srvs::PlayResponse
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

(defclass wam_srvs::Play
  :super ros::object
  :slots ())

(setf (get wam_srvs::Play :md5sum-) "1d00cd540af97efeb6b1589112fab63e")
(setf (get wam_srvs::Play :datatype-) "wam_srvs/Play")
(setf (get wam_srvs::Play :request) wam_srvs::PlayRequest)
(setf (get wam_srvs::Play :response) wam_srvs::PlayResponse)

(defmethod wam_srvs::PlayRequest
  (:response () (instance wam_srvs::PlayResponse :init)))

(setf (get wam_srvs::PlayRequest :md5sum-) "1d00cd540af97efeb6b1589112fab63e")
(setf (get wam_srvs::PlayRequest :datatype-) "wam_srvs/PlayRequest")
(setf (get wam_srvs::PlayRequest :definition-)
      "string path
---

")

(setf (get wam_srvs::PlayResponse :md5sum-) "1d00cd540af97efeb6b1589112fab63e")
(setf (get wam_srvs::PlayResponse :datatype-) "wam_srvs/PlayResponse")
(setf (get wam_srvs::PlayResponse :definition-)
      "string path
---

")



(provide :wam_srvs/Play "1d00cd540af97efeb6b1589112fab63e")


