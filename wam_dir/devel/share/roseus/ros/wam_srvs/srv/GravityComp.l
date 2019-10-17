;; Auto-generated. Do not edit!


(when (boundp 'wam_srvs::GravityComp)
  (if (not (find-package "WAM_SRVS"))
    (make-package "WAM_SRVS"))
  (shadow 'GravityComp (find-package "WAM_SRVS")))
(unless (find-package "WAM_SRVS::GRAVITYCOMP")
  (make-package "WAM_SRVS::GRAVITYCOMP"))
(unless (find-package "WAM_SRVS::GRAVITYCOMPREQUEST")
  (make-package "WAM_SRVS::GRAVITYCOMPREQUEST"))
(unless (find-package "WAM_SRVS::GRAVITYCOMPRESPONSE")
  (make-package "WAM_SRVS::GRAVITYCOMPRESPONSE"))

(in-package "ROS")





(defclass wam_srvs::GravityCompRequest
  :super ros::object
  :slots (_gravity ))

(defmethod wam_srvs::GravityCompRequest
  (:init
   (&key
    ((:gravity __gravity) nil)
    )
   (send-super :init)
   (setq _gravity __gravity)
   self)
  (:gravity
   (&optional __gravity)
   (if __gravity (setq _gravity __gravity)) _gravity)
  (:serialization-length
   ()
   (+
    ;; bool _gravity
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _gravity
       (if _gravity (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _gravity
     (setq _gravity (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass wam_srvs::GravityCompResponse
  :super ros::object
  :slots ())

(defmethod wam_srvs::GravityCompResponse
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

(defclass wam_srvs::GravityComp
  :super ros::object
  :slots ())

(setf (get wam_srvs::GravityComp :md5sum-) "f83a9fe078fab9865d863fbf215e1c14")
(setf (get wam_srvs::GravityComp :datatype-) "wam_srvs/GravityComp")
(setf (get wam_srvs::GravityComp :request) wam_srvs::GravityCompRequest)
(setf (get wam_srvs::GravityComp :response) wam_srvs::GravityCompResponse)

(defmethod wam_srvs::GravityCompRequest
  (:response () (instance wam_srvs::GravityCompResponse :init)))

(setf (get wam_srvs::GravityCompRequest :md5sum-) "f83a9fe078fab9865d863fbf215e1c14")
(setf (get wam_srvs::GravityCompRequest :datatype-) "wam_srvs/GravityCompRequest")
(setf (get wam_srvs::GravityCompRequest :definition-)
      "bool gravity
---

")

(setf (get wam_srvs::GravityCompResponse :md5sum-) "f83a9fe078fab9865d863fbf215e1c14")
(setf (get wam_srvs::GravityCompResponse :datatype-) "wam_srvs/GravityCompResponse")
(setf (get wam_srvs::GravityCompResponse :definition-)
      "bool gravity
---

")



(provide :wam_srvs/GravityComp "f83a9fe078fab9865d863fbf215e1c14")


