; Auto-generated. Do not edit!


(cl:in-package wam_srvs-srv)


;//! \htmlinclude ForceTorqueToolTime-request.msg.html

(cl:defclass <ForceTorqueToolTime-request> (roslisp-msg-protocol:ros-message)
  ((force
    :reader force
    :initarg :force
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (torque
    :reader torque
    :initarg :torque
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (time
    :reader time
    :initarg :time
    :type cl:float
    :initform 0.0))
)

(cl:defclass ForceTorqueToolTime-request (<ForceTorqueToolTime-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ForceTorqueToolTime-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ForceTorqueToolTime-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name wam_srvs-srv:<ForceTorqueToolTime-request> is deprecated: use wam_srvs-srv:ForceTorqueToolTime-request instead.")))

(cl:ensure-generic-function 'force-val :lambda-list '(m))
(cl:defmethod force-val ((m <ForceTorqueToolTime-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader wam_srvs-srv:force-val is deprecated.  Use wam_srvs-srv:force instead.")
  (force m))

(cl:ensure-generic-function 'torque-val :lambda-list '(m))
(cl:defmethod torque-val ((m <ForceTorqueToolTime-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader wam_srvs-srv:torque-val is deprecated.  Use wam_srvs-srv:torque instead.")
  (torque m))

(cl:ensure-generic-function 'time-val :lambda-list '(m))
(cl:defmethod time-val ((m <ForceTorqueToolTime-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader wam_srvs-srv:time-val is deprecated.  Use wam_srvs-srv:time instead.")
  (time m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ForceTorqueToolTime-request>) ostream)
  "Serializes a message object of type '<ForceTorqueToolTime-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'force))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'force))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'torque))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'torque))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ForceTorqueToolTime-request>) istream)
  "Deserializes a message object of type '<ForceTorqueToolTime-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'force) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'force)))
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
  (cl:setf (cl:slot-value msg 'torque) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'torque)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'time) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ForceTorqueToolTime-request>)))
  "Returns string type for a service object of type '<ForceTorqueToolTime-request>"
  "wam_srvs/ForceTorqueToolTimeRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ForceTorqueToolTime-request)))
  "Returns string type for a service object of type 'ForceTorqueToolTime-request"
  "wam_srvs/ForceTorqueToolTimeRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ForceTorqueToolTime-request>)))
  "Returns md5sum for a message object of type '<ForceTorqueToolTime-request>"
  "85c62cf949363f45f75d48fcf714c6ad")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ForceTorqueToolTime-request)))
  "Returns md5sum for a message object of type 'ForceTorqueToolTime-request"
  "85c62cf949363f45f75d48fcf714c6ad")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ForceTorqueToolTime-request>)))
  "Returns full string definition for message of type '<ForceTorqueToolTime-request>"
  (cl:format cl:nil "float32[]   force~%float32[]   torque~%float32 time~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ForceTorqueToolTime-request)))
  "Returns full string definition for message of type 'ForceTorqueToolTime-request"
  (cl:format cl:nil "float32[]   force~%float32[]   torque~%float32 time~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ForceTorqueToolTime-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'force) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'torque) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ForceTorqueToolTime-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ForceTorqueToolTime-request
    (cl:cons ':force (force msg))
    (cl:cons ':torque (torque msg))
    (cl:cons ':time (time msg))
))
;//! \htmlinclude ForceTorqueToolTime-response.msg.html

(cl:defclass <ForceTorqueToolTime-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass ForceTorqueToolTime-response (<ForceTorqueToolTime-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ForceTorqueToolTime-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ForceTorqueToolTime-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name wam_srvs-srv:<ForceTorqueToolTime-response> is deprecated: use wam_srvs-srv:ForceTorqueToolTime-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ForceTorqueToolTime-response>) ostream)
  "Serializes a message object of type '<ForceTorqueToolTime-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ForceTorqueToolTime-response>) istream)
  "Deserializes a message object of type '<ForceTorqueToolTime-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ForceTorqueToolTime-response>)))
  "Returns string type for a service object of type '<ForceTorqueToolTime-response>"
  "wam_srvs/ForceTorqueToolTimeResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ForceTorqueToolTime-response)))
  "Returns string type for a service object of type 'ForceTorqueToolTime-response"
  "wam_srvs/ForceTorqueToolTimeResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ForceTorqueToolTime-response>)))
  "Returns md5sum for a message object of type '<ForceTorqueToolTime-response>"
  "85c62cf949363f45f75d48fcf714c6ad")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ForceTorqueToolTime-response)))
  "Returns md5sum for a message object of type 'ForceTorqueToolTime-response"
  "85c62cf949363f45f75d48fcf714c6ad")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ForceTorqueToolTime-response>)))
  "Returns full string definition for message of type '<ForceTorqueToolTime-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ForceTorqueToolTime-response)))
  "Returns full string definition for message of type 'ForceTorqueToolTime-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ForceTorqueToolTime-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ForceTorqueToolTime-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ForceTorqueToolTime-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ForceTorqueToolTime)))
  'ForceTorqueToolTime-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ForceTorqueToolTime)))
  'ForceTorqueToolTime-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ForceTorqueToolTime)))
  "Returns string type for a service object of type '<ForceTorqueToolTime>"
  "wam_srvs/ForceTorqueToolTime")