;; Auto-generated. Do not edit!


(when (boundp 'assignment_2_2023::robotInfoSrv)
  (if (not (find-package "ASSIGNMENT_2_2023"))
    (make-package "ASSIGNMENT_2_2023"))
  (shadow 'robotInfoSrv (find-package "ASSIGNMENT_2_2023")))
(unless (find-package "ASSIGNMENT_2_2023::ROBOTINFOSRV")
  (make-package "ASSIGNMENT_2_2023::ROBOTINFOSRV"))
(unless (find-package "ASSIGNMENT_2_2023::ROBOTINFOSRVREQUEST")
  (make-package "ASSIGNMENT_2_2023::ROBOTINFOSRVREQUEST"))
(unless (find-package "ASSIGNMENT_2_2023::ROBOTINFOSRVRESPONSE")
  (make-package "ASSIGNMENT_2_2023::ROBOTINFOSRVRESPONSE"))

(in-package "ROS")





(defclass assignment_2_2023::robotInfoSrvRequest
  :super ros::object
  :slots ())

(defmethod assignment_2_2023::robotInfoSrvRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass assignment_2_2023::robotInfoSrvResponse
  :super ros::object
  :slots (_distance _vel_x _vel_z ))

(defmethod assignment_2_2023::robotInfoSrvResponse
  (:init
   (&key
    ((:distance __distance) 0.0)
    ((:vel_x __vel_x) 0.0)
    ((:vel_z __vel_z) 0.0)
    )
   (send-super :init)
   (setq _distance (float __distance))
   (setq _vel_x (float __vel_x))
   (setq _vel_z (float __vel_z))
   self)
  (:distance
   (&optional __distance)
   (if __distance (setq _distance __distance)) _distance)
  (:vel_x
   (&optional __vel_x)
   (if __vel_x (setq _vel_x __vel_x)) _vel_x)
  (:vel_z
   (&optional __vel_z)
   (if __vel_z (setq _vel_z __vel_z)) _vel_z)
  (:serialization-length
   ()
   (+
    ;; float64 _distance
    8
    ;; float64 _vel_x
    8
    ;; float64 _vel_z
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _distance
       (sys::poke _distance (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _vel_x
       (sys::poke _vel_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _vel_z
       (sys::poke _vel_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _distance
     (setq _distance (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _vel_x
     (setq _vel_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _vel_z
     (setq _vel_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass assignment_2_2023::robotInfoSrv
  :super ros::object
  :slots ())

(setf (get assignment_2_2023::robotInfoSrv :md5sum-) "864975fef3d37f98fc7bae31c8fe41ea")
(setf (get assignment_2_2023::robotInfoSrv :datatype-) "assignment_2_2023/robotInfoSrv")
(setf (get assignment_2_2023::robotInfoSrv :request) assignment_2_2023::robotInfoSrvRequest)
(setf (get assignment_2_2023::robotInfoSrv :response) assignment_2_2023::robotInfoSrvResponse)

(defmethod assignment_2_2023::robotInfoSrvRequest
  (:response () (instance assignment_2_2023::robotInfoSrvResponse :init)))

(setf (get assignment_2_2023::robotInfoSrvRequest :md5sum-) "864975fef3d37f98fc7bae31c8fe41ea")
(setf (get assignment_2_2023::robotInfoSrvRequest :datatype-) "assignment_2_2023/robotInfoSrvRequest")
(setf (get assignment_2_2023::robotInfoSrvRequest :definition-)
      "---
float64 distance
float64 vel_x
float64 vel_z

")

(setf (get assignment_2_2023::robotInfoSrvResponse :md5sum-) "864975fef3d37f98fc7bae31c8fe41ea")
(setf (get assignment_2_2023::robotInfoSrvResponse :datatype-) "assignment_2_2023/robotInfoSrvResponse")
(setf (get assignment_2_2023::robotInfoSrvResponse :definition-)
      "---
float64 distance
float64 vel_x
float64 vel_z

")



(provide :assignment_2_2023/robotInfoSrv "864975fef3d37f98fc7bae31c8fe41ea")


