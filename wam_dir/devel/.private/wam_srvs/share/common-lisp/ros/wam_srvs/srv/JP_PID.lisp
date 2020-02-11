; Auto-generated. Do not edit!


(cl:in-package wam_srvs-srv)


;//! \htmlinclude JP_PID-request.msg.html

(cl:defclass <JP_PID-request> (roslisp-msg-protocol:ros-message)
  ((kp
    :reader kp
    :initarg :kp
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (kd
    :reader kd
    :initarg :kd
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (ki
    :reader ki
    :initarg :ki
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass JP_PID-request (<JP_PID-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <JP_PID-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'JP_PID-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name wam_srvs-srv:<JP_PID-request> is deprecated: use wam_srvs-srv:JP_PID-request instead.")))

(cl:ensure-generic-function 'kp-val :lambda-list '(m))
(cl:defmethod kp-val ((m <JP_PID-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader wam_srvs-srv:kp-val is deprecated.  Use wam_srvs-srv:kp instead.")
  (kp m))

(cl:ensure-generic-function 'kd-val :lambda-list '(m))
(cl:defmethod kd-val ((m <JP_PID-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader wam_srvs-srv:kd-val is deprecated.  Use wam_srvs-srv:kd instead.")
  (kd m))

(cl:ensure-generic-function 'ki-val :lambda-list '(m))
(cl:defmethod ki-val ((m <JP_PID-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader wam_srvs-srv:ki-val is deprecated.  Use wam_srvs-srv:ki instead.")
  (ki m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <JP_PID-request>) ostream)
  "Serializes a message object of type '<JP_PID-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'kp))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'kp))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'kd))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'kd))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'ki))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'ki))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <JP_PID-request>) istream)
  "Deserializes a message object of type '<JP_PID-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'kp) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'kp)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'kd) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'kd)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'ki) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'ki)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<JP_PID-request>)))
  "Returns string type for a service object of type '<JP_PID-request>"
  "wam_srvs/JP_PIDRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'JP_PID-request)))
  "Returns string type for a service object of type 'JP_PID-request"
  "wam_srvs/JP_PIDRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<JP_PID-request>)))
  "Returns md5sum for a message object of type '<JP_PID-request>"
  "0db10bb243a6ebb8fbb8a7f8aee28be0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'JP_PID-request)))
  "Returns md5sum for a message object of type 'JP_PID-request"
  "0db10bb243a6ebb8fbb8a7f8aee28be0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<JP_PID-request>)))
  "Returns full string definition for message of type '<JP_PID-request>"
  (cl:format cl:nil "float32[] kp~%float32[] kd~%float32[] ki~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'JP_PID-request)))
  "Returns full string definition for message of type 'JP_PID-request"
  (cl:format cl:nil "float32[] kp~%float32[] kd~%float32[] ki~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <JP_PID-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'kp) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'kd) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'ki) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <JP_PID-request>))
  "Converts a ROS message object to a list"
  (cl:list 'JP_PID-request
    (cl:cons ':kp (kp msg))
    (cl:cons ':kd (kd msg))
    (cl:cons ':ki (ki msg))
))
;//! \htmlinclude JP_PID-response.msg.html

(cl:defclass <JP_PID-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass JP_PID-response (<JP_PID-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <JP_PID-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'JP_PID-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name wam_srvs-srv:<JP_PID-response> is deprecated: use wam_srvs-srv:JP_PID-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <JP_PID-response>) ostream)
  "Serializes a message object of type '<JP_PID-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <JP_PID-response>) istream)
  "Deserializes a message object of type '<JP_PID-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<JP_PID-response>)))
  "Returns string type for a service object of type '<JP_PID-response>"
  "wam_srvs/JP_PIDResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'JP_PID-response)))
  "Returns string type for a service object of type 'JP_PID-response"
  "wam_srvs/JP_PIDResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<JP_PID-response>)))
  "Returns md5sum for a message object of type '<JP_PID-response>"
  "0db10bb243a6ebb8fbb8a7f8aee28be0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'JP_PID-response)))
  "Returns md5sum for a message object of type 'JP_PID-response"
  "0db10bb243a6ebb8fbb8a7f8aee28be0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<JP_PID-response>)))
  "Returns full string definition for message of type '<JP_PID-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'JP_PID-response)))
  "Returns full string definition for message of type 'JP_PID-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <JP_PID-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <JP_PID-response>))
  "Converts a ROS message object to a list"
  (cl:list 'JP_PID-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'JP_PID)))
  'JP_PID-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'JP_PID)))
  'JP_PID-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'JP_PID)))
  "Returns string type for a service object of type '<JP_PID>"
  "wam_srvs/JP_PID")