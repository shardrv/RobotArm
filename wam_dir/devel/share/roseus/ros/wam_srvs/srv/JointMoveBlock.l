;; Auto-generated. Do not edit!


(when (boundp 'wam_srvs::JointMoveBlock)
  (if (not (find-package "WAM_SRVS"))
    (make-package "WAM_SRVS"))
  (shadow 'JointMoveBlock (find-package "WAM_SRVS")))
(unless (find-package "WAM_SRVS::JOINTMOVEBLOCK")
  (make-package "WAM_SRVS::JOINTMOVEBLOCK"))
(unless (find-package "WAM_SRVS::JOINTMOVEBLOCKREQUEST")
  (make-package "WAM_SRVS::JOINTMOVEBLOCKREQUEST"))
(unless (find-package "WAM_SRVS::JOINTMOVEBLOCKRESPONSE")
  (make-package "WAM_SRVS::JOINTMOVEBLOCKRESPONSE"))

(in-package "ROS")





(defclass wam_srvs::JointMoveBlockRequest
  :super ros::object
  :slots (_joints _blocking ))

(defmethod wam_srvs::JointMoveBlockRequest
  (:init
   (&key
    ((:joints __joints) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:blocking __blocking) nil)
    )
   (send-super :init)
   (setq _joints __joints)
   (setq _blocking __blocking)
   self)
  (:joints
   (&optional __joints)
   (if __joints (setq _joints __joints)) _joints)
  (:blocking
   (&optional __blocking)
   (if __blocking (setq _blocking __blocking)) _blocking)
  (:serialization-length
   ()
   (+
    ;; float32[] _joints
    (* 4    (length _joints)) 4
    ;; bool _blocking
    1
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
     ;; bool _blocking
       (if _blocking (write-byte -1 s) (write-byte 0 s))
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
   ;; bool _blocking
     (setq _blocking (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass wam_srvs::JointMoveBlockResponse
  :super ros::object
  :slots ())

(defmethod wam_srvs::JointMoveBlockResponse
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

(defclass wam_srvs::JointMoveBlock
  :super ros::object
  :slots ())

(setf (get wam_srvs::JointMoveBlock :md5sum-) "a35c2d19fdef1f1b6b9cace11da2b5c6")
(setf (get wam_srvs::JointMoveBlock :datatype-) "wam_srvs/JointMoveBlock")
(setf (get wam_srvs::JointMoveBlock :request) wam_srvs::JointMoveBlockRequest)
(setf (get wam_srvs::JointMoveBlock :response) wam_srvs::JointMoveBlockResponse)

(defmethod wam_srvs::JointMoveBlockRequest
  (:response () (instance wam_srvs::JointMoveBlockResponse :init)))

(setf (get wam_srvs::JointMoveBlockRequest :md5sum-) "a35c2d19fdef1f1b6b9cace11da2b5c6")
(setf (get wam_srvs::JointMoveBlockRequest :datatype-) "wam_srvs/JointMoveBlockRequest")
(setf (get wam_srvs::JointMoveBlockRequest :definition-)
      "float32[] joints
bool blocking
---

")

(setf (get wam_srvs::JointMoveBlockResponse :md5sum-) "a35c2d19fdef1f1b6b9cace11da2b5c6")
(setf (get wam_srvs::JointMoveBlockResponse :datatype-) "wam_srvs/JointMoveBlockResponse")
(setf (get wam_srvs::JointMoveBlockResponse :definition-)
      "float32[] joints
bool blocking
---

")



(provide :wam_srvs/JointMoveBlock "a35c2d19fdef1f1b6b9cace11da2b5c6")


