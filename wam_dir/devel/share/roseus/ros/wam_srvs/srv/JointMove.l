;; Auto-generated. Do not edit!


(when (boundp 'wam_srvs::JointMove)
  (if (not (find-package "WAM_SRVS"))
    (make-package "WAM_SRVS"))
  (shadow 'JointMove (find-package "WAM_SRVS")))
(unless (find-package "WAM_SRVS::JOINTMOVE")
  (make-package "WAM_SRVS::JOINTMOVE"))
(unless (find-package "WAM_SRVS::JOINTMOVEREQUEST")
  (make-package "WAM_SRVS::JOINTMOVEREQUEST"))
(unless (find-package "WAM_SRVS::JOINTMOVERESPONSE")
  (make-package "WAM_SRVS::JOINTMOVERESPONSE"))

(in-package "ROS")





(defclass wam_srvs::JointMoveRequest
  :super ros::object
  :slots (_joints ))

(defmethod wam_srvs::JointMoveRequest
  (:init
   (&key
    ((:joints __joints) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _joints __joints)
   self)
  (:joints
   (&optional __joints)
   (if __joints (setq _joints __joints)) _joints)
  (:serialization-length
   ()
   (+
    ;; float32[] _joints
    (* 4    (length _joints)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[] _joints
     (write-long (length _joints) s)
     (dotimes (i (length _joints))
       (sys::poke (elt _joints i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[] _joints
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _joints (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _joints i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(defclass wam_srvs::JointMoveResponse
  :super ros::object
  :slots ())

(defmethod wam_srvs::JointMoveResponse
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

(defclass wam_srvs::JointMove
  :super ros::object
  :slots ())

(setf (get wam_srvs::JointMove :md5sum-) "e2a0e438b445b98def0f0ba6a2a85f58")
(setf (get wam_srvs::JointMove :datatype-) "wam_srvs/JointMove")
(setf (get wam_srvs::JointMove :request) wam_srvs::JointMoveRequest)
(setf (get wam_srvs::JointMove :response) wam_srvs::JointMoveResponse)

(defmethod wam_srvs::JointMoveRequest
  (:response () (instance wam_srvs::JointMoveResponse :init)))

(setf (get wam_srvs::JointMoveRequest :md5sum-) "e2a0e438b445b98def0f0ba6a2a85f58")
(setf (get wam_srvs::JointMoveRequest :datatype-) "wam_srvs/JointMoveRequest")
(setf (get wam_srvs::JointMoveRequest :definition-)
      "float32[] joints
---

")

(setf (get wam_srvs::JointMoveResponse :md5sum-) "e2a0e438b445b98def0f0ba6a2a85f58")
(setf (get wam_srvs::JointMoveResponse :datatype-) "wam_srvs/JointMoveResponse")
(setf (get wam_srvs::JointMoveResponse :definition-)
      "float32[] joints
---

")



(provide :wam_srvs/JointMove "e2a0e438b445b98def0f0ba6a2a85f58")


