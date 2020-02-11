; Auto-generated. Do not edit!


(cl:in-package wam_msgs-msg)


;//! \htmlinclude RTOrtn.msg.html

(cl:defclass <RTOrtn> (roslisp-msg-protocol:ros-message)
  ((orientation
    :reader orientation
    :initarg :orientation
    :type (cl:vector cl:float)
   :initform (cl:make-array 4 :element-type 'cl:float :initial-element 0.0))
   (kp
    :reader kp
    :initarg :kp
    :type (cl:vector cl:float)
   :initform (cl:make-array 3 :element-type 'cl:float :initial-element 0.0))
   (kd
    :reader kd
    :initarg :kd
    :type (cl:vector cl:float)
   :initform (cl:make-array 3 :element-type 'cl:float :initial-element 0.0))
   (change_gains
    :reader change_gains
    :initarg :change_gains
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass RTOrtn (<RTOrtn>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RTOrtn>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RTOrtn)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name wam_msgs-msg:<RTOrtn> is deprecated: use wam_msgs-msg:RTOrtn instead.")))

(cl:ensure-generic-function 'orientation-val :lambda-list '(m))
(cl:defmethod orientation-val ((m <RTOrtn>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader wam_msgs-msg:orientation-val is deprecated.  Use wam_msgs-msg:orientation instead.")
  (orientation m))

(cl:ensure-generic-function 'kp-val :lambda-list '(m))
(cl:defmethod kp-val ((m <RTOrtn>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader wam_msgs-msg:kp-val is deprecated.  Use wam_msgs-msg:kp instead.")
  (kp m))

(cl:ensure-generic-function 'kd-val :lambda-list '(m))
(cl:defmethod kd-val ((m <RTOrtn>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader wam_msgs-msg:kd-val is deprecated.  Use wam_msgs-msg:kd instead.")
  (kd m))

(cl:ensure-generic-function 'change_gains-val :lambda-list '(m))
(cl:defmethod change_gains-val ((m <RTOrtn>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader wam_msgs-msg:change_gains-val is deprecated.  Use wam_msgs-msg:change_gains instead.")
  (change_gains m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RTOrtn>) ostream)
  "Serializes a message object of type '<RTOrtn>"
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'orientation))
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
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'change_gains) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RTOrtn>) istream)
  "Deserializes a message object of type '<RTOrtn>"
  (cl:setf (cl:slot-value msg 'orientation) (cl:make-array 4))
  (cl:let ((vals (cl:slot-value msg 'orientation)))
    (cl:dotimes (i 4)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
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
    (cl:setf (cl:slot-value msg 'change_gains) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RTOrtn>)))
  "Returns string type for a message object of type '<RTOrtn>"
  "wam_msgs/RTOrtn")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RTOrtn)))
  "Returns string type for a message object of type 'RTOrtn"
  "wam_msgs/RTOrtn")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RTOrtn>)))
  "Returns md5sum for a message object of type '<RTOrtn>"
  "2e3f1019db9e6ee5ee0fb74a74917cbb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RTOrtn)))
  "Returns md5sum for a message object of type 'RTOrtn"
  "2e3f1019db9e6ee5ee0fb74a74917cbb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RTOrtn>)))
  "Returns full string definition for message of type '<RTOrtn>"
  (cl:format cl:nil "float32[4] orientation~%float32[3] kp~%float32[3] kd~%bool change_gains~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RTOrtn)))
  "Returns full string definition for message of type 'RTOrtn"
  (cl:format cl:nil "float32[4] orientation~%float32[3] kp~%float32[3] kd~%bool change_gains~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RTOrtn>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'orientation) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'kp) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'kd) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RTOrtn>))
  "Converts a ROS message object to a list"
  (cl:list 'RTOrtn
    (cl:cons ':orientation (orientation msg))
    (cl:cons ':kp (kp msg))
    (cl:cons ':kd (kd msg))
    (cl:cons ':change_gains (change_gains msg))
))
