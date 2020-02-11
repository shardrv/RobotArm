; Auto-generated. Do not edit!


(cl:in-package wam_srvs-srv)


;//! \htmlinclude HoldGains-request.msg.html

(cl:defclass <HoldGains-request> (roslisp-msg-protocol:ros-message)
  ((hold
    :reader hold
    :initarg :hold
    :type cl:boolean
    :initform cl:nil)
   (kp
    :reader kp
    :initarg :kp
    :type (cl:vector cl:float)
   :initform (cl:make-array 3 :element-type 'cl:float :initial-element 0.0))
   (kd
    :reader kd
    :initarg :kd
    :type (cl:vector cl:float)
   :initform (cl:make-array 3 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass HoldGains-request (<HoldGains-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HoldGains-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HoldGains-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name wam_srvs-srv:<HoldGains-request> is deprecated: use wam_srvs-srv:HoldGains-request instead.")))

(cl:ensure-generic-function 'hold-val :lambda-list '(m))
(cl:defmethod hold-val ((m <HoldGains-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader wam_srvs-srv:hold-val is deprecated.  Use wam_srvs-srv:hold instead.")
  (hold m))

(cl:ensure-generic-function 'kp-val :lambda-list '(m))
(cl:defmethod kp-val ((m <HoldGains-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader wam_srvs-srv:kp-val is deprecated.  Use wam_srvs-srv:kp instead.")
  (kp m))

(cl:ensure-generic-function 'kd-val :lambda-list '(m))
(cl:defmethod kd-val ((m <HoldGains-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader wam_srvs-srv:kd-val is deprecated.  Use wam_srvs-srv:kd instead.")
  (kd m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HoldGains-request>) ostream)
  "Serializes a message object of type '<HoldGains-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'hold) 1 0)) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'kp))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'kd))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HoldGains-request>) istream)
  "Deserializes a message object of type '<HoldGains-request>"
    (cl:setf (cl:slot-value msg 'hold) (cl:not (cl:zerop (cl:read-byte istream))))
  (cl:setf (cl:slot-value msg 'kp) (cl:make-array 3))
  (cl:let ((vals (cl:slot-value msg 'kp)))
    (cl:dotimes (i 3)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  (cl:setf (cl:slot-value msg 'kd) (cl:make-array 3))
  (cl:let ((vals (cl:slot-value msg 'kd)))
    (cl:dotimes (i 3)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HoldGains-request>)))
  "Returns string type for a service object of type '<HoldGains-request>"
  "wam_srvs/HoldGainsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HoldGains-request)))
  "Returns string type for a service object of type 'HoldGains-request"
  "wam_srvs/HoldGainsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HoldGains-request>)))
  "Returns md5sum for a message object of type '<HoldGains-request>"
  "2321330bd020469c41b8f08acef334cb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HoldGains-request)))
  "Returns md5sum for a message object of type 'HoldGains-request"
  "2321330bd020469c41b8f08acef334cb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HoldGains-request>)))
  "Returns full string definition for message of type '<HoldGains-request>"
  (cl:format cl:nil "bool hold~%float32[3] kp~%float32[3] kd~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HoldGains-request)))
  "Returns full string definition for message of type 'HoldGains-request"
  (cl:format cl:nil "bool hold~%float32[3] kp~%float32[3] kd~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HoldGains-request>))
  (cl:+ 0
     1
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'kp) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'kd) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HoldGains-request>))
  "Converts a ROS message object to a list"
  (cl:list 'HoldGains-request
    (cl:cons ':hold (hold msg))
    (cl:cons ':kp (kp msg))
    (cl:cons ':kd (kd msg))
))
;//! \htmlinclude HoldGains-response.msg.html

(cl:defclass <HoldGains-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass HoldGains-response (<HoldGains-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HoldGains-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HoldGains-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name wam_srvs-srv:<HoldGains-response> is deprecated: use wam_srvs-srv:HoldGains-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HoldGains-response>) ostream)
  "Serializes a message object of type '<HoldGains-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HoldGains-response>) istream)
  "Deserializes a message object of type '<HoldGains-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HoldGains-response>)))
  "Returns string type for a service object of type '<HoldGains-response>"
  "wam_srvs/HoldGainsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HoldGains-response)))
  "Returns string type for a service object of type 'HoldGains-response"
  "wam_srvs/HoldGainsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HoldGains-response>)))
  "Returns md5sum for a message object of type '<HoldGains-response>"
  "2321330bd020469c41b8f08acef334cb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HoldGains-response)))
  "Returns md5sum for a message object of type 'HoldGains-response"
  "2321330bd020469c41b8f08acef334cb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HoldGains-response>)))
  "Returns full string definition for message of type '<HoldGains-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HoldGains-response)))
  "Returns full string definition for message of type 'HoldGains-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HoldGains-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HoldGains-response>))
  "Converts a ROS message object to a list"
  (cl:list 'HoldGains-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'HoldGains)))
  'HoldGains-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'HoldGains)))
  'HoldGains-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HoldGains)))
  "Returns string type for a service object of type '<HoldGains>"
  "wam_srvs/HoldGains")