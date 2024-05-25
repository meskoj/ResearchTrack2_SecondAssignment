; Auto-generated. Do not edit!


(cl:in-package assignment_2_2023-srv)


;//! \htmlinclude GetCoordinates-request.msg.html

(cl:defclass <GetCoordinates-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetCoordinates-request (<GetCoordinates-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetCoordinates-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetCoordinates-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name assignment_2_2023-srv:<GetCoordinates-request> is deprecated: use assignment_2_2023-srv:GetCoordinates-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetCoordinates-request>) ostream)
  "Serializes a message object of type '<GetCoordinates-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetCoordinates-request>) istream)
  "Deserializes a message object of type '<GetCoordinates-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetCoordinates-request>)))
  "Returns string type for a service object of type '<GetCoordinates-request>"
  "assignment_2_2023/GetCoordinatesRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetCoordinates-request)))
  "Returns string type for a service object of type 'GetCoordinates-request"
  "assignment_2_2023/GetCoordinatesRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetCoordinates-request>)))
  "Returns md5sum for a message object of type '<GetCoordinates-request>"
  "209f516d3eb691f0663e25cb750d67c1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetCoordinates-request)))
  "Returns md5sum for a message object of type 'GetCoordinates-request"
  "209f516d3eb691f0663e25cb750d67c1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetCoordinates-request>)))
  "Returns full string definition for message of type '<GetCoordinates-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetCoordinates-request)))
  "Returns full string definition for message of type 'GetCoordinates-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetCoordinates-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetCoordinates-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetCoordinates-request
))
;//! \htmlinclude GetCoordinates-response.msg.html

(cl:defclass <GetCoordinates-response> (roslisp-msg-protocol:ros-message)
  ((x
    :reader x
    :initarg :x
    :type cl:float
    :initform 0.0)
   (y
    :reader y
    :initarg :y
    :type cl:float
    :initform 0.0))
)

(cl:defclass GetCoordinates-response (<GetCoordinates-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetCoordinates-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetCoordinates-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name assignment_2_2023-srv:<GetCoordinates-response> is deprecated: use assignment_2_2023-srv:GetCoordinates-response instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <GetCoordinates-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader assignment_2_2023-srv:x-val is deprecated.  Use assignment_2_2023-srv:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <GetCoordinates-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader assignment_2_2023-srv:y-val is deprecated.  Use assignment_2_2023-srv:y instead.")
  (y m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetCoordinates-response>) ostream)
  "Serializes a message object of type '<GetCoordinates-response>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetCoordinates-response>) istream)
  "Deserializes a message object of type '<GetCoordinates-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetCoordinates-response>)))
  "Returns string type for a service object of type '<GetCoordinates-response>"
  "assignment_2_2023/GetCoordinatesResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetCoordinates-response)))
  "Returns string type for a service object of type 'GetCoordinates-response"
  "assignment_2_2023/GetCoordinatesResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetCoordinates-response>)))
  "Returns md5sum for a message object of type '<GetCoordinates-response>"
  "209f516d3eb691f0663e25cb750d67c1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetCoordinates-response)))
  "Returns md5sum for a message object of type 'GetCoordinates-response"
  "209f516d3eb691f0663e25cb750d67c1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetCoordinates-response>)))
  "Returns full string definition for message of type '<GetCoordinates-response>"
  (cl:format cl:nil "float64 x~%float64 y~%~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetCoordinates-response)))
  "Returns full string definition for message of type 'GetCoordinates-response"
  (cl:format cl:nil "float64 x~%float64 y~%~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetCoordinates-response>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetCoordinates-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetCoordinates-response
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetCoordinates)))
  'GetCoordinates-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetCoordinates)))
  'GetCoordinates-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetCoordinates)))
  "Returns string type for a service object of type '<GetCoordinates>"
  "assignment_2_2023/GetCoordinates")