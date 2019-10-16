;; Auto-generated. Do not edit!


(when (boundp 'wam_msgs::MatrixMN)
  (if (not (find-package "WAM_MSGS"))
    (make-package "WAM_MSGS"))
  (shadow 'MatrixMN (find-package "WAM_MSGS")))
(unless (find-package "WAM_MSGS::MATRIXMN")
  (make-package "WAM_MSGS::MATRIXMN"))

(in-package "ROS")
;;//! \htmlinclude MatrixMN.msg.html


(defclass wam_msgs::MatrixMN
  :super ros::object
  :slots (_m _n _data ))

(defmethod wam_msgs::MatrixMN
  (:init
   (&key
    ((:m __m) 0)
    ((:n __n) 0)
    ((:data __data) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _m (round __m))
   (setq _n (round __n))
   (setq _data __data)
   self)
  (:m
   (&optional __m)
   (if __m (setq _m __m)) _m)
  (:n
   (&optional __n)
   (if __n (setq _n __n)) _n)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; int32 _m
    4
    ;; int32 _n
    4
    ;; float64[] _data
    (* 8    (length _data)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _m
       (write-long _m s)
     ;; int32 _n
       (write-long _n s)
     ;; float64[] _data
     (write-long (length _data) s)
     (dotimes (i (length _data))
       (sys::poke (elt _data i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _m
     (setq _m (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _n
     (setq _n (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64[] _data
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _data (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _data i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(setf (get wam_msgs::MatrixMN :md5sum-) "28e4f87d99ae219cf43e9311a87d6fce")
(setf (get wam_msgs::MatrixMN :datatype-) "wam_msgs/MatrixMN")
(setf (get wam_msgs::MatrixMN :definition-)
      "# Matrix m x n stored in column order inside of data
int32 m  #rows
int32 n  #columns
float64[] data

")



(provide :wam_msgs/MatrixMN "28e4f87d99ae219cf43e9311a87d6fce")


