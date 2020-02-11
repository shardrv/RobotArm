;; Auto-generated. Do not edit!


(when (boundp 'wam_msgs::RTOrtnVel)
  (if (not (find-package "WAM_MSGS"))
    (make-package "WAM_MSGS"))
  (shadow 'RTOrtnVel (find-package "WAM_MSGS")))
(unless (find-package "WAM_MSGS::RTORTNVEL")
  (make-package "WAM_MSGS::RTORTNVEL"))

(in-package "ROS")
;;//! \htmlinclude RTOrtnVel.msg.html


(defclass wam_msgs::RTOrtnVel
  :super ros::object
  :slots (_angular _magnitude ))

(defmethod wam_msgs::RTOrtnVel
  (:init
   (&key
    ((:angular __angular) (make-array 3 :initial-element 0.0 :element-type :float))
    ((:magnitude __magnitude) 0.0)
    )
   (send-super :init)
   (setq _angular __angular)
   (setq _magnitude (float __magnitude))
   self)
  (:angular
   (&optional __angular)
   (if __angular (setq _angular __angular)) _angular)
  (:magnitude
   (&optional __magnitude)
   (if __magnitude (setq _magnitude __magnitude)) _magnitude)
  (:serialization-length
   ()
   (+
    ;; float32[3] _angular
    (* 4    3)
    ;; float32 _magnitude
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[3] _angular
     (dotimes (i 3)
       (sys::poke (elt _angular i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32 _magnitude
       (sys::poke _magnitude (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[3] _angular
   (dotimes (i (length _angular))
     (setf (elt _angular i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; float32 _magnitude
     (setq _magnitude (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get wam_msgs::RTOrtnVel :md5sum-) "2326f85574083a0a1fc4fddeff59781c")
(setf (get wam_msgs::RTOrtnVel :datatype-) "wam_msgs/RTOrtnVel")
(setf (get wam_msgs::RTOrtnVel :definition-)
      "float32[3] angular
float32	   magnitude

")



(provide :wam_msgs/RTOrtnVel "2326f85574083a0a1fc4fddeff59781c")


