;; Auto-generated. Do not edit!


(when (boundp 'wam_srvs::BHandSpreadPos)
  (if (not (find-package "WAM_SRVS"))
    (make-package "WAM_SRVS"))
  (shadow 'BHandSpreadPos (find-package "WAM_SRVS")))
(unless (find-package "WAM_SRVS::BHANDSPREADPOS")
  (make-package "WAM_SRVS::BHANDSPREADPOS"))
(unless (find-package "WAM_SRVS::BHANDSPREADPOSREQUEST")
  (make-package "WAM_SRVS::BHANDSPREADPOSREQUEST"))
(unless (find-package "WAM_SRVS::BHANDSPREADPOSRESPONSE")
  (make-package "WAM_SRVS::BHANDSPREADPOSRESPONSE"))

(in-package "ROS")





(defclass wam_srvs::BHandSpreadPosRequest
  :super ros::object
  :slots (_radians ))

(defmethod wam_srvs::BHandSpreadPosRequest
  (:init
   (&key
    ((:radians __radians) 0.0)
    )
   (send-super :init)
   (setq _radians (float __radians))
   self)
  (:radians
   (&optional __radians)
   (if __radians (setq _radians __radians)) _radians)
  (:serialization-length
   ()
   (+
    ;; float32 _radians
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _radians
       (sys::poke _radians (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _radians
     (setq _radians (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass wam_srvs::BHandSpreadPosResponse
  :super ros::object
  :slots ())

(defmethod wam_srvs::BHandSpreadPosResponse
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

(defclass wam_srvs::BHandSpreadPos
  :super ros::object
  :slots ())

(setf (get wam_srvs::BHandSpreadPos :md5sum-) "718158cfca4f89c6952f799c53697f42")
(setf (get wam_srvs::BHandSpreadPos :datatype-) "wam_srvs/BHandSpreadPos")
(setf (get wam_srvs::BHandSpreadPos :request) wam_srvs::BHandSpreadPosRequest)
(setf (get wam_srvs::BHandSpreadPos :response) wam_srvs::BHandSpreadPosResponse)

(defmethod wam_srvs::BHandSpreadPosRequest
  (:response () (instance wam_srvs::BHandSpreadPosResponse :init)))

(setf (get wam_srvs::BHandSpreadPosRequest :md5sum-) "718158cfca4f89c6952f799c53697f42")
(setf (get wam_srvs::BHandSpreadPosRequest :datatype-) "wam_srvs/BHandSpreadPosRequest")
(setf (get wam_srvs::BHandSpreadPosRequest :definition-)
      "float32 radians
---

")

(setf (get wam_srvs::BHandSpreadPosResponse :md5sum-) "718158cfca4f89c6952f799c53697f42")
(setf (get wam_srvs::BHandSpreadPosResponse :datatype-) "wam_srvs/BHandSpreadPosResponse")
(setf (get wam_srvs::BHandSpreadPosResponse :definition-)
      "float32 radians
---

")



(provide :wam_srvs/BHandSpreadPos "718158cfca4f89c6952f799c53697f42")


