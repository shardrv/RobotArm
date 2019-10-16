; Auto-generated. Do not edit!


(cl:in-package wam_srvs-srv)


;//! \htmlinclude TP_PID-request.msg.html

(cl:defclass <TP_PID-request> (roslisp-msg-protocol:ros-message)
  ((kp
    :reader kp
    :initarg :kp
    :type cl:float
    :initform 0.0)
   (kd
    :reader kd
    :initarg :kd
    :type cl:float
    :initform 0.0)
   (ki
    :reader ki
    :initarg :ki
    :type cl:float
    :initform 0.0))
)

(cl:defclass TP_PID-request (<TP_PID-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TP_PID-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TP_PID-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name wam_srvs-srv:<TP_PID-request> is deprecated: use wam_srvs-srv:TP_PID-request instead.")))

(cl:ensure-generic-function 'kp-val :lambda-list '(m))
(cl:defmethod kp-val ((m <TP_PID-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader wam_srvs-srv:kp-val is deprecated.  Use wam_srvs-srv:kp instead.")
  (kp m))

(cl:ensure-generic-function 'kd-val :lambda-list '(m))
(cl:defmethod kd-val ((m <TP_PID-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader wam_srvs-srv:kd-val is deprecated.  Use wam_srvs-srv:kd instead.")
  (kd m))

(cl:ensure-generic-function 'ki-val :lambda-list '(m))
(cl:defmethod ki-val ((m <TP_PID-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader wam_srvs-srv:ki-val is deprecated.  Use wam_srvs-srv:ki instead.")
  (ki m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TP_PID-request>) ostream)
  "Serializes a message object of type '<TP_PID-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'kp))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'kd))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'ki))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TP_PID-request>) istream)
  "Deserializes a message object of type '<TP_PID-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'kp) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'kd) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ki) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TP_PID-request>)))
  "Returns string type for a service object of type '<TP_PID-request>"
  "wam_srvs/TP_PIDRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TP_PID-request)))
  "Returns string type for a service object of type 'TP_PID-request"
  "wam_srvs/TP_PIDRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TP_PID-request>)))
  "Returns md5sum for a message object of type '<TP_PID-request>"
  "8dfae169c05c8647d6140e2a6c279a75")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TP_PID-request)))
  "Returns md5sum for a message object of type 'TP_PID-request"
  "8dfae169c05c8647d6140e2a6c279a75")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TP_PID-request>)))
  "Returns full string definition for message of type '<TP_PID-request>"
  (cl:format cl:nil "float32 kp~%float32 kd~%float32 ki~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TP_PID-request)))
  "Returns full string definition for message of type 'TP_PID-request"
  (cl:format cl:nil "float32 kp~%float32 kd~%float32 ki~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TP_PID-request>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TP_PID-request>))
  "Converts a ROS message object to a list"
  (cl:list 'TP_PID-request
    (cl:cons ':kp (kp msg))
    (cl:cons ':kd (kd msg))
    (cl:cons ':ki (ki msg))
))
;//! \htmlinclude TP_PID-response.msg.html

(cl:defclass <TP_PID-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass TP_PID-response (<TP_PID-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TP_PID-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TP_PID-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name wam_srvs-srv:<TP_PID-response> is deprecated: use wam_srvs-srv:TP_PID-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TP_PID-response>) ostream)
  "Serializes a message object of type '<TP_PID-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TP_PID-response>) istream)
  "Deserializes a message object of type '<TP_PID-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TP_PID-response>)))
  "Returns string type for a service object of type '<TP_PID-response>"
  "wam_srvs/TP_PIDResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TP_PID-response)))
  "Returns string type for a service object of type 'TP_PID-response"
  "wam_srvs/TP_PIDResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TP_PID-response>)))
  "Returns md5sum for a message object of type '<TP_PID-response>"
  "8dfae169c05c8647d6140e2a6c279a75")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TP_PID-response)))
  "Returns md5sum for a message object of type 'TP_PID-response"
  "8dfae169c05c8647d6140e2a6c279a75")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TP_PID-response>)))
  "Returns full string definition for message of type '<TP_PID-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TP_PID-response)))
  "Returns full string definition for message of type 'TP_PID-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TP_PID-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TP_PID-response>))
  "Converts a ROS message object to a list"
  (cl:list 'TP_PID-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'TP_PID)))
  'TP_PID-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'TP_PID)))
  'TP_PID-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TP_PID)))
  "Returns string type for a service object of type '<TP_PID>"
  "wam_srvs/TP_PID")