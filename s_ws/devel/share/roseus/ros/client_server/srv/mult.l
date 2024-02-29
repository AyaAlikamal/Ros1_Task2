;; Auto-generated. Do not edit!


(when (boundp 'client_server::mult)
  (if (not (find-package "CLIENT_SERVER"))
    (make-package "CLIENT_SERVER"))
  (shadow 'mult (find-package "CLIENT_SERVER")))
(unless (find-package "CLIENT_SERVER::MULT")
  (make-package "CLIENT_SERVER::MULT"))
(unless (find-package "CLIENT_SERVER::MULTREQUEST")
  (make-package "CLIENT_SERVER::MULTREQUEST"))
(unless (find-package "CLIENT_SERVER::MULTRESPONSE")
  (make-package "CLIENT_SERVER::MULTRESPONSE"))

(in-package "ROS")





(defclass client_server::multRequest
  :super ros::object
  :slots (_characrer _b ))

(defmethod client_server::multRequest
  (:init
   (&key
    ((:characrer __characrer) "")
    ((:b __b) 0)
    )
   (send-super :init)
   (setq _characrer (string __characrer))
   (setq _b (round __b))
   self)
  (:characrer
   (&optional __characrer)
   (if __characrer (setq _characrer __characrer)) _characrer)
  (:b
   (&optional __b)
   (if __b (setq _b __b)) _b)
  (:serialization-length
   ()
   (+
    ;; string _characrer
    4 (length _characrer)
    ;; int32 _b
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _characrer
       (write-long (length _characrer) s) (princ _characrer s)
     ;; int32 _b
       (write-long _b s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _characrer
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _characrer (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _b
     (setq _b (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass client_server::multResponse
  :super ros::object
  :slots (_result ))

(defmethod client_server::multResponse
  (:init
   (&key
    ((:result __result) "")
    )
   (send-super :init)
   (setq _result (string __result))
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; string _result
    4 (length _result)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _result
       (write-long (length _result) s) (princ _result s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _result
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _result (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass client_server::mult
  :super ros::object
  :slots ())

(setf (get client_server::mult :md5sum-) "a4d7a3375e267d23d2adaffbe4b47831")
(setf (get client_server::mult :datatype-) "client_server/mult")
(setf (get client_server::mult :request) client_server::multRequest)
(setf (get client_server::mult :response) client_server::multResponse)

(defmethod client_server::multRequest
  (:response () (instance client_server::multResponse :init)))

(setf (get client_server::multRequest :md5sum-) "a4d7a3375e267d23d2adaffbe4b47831")
(setf (get client_server::multRequest :datatype-) "client_server/multRequest")
(setf (get client_server::multRequest :definition-)
      "string characrer
int32 b
---
string result

")

(setf (get client_server::multResponse :md5sum-) "a4d7a3375e267d23d2adaffbe4b47831")
(setf (get client_server::multResponse :datatype-) "client_server/multResponse")
(setf (get client_server::multResponse :definition-)
      "string characrer
int32 b
---
string result

")



(provide :client_server/mult "a4d7a3375e267d23d2adaffbe4b47831")


