;; Auto-generated. Do not edit!


(when (boundp 'wam_srvs::CartPosMove)
  (if (not (find-package "WAM_SRVS"))
    (make-package "WAM_SRVS"))
  (shadow 'CartPosMove (find-package "WAM_SRVS")))
(unless (find-package "WAM_SRVS::CARTPOSMOVE")
  (make-package "WAM_SRVS::CARTPOSMOVE"))
(unless (find-package "WAM_SRVS::CARTPOSMOVEREQUEST")
  (make-package "WAM_SRVS::CARTPOSMOVEREQUEST"))
(unless (find-package "WAM_SRVS::CARTPOSMOVERESPONSE")
  (make-package "WAM_SRVS::CARTPOSMOVERESPONSE"))

(in-package "ROS")





(defclass wam_srvs::CartPosMoveRequest
  :super ros::object
  :slots (_position ))

(defmethod wam_srvs::CartPosMoveRequest
  (:init
   (&key
    ((:position __position) (make-array 3 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _position __position)
   self)
  (:position
   (&optional __position)
   (if __position (setq _position __position)) _position)
  (:serialization-length
   ()
   (+
    ;; float32[3] _position
    (* 4    3)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[3] _position
     (dotimes (i 3)
       (sys::poke (elt _position i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[3] _position
   (dotimes (i (length _position))
     (setf (elt _position i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;;
   self)
  )

(defclass wam_srvs::CartPosMoveResponse
  :super ros::object
  :slots ())

(defmethod wam_srvs::CartPosMoveResponse
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

(defclass wam_srvs::CartPosMove
  :super ros::object
  :slots ())

(setf (get wam_srvs::CartPosMove :md5sum-) "993d3a0cca92114d34b338aeb1007ee4")
(setf (get wam_srvs::CartPosMove :datatype-) "wam_srvs/CartPosMove")
(setf (get wam_srvs::CartPosMove :request) wam_srvs::CartPosMoveRequest)
(setf (get wam_srvs::CartPosMove :response) wam_srvs::CartPosMoveResponse)

(defmethod wam_srvs::CartPosMoveRequest
  (:response () (instance wam_srvs::CartPosMoveResponse :init)))

(setf (get wam_srvs::CartPosMoveRequest :md5sum-) "993d3a0cca92114d34b338aeb1007ee4")
(setf (get wam_srvs::CartPosMoveRequest :datatype-) "wam_srvs/CartPosMoveRequest")
(setf (get wam_srvs::CartPosMoveRequest :definition-)
      "float32[3] position
---
")

(setf (get wam_srvs::CartPosMoveResponse :md5sum-) "993d3a0cca92114d34b338aeb1007ee4")
(setf (get wam_srvs::CartPosMoveResponse :datatype-) "wam_srvs/CartPosMoveResponse")
(setf (get wam_srvs::CartPosMoveResponse :definition-)
      "float32[3] position
---
")



(provide :wam_srvs/CartPosMove "993d3a0cca92114d34b338aeb1007ee4")


