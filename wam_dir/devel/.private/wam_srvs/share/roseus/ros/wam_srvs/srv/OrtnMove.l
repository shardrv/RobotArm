;; Auto-generated. Do not edit!


(when (boundp 'wam_srvs::OrtnMove)
  (if (not (find-package "WAM_SRVS"))
    (make-package "WAM_SRVS"))
  (shadow 'OrtnMove (find-package "WAM_SRVS")))
(unless (find-package "WAM_SRVS::ORTNMOVE")
  (make-package "WAM_SRVS::ORTNMOVE"))
(unless (find-package "WAM_SRVS::ORTNMOVEREQUEST")
  (make-package "WAM_SRVS::ORTNMOVEREQUEST"))
(unless (find-package "WAM_SRVS::ORTNMOVERESPONSE")
  (make-package "WAM_SRVS::ORTNMOVERESPONSE"))

(in-package "ROS")





(defclass wam_srvs::OrtnMoveRequest
  :super ros::object
  :slots (_orientation ))

(defmethod wam_srvs::OrtnMoveRequest
  (:init
   (&key
    ((:orientation __orientation) (make-array 4 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _orientation __orientation)
   self)
  (:orientation
   (&optional __orientation)
   (if __orientation (setq _orientation __orientation)) _orientation)
  (:serialization-length
   ()
   (+
    ;; float32[4] _orientation
    (* 4    4)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[4] _orientation
     (dotimes (i 4)
       (sys::poke (elt _orientation i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[4] _orientation
   (dotimes (i (length _orientation))
     (setf (elt _orientation i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;;
   self)
  )

(defclass wam_srvs::OrtnMoveResponse
  :super ros::object
  :slots ())

(defmethod wam_srvs::OrtnMoveResponse
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

(defclass wam_srvs::OrtnMove
  :super ros::object
  :slots ())

(setf (get wam_srvs::OrtnMove :md5sum-) "86f723fe9a4be8979be87cd065276584")
(setf (get wam_srvs::OrtnMove :datatype-) "wam_srvs/OrtnMove")
(setf (get wam_srvs::OrtnMove :request) wam_srvs::OrtnMoveRequest)
(setf (get wam_srvs::OrtnMove :response) wam_srvs::OrtnMoveResponse)

(defmethod wam_srvs::OrtnMoveRequest
  (:response () (instance wam_srvs::OrtnMoveResponse :init)))

(setf (get wam_srvs::OrtnMoveRequest :md5sum-) "86f723fe9a4be8979be87cd065276584")
(setf (get wam_srvs::OrtnMoveRequest :datatype-) "wam_srvs/OrtnMoveRequest")
(setf (get wam_srvs::OrtnMoveRequest :definition-)
      "float32[4] orientation
---
")

(setf (get wam_srvs::OrtnMoveResponse :md5sum-) "86f723fe9a4be8979be87cd065276584")
(setf (get wam_srvs::OrtnMoveResponse :datatype-) "wam_srvs/OrtnMoveResponse")
(setf (get wam_srvs::OrtnMoveResponse :definition-)
      "float32[4] orientation
---
")



(provide :wam_srvs/OrtnMove "86f723fe9a4be8979be87cd065276584")


