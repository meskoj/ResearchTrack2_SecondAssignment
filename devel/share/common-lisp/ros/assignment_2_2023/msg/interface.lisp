; Auto-generated. Do not edit!


(cl:in-package assignment_2_2023-msg)


;//! \htmlinclude interface.msg.html

(cl:defclass <interface> (roslisp-msg-protocol:ros-message)
  ((sel
    :reader sel
    :initarg :sel
    :type cl:string
    :initform "")
   (x
    :reader x
    :initarg :x
    :type cl:integer
    :initform 0)
   (y
    :reader y
    :initarg :y
    :type cl:integer
    :initform 0))
)

(cl:defclass interface (<interface>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <interface>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'interface)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name assignment_2_2023-msg:<interface> is deprecated: use assignment_2_2023-msg:interface instead.")))

(cl:ensure-generic-function 'sel-val :lambda-list '(m))
(cl:defmethod sel-val ((m <interface>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader assignment_2_2023-msg:sel-val is deprecated.  Use assignment_2_2023-msg:sel instead.")
  (sel m))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <interface>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader assignment_2_2023-msg:x-val is deprecated.  Use assignment_2_2023-msg:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <interface>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader assignment_2_2023-msg:y-val is deprecated.  Use assignment_2_2023-msg:y instead.")
  (y m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <interface>) ostream)
  "Serializes a message object of type '<interface>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'sel))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'sel))
  (cl:let* ((signed (cl:slot-value msg 'x)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'y)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <interface>) istream)
  "Deserializes a message object of type '<interface>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'sel) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'sel) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'x) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'y) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<interface>)))
  "Returns string type for a message object of type '<interface>"
  "assignment_2_2023/interface")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'interface)))
  "Returns string type for a message object of type 'interface"
  "assignment_2_2023/interface")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<interface>)))
  "Returns md5sum for a message object of type '<interface>"
  "892675a95328f24a296f6089f592b625")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'interface)))
  "Returns md5sum for a message object of type 'interface"
  "892675a95328f24a296f6089f592b625")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<interface>)))
  "Returns full string definition for message of type '<interface>"
  (cl:format cl:nil "# Message sent by the interface~%~%string sel~%~%int32 x~%int32 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'interface)))
  "Returns full string definition for message of type 'interface"
  (cl:format cl:nil "# Message sent by the interface~%~%string sel~%~%int32 x~%int32 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <interface>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'sel))
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <interface>))
  "Converts a ROS message object to a list"
  (cl:list 'interface
    (cl:cons ':sel (sel msg))
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
))
