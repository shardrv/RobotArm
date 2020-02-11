;; Auto-generated. Do not edit!


(when (boundp 'wam_srvs::BHandSpreadVel)
  (if (not (find-package "WAM_SRVS"))
    (make-package "WAM_SRVS"))
  (shadow 'BHandSpreadVel (find-package "WAM_SRVS")))
(unless (find-package "WAM_SRVS::BHANDSPREADVEL")
  (make-package "WAM_SRVS::BHANDSPREADVEL"))
(unless (find-package "WAM_SRVS::BHANDSPREADVELREQUEST")
  (make-package "WAM_SRVS::BHANDSPREADVELREQUEST"))
(unless (find-package "WAM_SRVS::BHANDSPREADVELRESPONSE")
  (make-package "WAM_SRVS::BHANDSPREADVELRESPONSE"))

(in-package "ROS")





(defclass wam_srvs::BHandSpreadVelRequest
  :super ros::object
  :slots (_velocity ))

(defmethod wam_srvs::BHandSpreadVelRequest
  (:init
   (&key
    ((:velocity __velocity) 0.0)
    )
   (send-super :init)
   (setq _velocity (float __velocity))
   self)
  (:velocity
   (&optional __velocity)
   (if __velocity (setq _velocity __velocity)) _velocity)
  (:serialization-length
   ()
   (+
    ;; float32 _velocity
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _velocity
       (sys::poke _velocity (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _velocity
     (setq _velocity (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass wam_srvs::BHandSpreadVelResponse
  :super ros::object
  :slots ())

(defmethod wam_srvs::BHandSpreadVelResponse
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

(defclass wam_srvs::BHandSpreadVel
  :super ros::object
  :slots ())

(setf (get wam_srvs::BHandSpreadVel :md5sum-) "e4ff88b32504f688719a85e0753f63ce")
(setf (get wam_srvs::BHandSpreadVel :datatype-) "wam_srvs/BHandSpreadVel")
(setf (get wam_srvs::BHandSpreadVel :request) wam_srvs::BHandSpreadVelRequest)
(setf (get wam_srvs::BHandSpreadVel :response) wam_srvs::BHandSpreadVelResponse)

(defmethod wam_srvs::BHandSpreadVelRequest
  (:response () (instance wam_srvs::BHandSpreadVelResponse :init)))

(setf (get wam_srvs::BHandSpreadVelRequest :md5sum-) "e4ff88b32504f688719a85e0753f63ce")
(setf (get wam_srvs::BHandSpreadVelRequest :datatype-) "wam_srvs/BHandSpreadVelRequest")
(setf (get wam_srvs::BHandSpreadVelRequest :definition-)
      "float32 velocity
---

")

(setf (get wam_srvs::BHandSpreadVelResponse :md5sum-) "e4ff88b32504f688719a85e0753f63ce")
(setf (get wam_srvs::BHandSpreadVelResponse :datatype-) "wam_srvs/BHandSpreadVelResponse")
(setf (get wam_srvs::BHandSpreadVelResponse :definition-)
      "float32 velocity
---

")



(provide :wam_srvs/BHandSpreadVel "e4ff88b32504f688719a85e0753f63ce")


