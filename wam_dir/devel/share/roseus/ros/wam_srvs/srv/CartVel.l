;; Auto-generated. Do not edit!


(when (boundp 'wam_srvs::CartVel)
  (if (not (find-package "WAM_SRVS"))
    (make-package "WAM_SRVS"))
  (shadow 'CartVel (find-package "WAM_SRVS")))
(unless (find-package "WAM_SRVS::CARTVEL")
  (make-package "WAM_SRVS::CARTVEL"))
(unless (find-package "WAM_SRVS::CARTVELREQUEST")
  (make-package "WAM_SRVS::CARTVELREQUEST"))
(unless (find-package "WAM_SRVS::CARTVELRESPONSE")
  (make-package "WAM_SRVS::CARTVELRESPONSE"))

(in-package "ROS")





(defclass wam_srvs::CartVelRequest
  :super ros::object
  :slots (_v_direction _v_magnitude _kp _visual_system ))

(defmethod wam_srvs::CartVelRequest
  (:init
   (&key
    ((:v_direction __v_direction) (make-array 3 :initial-element 0.0 :element-type :float))
    ((:v_magnitude __v_magnitude) 0.0)
    ((:kp __kp) 0.0)
    ((:visual_system __visual_system) nil)
    )
   (send-super :init)
   (setq _v_direction __v_direction)
   (setq _v_magnitude (float __v_magnitude))
   (setq _kp (float __kp))
   (setq _visual_system __visual_system)
   self)
  (:v_direction
   (&optional __v_direction)
   (if __v_direction (setq _v_direction __v_direction)) _v_direction)
  (:v_magnitude
   (&optional __v_magnitude)
   (if __v_magnitude (setq _v_magnitude __v_magnitude)) _v_magnitude)
  (:kp
   (&optional __kp)
   (if __kp (setq _kp __kp)) _kp)
  (:visual_system
   (&optional __visual_system)
   (if __visual_system (setq _visual_system __visual_system)) _visual_system)
  (:serialization-length
   ()
   (+
    ;; float32[3] _v_direction
    (* 4    3)
    ;; float32 _v_magnitude
    4
    ;; float32 _kp
    4
    ;; bool _visual_system
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[3] _v_direction
     (dotimes (i 3)
       (sys::poke (elt _v_direction i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32 _v_magnitude
       (sys::poke _v_magnitude (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _kp
       (sys::poke _kp (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _visual_system
       (if _visual_system (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[3] _v_direction
   (dotimes (i (length _v_direction))
     (setf (elt _v_direction i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; float32 _v_magnitude
     (setq _v_magnitude (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _kp
     (setq _kp (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _visual_system
     (setq _visual_system (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass wam_srvs::CartVelResponse
  :super ros::object
  :slots ())

(defmethod wam_srvs::CartVelResponse
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

(defclass wam_srvs::CartVel
  :super ros::object
  :slots ())

(setf (get wam_srvs::CartVel :md5sum-) "acd45b1363369bbb5ad0077b51700f8e")
(setf (get wam_srvs::CartVel :datatype-) "wam_srvs/CartVel")
(setf (get wam_srvs::CartVel :request) wam_srvs::CartVelRequest)
(setf (get wam_srvs::CartVel :response) wam_srvs::CartVelResponse)

(defmethod wam_srvs::CartVelRequest
  (:response () (instance wam_srvs::CartVelResponse :init)))

(setf (get wam_srvs::CartVelRequest :md5sum-) "acd45b1363369bbb5ad0077b51700f8e")
(setf (get wam_srvs::CartVelRequest :datatype-) "wam_srvs/CartVelRequest")
(setf (get wam_srvs::CartVelRequest :definition-)
      "float32[3] v_direction
float32 v_magnitude
float32 kp
bool visual_system
---
")

(setf (get wam_srvs::CartVelResponse :md5sum-) "acd45b1363369bbb5ad0077b51700f8e")
(setf (get wam_srvs::CartVelResponse :datatype-) "wam_srvs/CartVelResponse")
(setf (get wam_srvs::CartVelResponse :definition-)
      "float32[3] v_direction
float32 v_magnitude
float32 kp
bool visual_system
---
")



(provide :wam_srvs/CartVel "acd45b1363369bbb5ad0077b51700f8e")


