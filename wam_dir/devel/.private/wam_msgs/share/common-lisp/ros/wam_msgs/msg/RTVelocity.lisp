; Auto-generated. Do not edit!


(cl:in-package wam_msgs-msg)


;//! \htmlinclude RTVelocity.msg.html

(cl:defclass <RTVelocity> (roslisp-msg-protocol:ros-message)
  ((v_direction
    :reader v_direction
    :initarg :v_direction
    :type (cl:vector cl:float)
   :initform (cl:make-array 3 :element-type 'cl:float :initial-element 0.0))
   (v_magnitude
    :reader v_magnitude
    :initarg :v_magnitude
    :type cl:float
    :initform 0.0)
   (kp
    :reader kp
    :initarg :kp
    :type cl:float
    :initform 0.0)
   (change_gains
    :reader change_gains
    :initarg :change_gains
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass RTVelocity (<RTVelocity>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RTVelocity>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RTVelocity)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name wam_msgs-msg:<RTVelocity> is deprecated: use wam_msgs-msg:RTVelocity instead.")))

(cl:ensure-generic-function 'v_direction-val :lambda-list '(m))
(cl:defmethod v_direction-val ((m <RTVelocity>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader wam_msgs-msg:v_direction-val is deprecated.  Use wam_msgs-msg:v_direction instead.")
  (v_direction m))

(cl:ensure-generic-function 'v_magnitude-val :lambda-list '(m))
(cl:defmethod v_magnitude-val ((m <RTVelocity>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader wam_msgs-msg:v_magnitude-val is deprecated.  Use wam_msgs-msg:v_magnitude instead.")
  (v_magnitude m))

(cl:ensure-generic-function 'kp-val :lambda-list '(m))
(cl:defmethod kp-val ((m <RTVelocity>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader wam_msgs-msg:kp-val is deprecated.  Use wam_msgs-msg:kp instead.")
  (kp m))

(cl:ensure-generic-function 'change_gains-val :lambda-list '(m))
(cl:defmethod change_gains-val ((m <RTVelocity>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader wam_msgs-msg:change_gains-val is deprecated.  Use wam_msgs-msg:change_gains instead.")
  (change_gains m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RTVelocity>) ostream)
  "Serializes a message object of type '<RTVelocity>"
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'v_direction))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'v_magnitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'kp))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'change_gains) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RTVelocity>) istream)
  "Deserializes a message object of type '<RTVelocity>"
  (cl:setf (cl:slot-value msg 'v_direction) (cl:make-array 3))
  (cl:let ((vals (cl:slot-value msg 'v_direction)))
    (cl:dotimes (i 3)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'v_magnitude) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'kp) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'change_gains) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RTVelocity>)))
  "Returns string type for a message object of type '<RTVelocity>"
  "wam_msgs/RTVelocity")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RTVelocity)))
  "Returns string type for a message object of type 'RTVelocity"
  "wam_msgs/RTVelocity")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RTVelocity>)))
  "Returns md5sum for a message object of type '<RTVelocity>"
  "6fd73d4c205ad728e90044131e5d954b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RTVelocity)))
  "Returns md5sum for a message object of type 'RTVelocity"
  "6fd73d4c205ad728e90044131e5d954b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RTVelocity>)))
  "Returns full string definition for message of type '<RTVelocity>"
  (cl:format cl:nil "float32[3] v_direction~%float32 v_magnitude~%float32 kp~%bool change_gains~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RTVelocity)))
  "Returns full string definition for message of type 'RTVelocity"
  (cl:format cl:nil "float32[3] v_direction~%float32 v_magnitude~%float32 kp~%bool change_gains~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RTVelocity>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'v_direction) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RTVelocity>))
  "Converts a ROS message object to a list"
  (cl:list 'RTVelocity
    (cl:cons ':v_direction (v_direction msg))
    (cl:cons ':v_magnitude (v_magnitude msg))
    (cl:cons ':kp (kp msg))
    (cl:cons ':change_gains (change_gains msg))
))
