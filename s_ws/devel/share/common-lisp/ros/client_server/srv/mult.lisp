; Auto-generated. Do not edit!


(cl:in-package client_server-srv)


;//! \htmlinclude mult-request.msg.html

(cl:defclass <mult-request> (roslisp-msg-protocol:ros-message)
  ((characrer
    :reader characrer
    :initarg :characrer
    :type cl:string
    :initform "")
   (b
    :reader b
    :initarg :b
    :type cl:integer
    :initform 0))
)

(cl:defclass mult-request (<mult-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <mult-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'mult-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name client_server-srv:<mult-request> is deprecated: use client_server-srv:mult-request instead.")))

(cl:ensure-generic-function 'characrer-val :lambda-list '(m))
(cl:defmethod characrer-val ((m <mult-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader client_server-srv:characrer-val is deprecated.  Use client_server-srv:characrer instead.")
  (characrer m))

(cl:ensure-generic-function 'b-val :lambda-list '(m))
(cl:defmethod b-val ((m <mult-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader client_server-srv:b-val is deprecated.  Use client_server-srv:b instead.")
  (b m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <mult-request>) ostream)
  "Serializes a message object of type '<mult-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'characrer))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'characrer))
  (cl:let* ((signed (cl:slot-value msg 'b)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <mult-request>) istream)
  "Deserializes a message object of type '<mult-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'characrer) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'characrer) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'b) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<mult-request>)))
  "Returns string type for a service object of type '<mult-request>"
  "client_server/multRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'mult-request)))
  "Returns string type for a service object of type 'mult-request"
  "client_server/multRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<mult-request>)))
  "Returns md5sum for a message object of type '<mult-request>"
  "a4d7a3375e267d23d2adaffbe4b47831")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'mult-request)))
  "Returns md5sum for a message object of type 'mult-request"
  "a4d7a3375e267d23d2adaffbe4b47831")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<mult-request>)))
  "Returns full string definition for message of type '<mult-request>"
  (cl:format cl:nil "string characrer~%int32 b~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'mult-request)))
  "Returns full string definition for message of type 'mult-request"
  (cl:format cl:nil "string characrer~%int32 b~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <mult-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'characrer))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <mult-request>))
  "Converts a ROS message object to a list"
  (cl:list 'mult-request
    (cl:cons ':characrer (characrer msg))
    (cl:cons ':b (b msg))
))
;//! \htmlinclude mult-response.msg.html

(cl:defclass <mult-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:string
    :initform ""))
)

(cl:defclass mult-response (<mult-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <mult-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'mult-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name client_server-srv:<mult-response> is deprecated: use client_server-srv:mult-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <mult-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader client_server-srv:result-val is deprecated.  Use client_server-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <mult-response>) ostream)
  "Serializes a message object of type '<mult-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'result))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'result))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <mult-response>) istream)
  "Deserializes a message object of type '<mult-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'result) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<mult-response>)))
  "Returns string type for a service object of type '<mult-response>"
  "client_server/multResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'mult-response)))
  "Returns string type for a service object of type 'mult-response"
  "client_server/multResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<mult-response>)))
  "Returns md5sum for a message object of type '<mult-response>"
  "a4d7a3375e267d23d2adaffbe4b47831")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'mult-response)))
  "Returns md5sum for a message object of type 'mult-response"
  "a4d7a3375e267d23d2adaffbe4b47831")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<mult-response>)))
  "Returns full string definition for message of type '<mult-response>"
  (cl:format cl:nil "string result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'mult-response)))
  "Returns full string definition for message of type 'mult-response"
  (cl:format cl:nil "string result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <mult-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'result))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <mult-response>))
  "Converts a ROS message object to a list"
  (cl:list 'mult-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'mult)))
  'mult-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'mult)))
  'mult-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'mult)))
  "Returns string type for a service object of type '<mult>"
  "client_server/mult")