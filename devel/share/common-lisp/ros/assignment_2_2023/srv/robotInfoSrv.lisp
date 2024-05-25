; Auto-generated. Do not edit!


(cl:in-package assignment_2_2023-srv)


;//! \htmlinclude robotInfoSrv-request.msg.html

(cl:defclass <robotInfoSrv-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass robotInfoSrv-request (<robotInfoSrv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <robotInfoSrv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'robotInfoSrv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name assignment_2_2023-srv:<robotInfoSrv-request> is deprecated: use assignment_2_2023-srv:robotInfoSrv-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <robotInfoSrv-request>) ostream)
  "Serializes a message object of type '<robotInfoSrv-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <robotInfoSrv-request>) istream)
  "Deserializes a message object of type '<robotInfoSrv-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<robotInfoSrv-request>)))
  "Returns string type for a service object of type '<robotInfoSrv-request>"
  "assignment_2_2023/robotInfoSrvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'robotInfoSrv-request)))
  "Returns string type for a service object of type 'robotInfoSrv-request"
  "assignment_2_2023/robotInfoSrvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<robotInfoSrv-request>)))
  "Returns md5sum for a message object of type '<robotInfoSrv-request>"
  "864975fef3d37f98fc7bae31c8fe41ea")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'robotInfoSrv-request)))
  "Returns md5sum for a message object of type 'robotInfoSrv-request"
  "864975fef3d37f98fc7bae31c8fe41ea")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<robotInfoSrv-request>)))
  "Returns full string definition for message of type '<robotInfoSrv-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'robotInfoSrv-request)))
  "Returns full string definition for message of type 'robotInfoSrv-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <robotInfoSrv-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <robotInfoSrv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'robotInfoSrv-request
))
;//! \htmlinclude robotInfoSrv-response.msg.html

(cl:defclass <robotInfoSrv-response> (roslisp-msg-protocol:ros-message)
  ((distance
    :reader distance
    :initarg :distance
    :type cl:float
    :initform 0.0)
   (vel_x
    :reader vel_x
    :initarg :vel_x
    :type cl:float
    :initform 0.0)
   (vel_z
    :reader vel_z
    :initarg :vel_z
    :type cl:float
    :initform 0.0))
)

(cl:defclass robotInfoSrv-response (<robotInfoSrv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <robotInfoSrv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'robotInfoSrv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name assignment_2_2023-srv:<robotInfoSrv-response> is deprecated: use assignment_2_2023-srv:robotInfoSrv-response instead.")))

(cl:ensure-generic-function 'distance-val :lambda-list '(m))
(cl:defmethod distance-val ((m <robotInfoSrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader assignment_2_2023-srv:distance-val is deprecated.  Use assignment_2_2023-srv:distance instead.")
  (distance m))

(cl:ensure-generic-function 'vel_x-val :lambda-list '(m))
(cl:defmethod vel_x-val ((m <robotInfoSrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader assignment_2_2023-srv:vel_x-val is deprecated.  Use assignment_2_2023-srv:vel_x instead.")
  (vel_x m))

(cl:ensure-generic-function 'vel_z-val :lambda-list '(m))
(cl:defmethod vel_z-val ((m <robotInfoSrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader assignment_2_2023-srv:vel_z-val is deprecated.  Use assignment_2_2023-srv:vel_z instead.")
  (vel_z m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <robotInfoSrv-response>) ostream)
  "Serializes a message object of type '<robotInfoSrv-response>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'vel_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'vel_z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <robotInfoSrv-response>) istream)
  "Deserializes a message object of type '<robotInfoSrv-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'distance) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vel_x) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vel_z) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<robotInfoSrv-response>)))
  "Returns string type for a service object of type '<robotInfoSrv-response>"
  "assignment_2_2023/robotInfoSrvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'robotInfoSrv-response)))
  "Returns string type for a service object of type 'robotInfoSrv-response"
  "assignment_2_2023/robotInfoSrvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<robotInfoSrv-response>)))
  "Returns md5sum for a message object of type '<robotInfoSrv-response>"
  "864975fef3d37f98fc7bae31c8fe41ea")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'robotInfoSrv-response)))
  "Returns md5sum for a message object of type 'robotInfoSrv-response"
  "864975fef3d37f98fc7bae31c8fe41ea")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<robotInfoSrv-response>)))
  "Returns full string definition for message of type '<robotInfoSrv-response>"
  (cl:format cl:nil "float64 distance~%float64 vel_x~%float64 vel_z~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'robotInfoSrv-response)))
  "Returns full string definition for message of type 'robotInfoSrv-response"
  (cl:format cl:nil "float64 distance~%float64 vel_x~%float64 vel_z~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <robotInfoSrv-response>))
  (cl:+ 0
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <robotInfoSrv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'robotInfoSrv-response
    (cl:cons ':distance (distance msg))
    (cl:cons ':vel_x (vel_x msg))
    (cl:cons ':vel_z (vel_z msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'robotInfoSrv)))
  'robotInfoSrv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'robotInfoSrv)))
  'robotInfoSrv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'robotInfoSrv)))
  "Returns string type for a service object of type '<robotInfoSrv>"
  "assignment_2_2023/robotInfoSrv")