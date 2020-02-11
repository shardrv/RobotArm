;; Auto-generated. Do not edit!


(when (boundp 'wam_srvs::BHandGraspPos)
  (if (not (find-package "WAM_SRVS"))
    (make-package "WAM_SRVS"))
  (shadow 'BHandGraspPos (find-package "WAM_SRVS")))
(unless (find-package "WAM_SRVS::BHANDGRASPPOS")
  (make-package "WAM_SRVS::BHANDGRASPPOS"))
(unless (find-package "WAM_SRVS::BHANDGRASPPOSREQUEST")
  (make-package "WAM_SRVS::BHANDGRASPPOSREQUEST"))
(unless (find-package "WAM_SRVS::BHANDGRASPPOSRESPONSE")
  (make-package "WAM_SRVS::BHANDGRASPPOSRESPONSE"))

(in-package "ROS")





(defclass wam_srvs::BHandGraspPosRequest
  :super ros::object
  :slots (_radians ))

(defmethod wam_srvs::BHandGraspPosRequest
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

(defclass wam_srvs::BHandGraspPosResponse
  :super ros::object
  :slots ())

(defmethod wam_srvs::BHandGraspPosResponse
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

(defclass wam_srvs::BHandGraspPos
  :super ros::object
  :slots ())

(setf (get wam_srvs::BHandGraspPos :md5sum-) "718158cfca4f89c6952f799c53697f42")
(setf (get wam_srvs::BHandGraspPos :datatype-) "wam_srvs/BHandGraspPos")
(setf (get wam_srvs::BHandGraspPos :request) wam_srvs::BHandGraspPosRequest)
(setf (get wam_srvs::BHandGraspPos :response) wam_srvs::BHandGraspPosResponse)

(defmethod wam_srvs::BHandGraspPosRequest
  (:response () (instance wam_srvs::BHandGraspPosResponse :init)))

(setf (get wam_srvs::BHandGraspPosRequest :md5sum-) "718158cfca4f89c6952f799c53697f42")
(setf (get wam_srvs::BHandGraspPosRequest :datatype-) "wam_srvs/BHandGraspPosRequest")
(setf (get wam_srvs::BHandGraspPosRequest :definition-)
      "float32 radians
---

")

(setf (get wam_srvs::BHandGraspPosResponse :md5sum-) "718158cfca4f89c6952f799c53697f42")
(setf (get wam_srvs::BHandGraspPosResponse :datatype-) "wam_srvs/BHandGraspPosResponse")
(setf (get wam_srvs::BHandGraspPosResponse :definition-)
      "float32 radians
---

")



(provide :wam_srvs/BHandGraspPos "718158cfca4f89c6952f799c53697f42")


