; Auto-generated. Do not edit!


(cl:in-package wam_srvs-srv)


;//! \htmlinclude OrtnGains-request.msg.html

(cl:defclass <OrtnGains-request> (roslisp-msg-protocol:ros-message)
  ((kp_gain
    :reader kp_gain
    :initarg :kp_gain
    :type (cl:vector cl:float)
   :initform (cl:make-array 3 :element-type 'cl:float :initial-element 0.0))
   (kd_gain
    :reader kd_gain
    :initarg :kd_gain
    :type (cl:vector cl:float)
   :initform (cl:make-array 3 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass OrtnGains-request (<OrtnGains-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <OrtnGains-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'OrtnGains-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name wam_srvs-srv:<OrtnGains-request> is deprecated: use wam_srvs-srv:OrtnGains-request instead.")))

(cl:ensure-generic-function 'kp_gain-val :lambda-list '(m))
(cl:defmethod kp_gain-val ((m <OrtnGains-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader wam_srvs-srv:kp_gain-val is deprecated.  Use wam_srvs-srv:kp_gain instead.")
  (kp_gain m))

(cl:ensure-generic-function 'kd_gain-val :lambda-list '(m))
(cl:defmethod kd_gain-val ((m <OrtnGains-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader wam_srvs-srv:kd_gain-val is deprecated.  Use wam_srvs-srv:kd_gain instead.")
  (kd_gain m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <OrtnGains-request>) ostream)
  "Serializes a message object of type '<OrtnGains-request>"
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'kp_gain))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'kd_gain))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <OrtnGains-request>) istream)
  "Deserializes a message object of type '<OrtnGains-request>"
  (cl:setf (cl:slot-value msg 'kp_gain) (cl:make-array 3))
  (cl:let ((vals (cl:slot-value msg 'kp_gain)))
    (cl:dotimes (i 3)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  (cl:setf (cl:slot-value msg 'kd_gain) (cl:make-array 3))
  (cl:let ((vals (cl:slot-value msg 'kd_gain)))
    (cl:dotimes (i 3)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<OrtnGains-request>)))
  "Returns string type for a service object of type '<OrtnGains-request>"
  "wam_srvs/OrtnGainsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'OrtnGains-request)))
  "Returns string type for a service object of type 'OrtnGains-request"
  "wam_srvs/OrtnGainsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<OrtnGains-request>)))
  "Returns md5sum for a message object of type '<OrtnGains-request>"
  "26320303f516c59455807c34544a7fb5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'OrtnGains-request)))
  "Returns md5sum for a message object of type 'OrtnGains-request"
  "26320303f516c59455807c34544a7fb5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<OrtnGains-request>)))
  "Returns full string definition for message of type '<OrtnGains-request>"
  (cl:format cl:nil "float32[3] kp_gain~%float32[3] kd_gain~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'OrtnGains-request)))
  "Returns full string definition for message of type 'OrtnGains-request"
  (cl:format cl:nil "float32[3] kp_gain~%float32[3] kd_gain~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <OrtnGains-request>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'kp_gain) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'kd_gain) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <OrtnGains-request>))
  "Converts a ROS message object to a list"
  (cl:list 'OrtnGains-request
    (cl:cons ':kp_gain (kp_gain msg))
    (cl:cons ':kd_gain (kd_gain msg))
))
;//! \htmlinclude OrtnGains-response.msg.html

(cl:defclass <OrtnGains-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass OrtnGains-response (<OrtnGains-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <OrtnGains-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'OrtnGains-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name wam_srvs-srv:<OrtnGains-response> is deprecated: use wam_srvs-srv:OrtnGains-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <OrtnGains-response>) ostream)
  "Serializes a message object of type '<OrtnGains-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <OrtnGains-response>) istream)
  "Deserializes a message object of type '<OrtnGains-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<OrtnGains-response>)))
  "Returns string type for a service object of type '<OrtnGains-response>"
  "wam_srvs/OrtnGainsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'OrtnGains-response)))
  "Returns string type for a service object of type 'OrtnGains-response"
  "wam_srvs/OrtnGainsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<OrtnGains-response>)))
  "Returns md5sum for a message object of type '<OrtnGains-response>"
  "26320303f516c59455807c34544a7fb5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'OrtnGains-response)))
  "Returns md5sum for a message object of type 'OrtnGains-response"
  "26320303f516c59455807c34544a7fb5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<OrtnGains-response>)))
  "Returns full string definition for message of type '<OrtnGains-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'OrtnGains-response)))
  "Returns full string definition for message of type 'OrtnGains-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <OrtnGains-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <OrtnGains-response>))
  "Converts a ROS message object to a list"
  (cl:list 'OrtnGains-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'OrtnGains)))
  'OrtnGains-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'OrtnGains)))
  'OrtnGains-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'OrtnGains)))
  "Returns string type for a service object of type '<OrtnGains>"
  "wam_srvs/OrtnGains")