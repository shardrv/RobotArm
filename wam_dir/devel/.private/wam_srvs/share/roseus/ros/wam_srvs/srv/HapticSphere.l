;; Auto-generated. Do not edit!


(when (boundp 'wam_srvs::HapticSphere)
  (if (not (find-package "WAM_SRVS"))
    (make-package "WAM_SRVS"))
  (shadow 'HapticSphere (find-package "WAM_SRVS")))
(unless (find-package "WAM_SRVS::HAPTICSPHERE")
  (make-package "WAM_SRVS::HAPTICSPHERE"))
(unless (find-package "WAM_SRVS::HAPTICSPHEREREQUEST")
  (make-package "WAM_SRVS::HAPTICSPHEREREQUEST"))
(unless (find-package "WAM_SRVS::HAPTICSPHERERESPONSE")
  (make-package "WAM_SRVS::HAPTICSPHERERESPONSE"))

(in-package "ROS")





(defclass wam_srvs::HapticSphereRequest
  :super ros::object
  :slots (_radius _kp _kd _trigger ))

(defmethod wam_srvs::HapticSphereRequest
  (:init
   (&key
    ((:radius __radius) 0.0)
    ((:kp __kp) 0.0)
    ((:kd __kd) 0.0)
    ((:trigger __trigger) nil)
    )
   (send-super :init)
   (setq _radius (float __radius))
   (setq _kp (float __kp))
   (setq _kd (float __kd))
   (setq _trigger __trigger)
   self)
  (:radius
   (&optional __radius)
   (if __radius (setq _radius __radius)) _radius)
  (:kp
   (&optional __kp)
   (if __kp (setq _kp __kp)) _kp)
  (:kd
   (&optional __kd)
   (if __kd (setq _kd __kd)) _kd)
  (:trigger
   (&optional __trigger)
   (if __trigger (setq _trigger __trigger)) _trigger)
  (:serialization-length
   ()
   (+
    ;; float32 _radius
    4
    ;; float32 _kp
    4
    ;; float32 _kd
    4
    ;; bool _trigger
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _radius
       (sys::poke _radius (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _kp
       (sys::poke _kp (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _kd
       (sys::poke _kd (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _trigger
       (if _trigger (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _radius
     (setq _radius (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _kp
     (setq _kp (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _kd
     (setq _kd (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _trigger
     (setq _trigger (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass wam_srvs::HapticSphereResponse
  :super ros::object
  :slots ())

(defmethod wam_srvs::HapticSphereResponse
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

(defclass wam_srvs::HapticSphere
  :super ros::object
  :slots ())

(setf (get wam_srvs::HapticSphere :md5sum-) "26022341c3342c1799fc44701262bee2")
(setf (get wam_srvs::HapticSphere :datatype-) "wam_srvs/HapticSphere")
(setf (get wam_srvs::HapticSphere :request) wam_srvs::HapticSphereRequest)
(setf (get wam_srvs::HapticSphere :response) wam_srvs::HapticSphereResponse)

(defmethod wam_srvs::HapticSphereRequest
  (:response () (instance wam_srvs::HapticSphereResponse :init)))

(setf (get wam_srvs::HapticSphereRequest :md5sum-) "26022341c3342c1799fc44701262bee2")
(setf (get wam_srvs::HapticSphereRequest :datatype-) "wam_srvs/HapticSphereRequest")
(setf (get wam_srvs::HapticSphereRequest :definition-)
      "float32 radius
float32 kp
float32 kd
bool trigger
---
")

(setf (get wam_srvs::HapticSphereResponse :md5sum-) "26022341c3342c1799fc44701262bee2")
(setf (get wam_srvs::HapticSphereResponse :datatype-) "wam_srvs/HapticSphereResponse")
(setf (get wam_srvs::HapticSphereResponse :definition-)
      "float32 radius
float32 kp
float32 kd
bool trigger
---
")



(provide :wam_srvs/HapticSphere "26022341c3342c1799fc44701262bee2")


