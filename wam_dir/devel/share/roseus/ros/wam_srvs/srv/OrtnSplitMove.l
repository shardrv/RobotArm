;; Auto-generated. Do not edit!


(when (boundp 'wam_srvs::OrtnSplitMove)
  (if (not (find-package "WAM_SRVS"))
    (make-package "WAM_SRVS"))
  (shadow 'OrtnSplitMove (find-package "WAM_SRVS")))
(unless (find-package "WAM_SRVS::ORTNSPLITMOVE")
  (make-package "WAM_SRVS::ORTNSPLITMOVE"))
(unless (find-package "WAM_SRVS::ORTNSPLITMOVEREQUEST")
  (make-package "WAM_SRVS::ORTNSPLITMOVEREQUEST"))
(unless (find-package "WAM_SRVS::ORTNSPLITMOVERESPONSE")
  (make-package "WAM_SRVS::ORTNSPLITMOVERESPONSE"))

(in-package "ROS")





(defclass wam_srvs::OrtnSplitMoveRequest
  :super ros::object
  :slots (_orientation _kp_gain _kd_gain ))

(defmethod wam_srvs::OrtnSplitMoveRequest
  (:init
   (&key
    ((:orientation __orientation) (make-array 4 :initial-element 0.0 :element-type :float))
    ((:kp_gain __kp_gain) (make-array 3 :initial-element 0.0 :element-type :float))
    ((:kd_gain __kd_gain) (make-array 3 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _orientation __orientation)
   (setq _kp_gain __kp_gain)
   (setq _kd_gain __kd_gain)
   self)
  (:orientation
   (&optional __orientation)
   (if __orientation (setq _orientation __orientation)) _orientation)
  (:kp_gain
   (&optional __kp_gain)
   (if __kp_gain (setq _kp_gain __kp_gain)) _kp_gain)
  (:kd_gain
   (&optional __kd_gain)
   (if __kd_gain (setq _kd_gain __kd_gain)) _kd_gain)
  (:serialization-length
   ()
   (+
    ;; float32[4] _orientation
    (* 4    4)
    ;; float32[3] _kp_gain
    (* 4    3)
    ;; float32[3] _kd_gain
    (* 4    3)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[4] _orientation
     (dotimes (i 4)
       (sys::poke (elt _orientation i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[3] _kp_gain
     (dotimes (i 3)
       (sys::poke (elt _kp_gain i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[3] _kd_gain
     (dotimes (i 3)
       (sys::poke (elt _kd_gain i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[4] _orientation
   (dotimes (i (length _orientation))
     (setf (elt _orientation i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; float32[3] _kp_gain
   (dotimes (i (length _kp_gain))
     (setf (elt _kp_gain i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; float32[3] _kd_gain
   (dotimes (i (length _kd_gain))
     (setf (elt _kd_gain i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;;
   self)
  )

(defclass wam_srvs::OrtnSplitMoveResponse
  :super ros::object
  :slots ())

(defmethod wam_srvs::OrtnSplitMoveResponse
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

(defclass wam_srvs::OrtnSplitMove
  :super ros::object
  :slots ())

(setf (get wam_srvs::OrtnSplitMove :md5sum-) "d493f6e469f2b52d5ef0e3d041ef18b7")
(setf (get wam_srvs::OrtnSplitMove :datatype-) "wam_srvs/OrtnSplitMove")
(setf (get wam_srvs::OrtnSplitMove :request) wam_srvs::OrtnSplitMoveRequest)
(setf (get wam_srvs::OrtnSplitMove :response) wam_srvs::OrtnSplitMoveResponse)

(defmethod wam_srvs::OrtnSplitMoveRequest
  (:response () (instance wam_srvs::OrtnSplitMoveResponse :init)))

(setf (get wam_srvs::OrtnSplitMoveRequest :md5sum-) "d493f6e469f2b52d5ef0e3d041ef18b7")
(setf (get wam_srvs::OrtnSplitMoveRequest :datatype-) "wam_srvs/OrtnSplitMoveRequest")
(setf (get wam_srvs::OrtnSplitMoveRequest :definition-)
      "float32[4] orientation
float32[3] kp_gain
float32[3] kd_gain
---
")

(setf (get wam_srvs::OrtnSplitMoveResponse :md5sum-) "d493f6e469f2b52d5ef0e3d041ef18b7")
(setf (get wam_srvs::OrtnSplitMoveResponse :datatype-) "wam_srvs/OrtnSplitMoveResponse")
(setf (get wam_srvs::OrtnSplitMoveResponse :definition-)
      "float32[4] orientation
float32[3] kp_gain
float32[3] kd_gain
---
")



(provide :wam_srvs/OrtnSplitMove "d493f6e469f2b52d5ef0e3d041ef18b7")


