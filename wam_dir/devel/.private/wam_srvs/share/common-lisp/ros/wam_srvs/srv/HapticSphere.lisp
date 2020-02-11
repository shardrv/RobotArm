; Auto-generated. Do not edit!


(cl:in-package wam_srvs-srv)


;//! \htmlinclude HapticSphere-request.msg.html

(cl:defclass <HapticSphere-request> (roslisp-msg-protocol:ros-message)
  ((radius
    :reader radius
    :initarg :radius
    :type cl:float
    :initform 0.0)
   (kp
    :reader kp
    :initarg :kp
    :type cl:float
    :initform 0.0)
   (kd
    :reader kd
    :initarg :kd
    :type cl:float
    :initform 0.0)
   (trigger
    :reader trigger
    :initarg :trigger
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass HapticSphere-request (<HapticSphere-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HapticSphere-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HapticSphere-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name wam_srvs-srv:<HapticSphere-request> is deprecated: use wam_srvs-srv:HapticSphere-request instead.")))

(cl:ensure-generic-function 'radius-val :lambda-list '(m))
(cl:defmethod radius-val ((m <HapticSphere-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader wam_srvs-srv:radius-val is deprecated.  Use wam_srvs-srv:radius instead.")
  (radius m))

(cl:ensure-generic-function 'kp-val :lambda-list '(m))
(cl:defmethod kp-val ((m <HapticSphere-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader wam_srvs-srv:kp-val is deprecated.  Use wam_srvs-srv:kp instead.")
  (kp m))

(cl:ensure-generic-function 'kd-val :lambda-list '(m))
(cl:defmethod kd-val ((m <HapticSphere-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader wam_srvs-srv:kd-val is deprecated.  Use wam_srvs-srv:kd instead.")
  (kd m))

(cl:ensure-generic-function 'trigger-val :lambda-list '(m))
(cl:defmethod trigger-val ((m <HapticSphere-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader wam_srvs-srv:trigger-val is deprecated.  Use wam_srvs-srv:trigger instead.")
  (trigger m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HapticSphere-request>) ostream)
  "Serializes a message object of type '<HapticSphere-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'radius))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
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
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'trigger) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HapticSphere-request>) istream)
  "Deserializes a message object of type '<HapticSphere-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'radius) (roslisp-utils:decode-single-float-bits bits)))
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
    (cl:setf (cl:slot-value msg 'trigger) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HapticSphere-request>)))
  "Returns string type for a service object of type '<HapticSphere-request>"
  "wam_srvs/HapticSphereRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HapticSphere-request)))
  "Returns string type for a service object of type 'HapticSphere-request"
  "wam_srvs/HapticSphereRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HapticSphere-request>)))
  "Returns md5sum for a message object of type '<HapticSphere-request>"
  "26022341c3342c1799fc44701262bee2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HapticSphere-request)))
  "Returns md5sum for a message object of type 'HapticSphere-request"
  "26022341c3342c1799fc44701262bee2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HapticSphere-request>)))
  "Returns full string definition for message of type '<HapticSphere-request>"
  (cl:format cl:nil "float32 radius~%float32 kp~%float32 kd~%bool trigger~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HapticSphere-request)))
  "Returns full string definition for message of type 'HapticSphere-request"
  (cl:format cl:nil "float32 radius~%float32 kp~%float32 kd~%bool trigger~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HapticSphere-request>))
  (cl:+ 0
     4
     4
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HapticSphere-request>))
  "Converts a ROS message object to a list"
  (cl:list 'HapticSphere-request
    (cl:cons ':radius (radius msg))
    (cl:cons ':kp (kp msg))
    (cl:cons ':kd (kd msg))
    (cl:cons ':trigger (trigger msg))
))
;//! \htmlinclude HapticSphere-response.msg.html

(cl:defclass <HapticSphere-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass HapticSphere-response (<HapticSphere-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HapticSphere-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HapticSphere-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name wam_srvs-srv:<HapticSphere-response> is deprecated: use wam_srvs-srv:HapticSphere-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HapticSphere-response>) ostream)
  "Serializes a message object of type '<HapticSphere-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HapticSphere-response>) istream)
  "Deserializes a message object of type '<HapticSphere-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HapticSphere-response>)))
  "Returns string type for a service object of type '<HapticSphere-response>"
  "wam_srvs/HapticSphereResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HapticSphere-response)))
  "Returns string type for a service object of type 'HapticSphere-response"
  "wam_srvs/HapticSphereResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HapticSphere-response>)))
  "Returns md5sum for a message object of type '<HapticSphere-response>"
  "26022341c3342c1799fc44701262bee2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HapticSphere-response)))
  "Returns md5sum for a message object of type 'HapticSphere-response"
  "26022341c3342c1799fc44701262bee2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HapticSphere-response>)))
  "Returns full string definition for message of type '<HapticSphere-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HapticSphere-response)))
  "Returns full string definition for message of type 'HapticSphere-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HapticSphere-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HapticSphere-response>))
  "Converts a ROS message object to a list"
  (cl:list 'HapticSphere-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'HapticSphere)))
  'HapticSphere-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'HapticSphere)))
  'HapticSphere-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HapticSphere)))
  "Returns string type for a service object of type '<HapticSphere>"
  "wam_srvs/HapticSphere")