; Auto-generated. Do not edit!


(cl:in-package wam_msgs-msg)


;//! \htmlinclude RTToolInfo.msg.html

(cl:defclass <RTToolInfo> (roslisp-msg-protocol:ros-message)
  ((velocity
    :reader velocity
    :initarg :velocity
    :type (cl:vector cl:float)
   :initform (cl:make-array 3 :element-type 'cl:float :initial-element 0.0))
   (position
    :reader position
    :initarg :position
    :type (cl:vector cl:float)
   :initform (cl:make-array 3 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass RTToolInfo (<RTToolInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RTToolInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RTToolInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name wam_msgs-msg:<RTToolInfo> is deprecated: use wam_msgs-msg:RTToolInfo instead.")))

(cl:ensure-generic-function 'velocity-val :lambda-list '(m))
(cl:defmethod velocity-val ((m <RTToolInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader wam_msgs-msg:velocity-val is deprecated.  Use wam_msgs-msg:velocity instead.")
  (velocity m))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <RTToolInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader wam_msgs-msg:position-val is deprecated.  Use wam_msgs-msg:position instead.")
  (position m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RTToolInfo>) ostream)
  "Serializes a message object of type '<RTToolInfo>"
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'velocity))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'position))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RTToolInfo>) istream)
  "Deserializes a message object of type '<RTToolInfo>"
  (cl:setf (cl:slot-value msg 'velocity) (cl:make-array 3))
  (cl:let ((vals (cl:slot-value msg 'velocity)))
    (cl:dotimes (i 3)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  (cl:setf (cl:slot-value msg 'position) (cl:make-array 3))
  (cl:let ((vals (cl:slot-value msg 'position)))
    (cl:dotimes (i 3)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RTToolInfo>)))
  "Returns string type for a message object of type '<RTToolInfo>"
  "wam_msgs/RTToolInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RTToolInfo)))
  "Returns string type for a message object of type 'RTToolInfo"
  "wam_msgs/RTToolInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RTToolInfo>)))
  "Returns md5sum for a message object of type '<RTToolInfo>"
  "b526edc7ba53dd034054d98a4c063fce")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RTToolInfo)))
  "Returns md5sum for a message object of type 'RTToolInfo"
  "b526edc7ba53dd034054d98a4c063fce")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RTToolInfo>)))
  "Returns full string definition for message of type '<RTToolInfo>"
  (cl:format cl:nil "float32[3] velocity~%float32[3] position~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RTToolInfo)))
  "Returns full string definition for message of type 'RTToolInfo"
  (cl:format cl:nil "float32[3] velocity~%float32[3] position~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RTToolInfo>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'velocity) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'position) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RTToolInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'RTToolInfo
    (cl:cons ':velocity (velocity msg))
    (cl:cons ':position (position msg))
))
