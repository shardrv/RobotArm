;; Auto-generated. Do not edit!


(when (boundp 'wam_srvs::BHandGraspVel)
  (if (not (find-package "WAM_SRVS"))
    (make-package "WAM_SRVS"))
  (shadow 'BHandGraspVel (find-package "WAM_SRVS")))
(unless (find-package "WAM_SRVS::BHANDGRASPVEL")
  (make-package "WAM_SRVS::BHANDGRASPVEL"))
(unless (find-package "WAM_SRVS::BHANDGRASPVELREQUEST")
  (make-package "WAM_SRVS::BHANDGRASPVELREQUEST"))
(unless (find-package "WAM_SRVS::BHANDGRASPVELRESPONSE")
  (make-package "WAM_SRVS::BHANDGRASPVELRESPONSE"))

(in-package "ROS")





(defclass wam_srvs::BHandGraspVelRequest
  :super ros::object
  :slots (_velocity ))

(defmethod wam_srvs::BHandGraspVelRequest
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

(defclass wam_srvs::BHandGraspVelResponse
  :super ros::object
  :slots ())

(defmethod wam_srvs::BHandGraspVelResponse
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

(defclass wam_srvs::BHandGraspVel
  :super ros::object
  :slots ())

(setf (get wam_srvs::BHandGraspVel :md5sum-) "e4ff88b32504f688719a85e0753f63ce")
(setf (get wam_srvs::BHandGraspVel :datatype-) "wam_srvs/BHandGraspVel")
(setf (get wam_srvs::BHandGraspVel :request) wam_srvs::BHandGraspVelRequest)
(setf (get wam_srvs::BHandGraspVel :response) wam_srvs::BHandGraspVelResponse)

(defmethod wam_srvs::BHandGraspVelRequest
  (:response () (instance wam_srvs::BHandGraspVelResponse :init)))

(setf (get wam_srvs::BHandGraspVelRequest :md5sum-) "e4ff88b32504f688719a85e0753f63ce")
(setf (get wam_srvs::BHandGraspVelRequest :datatype-) "wam_srvs/BHandGraspVelRequest")
(setf (get wam_srvs::BHandGraspVelRequest :definition-)
      "float32 velocity
---

")

(setf (get wam_srvs::BHandGraspVelResponse :md5sum-) "e4ff88b32504f688719a85e0753f63ce")
(setf (get wam_srvs::BHandGraspVelResponse :datatype-) "wam_srvs/BHandGraspVelResponse")
(setf (get wam_srvs::BHandGraspVelResponse :definition-)
      "float32 velocity
---

")



(provide :wam_srvs/BHandGraspVel "e4ff88b32504f688719a85e0753f63ce")


