; Auto-generated. Do not edit!


(cl:in-package wam_srvs-srv)


;//! \htmlinclude Connect-request.msg.html

(cl:defclass <Connect-request> (roslisp-msg-protocol:ros-message)
  ((connect
    :reader connect
    :initarg :connect
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Connect-request (<Connect-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Connect-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Connect-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name wam_srvs-srv:<Connect-request> is deprecated: use wam_srvs-srv:Connect-request instead.")))

(cl:ensure-generic-function 'connect-val :lambda-list '(m))
(cl:defmethod connect-val ((m <Connect-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader wam_srvs-srv:connect-val is deprecated.  Use wam_srvs-srv:connect instead.")
  (connect m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Connect-request>) ostream)
  "Serializes a message object of type '<Connect-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'connect) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Connect-request>) istream)
  "Deserializes a message object of type '<Connect-request>"
    (cl:setf (cl:slot-value msg 'connect) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Connect-request>)))
  "Returns string type for a service object of type '<Connect-request>"
  "wam_srvs/ConnectRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Connect-request)))
  "Returns string type for a service object of type 'Connect-request"
  "wam_srvs/ConnectRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Connect-request>)))
  "Returns md5sum for a message object of type '<Connect-request>"
  "a31bf7076ca051d3bb47d5d808c4982b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Connect-request)))
  "Returns md5sum for a message object of type 'Connect-request"
  "a31bf7076ca051d3bb47d5d808c4982b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Connect-request>)))
  "Returns full string definition for message of type '<Connect-request>"
  (cl:format cl:nil "bool connect~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Connect-request)))
  "Returns full string definition for message of type 'Connect-request"
  (cl:format cl:nil "bool connect~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Connect-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Connect-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Connect-request
    (cl:cons ':connect (connect msg))
))
;//! \htmlinclude Connect-response.msg.html

(cl:defclass <Connect-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass Connect-response (<Connect-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Connect-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Connect-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name wam_srvs-srv:<Connect-response> is deprecated: use wam_srvs-srv:Connect-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Connect-response>) ostream)
  "Serializes a message object of type '<Connect-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Connect-response>) istream)
  "Deserializes a message object of type '<Connect-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Connect-response>)))
  "Returns string type for a service object of type '<Connect-response>"
  "wam_srvs/ConnectResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Connect-response)))
  "Returns string type for a service object of type 'Connect-response"
  "wam_srvs/ConnectResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Connect-response>)))
  "Returns md5sum for a message object of type '<Connect-response>"
  "a31bf7076ca051d3bb47d5d808c4982b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Connect-response)))
  "Returns md5sum for a message object of type 'Connect-response"
  "a31bf7076ca051d3bb47d5d808c4982b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Connect-response>)))
  "Returns full string definition for message of type '<Connect-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Connect-response)))
  "Returns full string definition for message of type 'Connect-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Connect-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Connect-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Connect-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Connect)))
  'Connect-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Connect)))
  'Connect-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Connect)))
  "Returns string type for a service object of type '<Connect>"
  "wam_srvs/Connect")