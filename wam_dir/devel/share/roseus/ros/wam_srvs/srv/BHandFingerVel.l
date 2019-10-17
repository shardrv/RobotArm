;; Auto-generated. Do not edit!


(when (boundp 'wam_srvs::BHandFingerVel)
  (if (not (find-package "WAM_SRVS"))
    (make-package "WAM_SRVS"))
  (shadow 'BHandFingerVel (find-package "WAM_SRVS")))
(unless (find-package "WAM_SRVS::BHANDFINGERVEL")
  (make-package "WAM_SRVS::BHANDFINGERVEL"))
(unless (find-package "WAM_SRVS::BHANDFINGERVELREQUEST")
  (make-package "WAM_SRVS::BHANDFINGERVELREQUEST"))
(unless (find-package "WAM_SRVS::BHANDFINGERVELRESPONSE")
  (make-package "WAM_SRVS::BHANDFINGERVELRESPONSE"))

(in-package "ROS")





(defclass wam_srvs::BHandFingerVelRequest
  :super ros::object
  :slots (_velocity ))

(defmethod wam_srvs::BHandFingerVelRequest
  (:init
   (&key
    ((:velocity __velocity) (make-array 3 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _velocity __velocity)
   self)
  (:velocity
   (&optional __velocity)
   (if __velocity (setq _velocity __velocity)) _velocity)
  (:serialization-length
   ()
   (+
    ;; float32[3] _velocity
    (* 4    3)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[3] _velocity
     (dotimes (i 3)
       (sys::poke (elt _velocity i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[3] _velocity
   (dotimes (i (length _velocity))
     (setf (elt _velocity i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;;
   self)
  )

(defclass wam_srvs::BHandFingerVelResponse
  :super ros::object
  :slots ())

(defmethod wam_srvs::BHandFingerVelResponse
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

(defclass wam_srvs::BHandFingerVel
  :super ros::object
  :slots ())

(setf (get wam_srvs::BHandFingerVel :md5sum-) "d4b1534f81253843d8e7435f97fbf189")
(setf (get wam_srvs::BHandFingerVel :datatype-) "wam_srvs/BHandFingerVel")
(setf (get wam_srvs::BHandFingerVel :request) wam_srvs::BHandFingerVelRequest)
(setf (get wam_srvs::BHandFingerVel :response) wam_srvs::BHandFingerVelResponse)

(defmethod wam_srvs::BHandFingerVelRequest
  (:response () (instance wam_srvs::BHandFingerVelResponse :init)))

(setf (get wam_srvs::BHandFingerVelRequest :md5sum-) "d4b1534f81253843d8e7435f97fbf189")
(setf (get wam_srvs::BHandFingerVelRequest :datatype-) "wam_srvs/BHandFingerVelRequest")
(setf (get wam_srvs::BHandFingerVelRequest :definition-)
      "float32[3] velocity
---

")

(setf (get wam_srvs::BHandFingerVelResponse :md5sum-) "d4b1534f81253843d8e7435f97fbf189")
(setf (get wam_srvs::BHandFingerVelResponse :datatype-) "wam_srvs/BHandFingerVelResponse")
(setf (get wam_srvs::BHandFingerVelResponse :definition-)
      "float32[3] velocity
---

")



(provide :wam_srvs/BHandFingerVel "d4b1534f81253843d8e7435f97fbf189")


