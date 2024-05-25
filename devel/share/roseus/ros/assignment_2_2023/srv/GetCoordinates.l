;; Auto-generated. Do not edit!


(when (boundp 'assignment_2_2023::GetCoordinates)
  (if (not (find-package "ASSIGNMENT_2_2023"))
    (make-package "ASSIGNMENT_2_2023"))
  (shadow 'GetCoordinates (find-package "ASSIGNMENT_2_2023")))
(unless (find-package "ASSIGNMENT_2_2023::GETCOORDINATES")
  (make-package "ASSIGNMENT_2_2023::GETCOORDINATES"))
(unless (find-package "ASSIGNMENT_2_2023::GETCOORDINATESREQUEST")
  (make-package "ASSIGNMENT_2_2023::GETCOORDINATESREQUEST"))
(unless (find-package "ASSIGNMENT_2_2023::GETCOORDINATESRESPONSE")
  (make-package "ASSIGNMENT_2_2023::GETCOORDINATESRESPONSE"))

(in-package "ROS")





(defclass assignment_2_2023::GetCoordinatesRequest
  :super ros::object
  :slots ())

(defmethod assignment_2_2023::GetCoordinatesRequest
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

(defclass assignment_2_2023::GetCoordinatesResponse
  :super ros::object
  :slots (_x _y ))

(defmethod assignment_2_2023::GetCoordinatesResponse
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:serialization-length
   ()
   (+
    ;; float64 _x
    8
    ;; float64 _y
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _x
       (sys::poke _x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y
       (sys::poke _y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _x
     (setq _x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y
     (setq _y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass assignment_2_2023::GetCoordinates
  :super ros::object
  :slots ())

(setf (get assignment_2_2023::GetCoordinates :md5sum-) "209f516d3eb691f0663e25cb750d67c1")
(setf (get assignment_2_2023::GetCoordinates :datatype-) "assignment_2_2023/GetCoordinates")
(setf (get assignment_2_2023::GetCoordinates :request) assignment_2_2023::GetCoordinatesRequest)
(setf (get assignment_2_2023::GetCoordinates :response) assignment_2_2023::GetCoordinatesResponse)

(defmethod assignment_2_2023::GetCoordinatesRequest
  (:response () (instance assignment_2_2023::GetCoordinatesResponse :init)))

(setf (get assignment_2_2023::GetCoordinatesRequest :md5sum-) "209f516d3eb691f0663e25cb750d67c1")
(setf (get assignment_2_2023::GetCoordinatesRequest :datatype-) "assignment_2_2023/GetCoordinatesRequest")
(setf (get assignment_2_2023::GetCoordinatesRequest :definition-)
      "---
float64 x
float64 y



")

(setf (get assignment_2_2023::GetCoordinatesResponse :md5sum-) "209f516d3eb691f0663e25cb750d67c1")
(setf (get assignment_2_2023::GetCoordinatesResponse :datatype-) "assignment_2_2023/GetCoordinatesResponse")
(setf (get assignment_2_2023::GetCoordinatesResponse :definition-)
      "---
float64 x
float64 y



")



(provide :assignment_2_2023/GetCoordinates "209f516d3eb691f0663e25cb750d67c1")


