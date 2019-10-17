;; Auto-generated. Do not edit!


(when (boundp 'wam_srvs::BHandFingerPos)
  (if (not (find-package "WAM_SRVS"))
    (make-package "WAM_SRVS"))
  (shadow 'BHandFingerPos (find-package "WAM_SRVS")))
(unless (find-package "WAM_SRVS::BHANDFINGERPOS")
  (make-package "WAM_SRVS::BHANDFINGERPOS"))
(unless (find-package "WAM_SRVS::BHANDFINGERPOSREQUEST")
  (make-package "WAM_SRVS::BHANDFINGERPOSREQUEST"))
(unless (find-package "WAM_SRVS::BHANDFINGERPOSRESPONSE")
  (make-package "WAM_SRVS::BHANDFINGERPOSRESPONSE"))

(in-package "ROS")





(defclass wam_srvs::BHandFingerPosRequest
  :super ros::object
  :slots (_radians ))

(defmethod wam_srvs::BHandFingerPosRequest
  (:init
   (&key
    ((:radians __radians) (make-array 3 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _radians __radians)
   self)
  (:radians
   (&optional __radians)
   (if __radians (setq _radians __radians)) _radians)
  (:serialization-length
   ()
   (+
    ;; float32[3] _radians
    (* 4    3)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[3] _radians
     (dotimes (i 3)
       (sys::poke (elt _radians i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[3] _radians
   (dotimes (i (length _radians))
     (setf (elt _radians i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;;
   self)
  )

(defclass wam_srvs::BHandFingerPosResponse
  :super ros::object
  :slots ())

(defmethod wam_srvs::BHandFingerPosResponse
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

(defclass wam_srvs::BHandFingerPos
  :super ros::object
  :slots ())

(setf (get wam_srvs::BHandFingerPos :md5sum-) "b8c122f38450d0302ba1a30c9c588995")
(setf (get wam_srvs::BHandFingerPos :datatype-) "wam_srvs/BHandFingerPos")
(setf (get wam_srvs::BHandFingerPos :request) wam_srvs::BHandFingerPosRequest)
(setf (get wam_srvs::BHandFingerPos :response) wam_srvs::BHandFingerPosResponse)

(defmethod wam_srvs::BHandFingerPosRequest
  (:response () (instance wam_srvs::BHandFingerPosResponse :init)))

(setf (get wam_srvs::BHandFingerPosRequest :md5sum-) "b8c122f38450d0302ba1a30c9c588995")
(setf (get wam_srvs::BHandFingerPosRequest :datatype-) "wam_srvs/BHandFingerPosRequest")
(setf (get wam_srvs::BHandFingerPosRequest :definition-)
      "float32[3] radians
---

")

(setf (get wam_srvs::BHandFingerPosResponse :md5sum-) "b8c122f38450d0302ba1a30c9c588995")
(setf (get wam_srvs::BHandFingerPosResponse :datatype-) "wam_srvs/BHandFingerPosResponse")
(setf (get wam_srvs::BHandFingerPosResponse :definition-)
      "float32[3] radians
---

")



(provide :wam_srvs/BHandFingerPos "b8c122f38450d0302ba1a30c9c588995")


