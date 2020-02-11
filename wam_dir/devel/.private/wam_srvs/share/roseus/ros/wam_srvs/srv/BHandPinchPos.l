;; Auto-generated. Do not edit!


(when (boundp 'wam_srvs::BHandPinchPos)
  (if (not (find-package "WAM_SRVS"))
    (make-package "WAM_SRVS"))
  (shadow 'BHandPinchPos (find-package "WAM_SRVS")))
(unless (find-package "WAM_SRVS::BHANDPINCHPOS")
  (make-package "WAM_SRVS::BHANDPINCHPOS"))
(unless (find-package "WAM_SRVS::BHANDPINCHPOSREQUEST")
  (make-package "WAM_SRVS::BHANDPINCHPOSREQUEST"))
(unless (find-package "WAM_SRVS::BHANDPINCHPOSRESPONSE")
  (make-package "WAM_SRVS::BHANDPINCHPOSRESPONSE"))

(in-package "ROS")





(defclass wam_srvs::BHandPinchPosRequest
  :super ros::object
  :slots (_radians ))

(defmethod wam_srvs::BHandPinchPosRequest
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

(defclass wam_srvs::BHandPinchPosResponse
  :super ros::object
  :slots ())

(defmethod wam_srvs::BHandPinchPosResponse
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

(defclass wam_srvs::BHandPinchPos
  :super ros::object
  :slots ())

(setf (get wam_srvs::BHandPinchPos :md5sum-) "718158cfca4f89c6952f799c53697f42")
(setf (get wam_srvs::BHandPinchPos :datatype-) "wam_srvs/BHandPinchPos")
(setf (get wam_srvs::BHandPinchPos :request) wam_srvs::BHandPinchPosRequest)
(setf (get wam_srvs::BHandPinchPos :response) wam_srvs::BHandPinchPosResponse)

(defmethod wam_srvs::BHandPinchPosRequest
  (:response () (instance wam_srvs::BHandPinchPosResponse :init)))

(setf (get wam_srvs::BHandPinchPosRequest :md5sum-) "718158cfca4f89c6952f799c53697f42")
(setf (get wam_srvs::BHandPinchPosRequest :datatype-) "wam_srvs/BHandPinchPosRequest")
(setf (get wam_srvs::BHandPinchPosRequest :definition-)
      "float32 radians
---

")

(setf (get wam_srvs::BHandPinchPosResponse :md5sum-) "718158cfca4f89c6952f799c53697f42")
(setf (get wam_srvs::BHandPinchPosResponse :datatype-) "wam_srvs/BHandPinchPosResponse")
(setf (get wam_srvs::BHandPinchPosResponse :definition-)
      "float32 radians
---

")



(provide :wam_srvs/BHandPinchPos "718158cfca4f89c6952f799c53697f42")


