;; Auto-generated. Do not edit!


(when (boundp 'assignment_2_2023::Interface)
  (if (not (find-package "ASSIGNMENT_2_2023"))
    (make-package "ASSIGNMENT_2_2023"))
  (shadow 'Interface (find-package "ASSIGNMENT_2_2023")))
(unless (find-package "ASSIGNMENT_2_2023::INTERFACE")
  (make-package "ASSIGNMENT_2_2023::INTERFACE"))

(in-package "ROS")
;;//! \htmlinclude Interface.msg.html


(defclass assignment_2_2023::Interface
  :super ros::object
  :slots (_sel _x _y ))

(defmethod assignment_2_2023::Interface
  (:init
   (&key
    ((:sel __sel) 0)
    ((:x __x) 0)
    ((:y __y) 0)
    )
   (send-super :init)
   (setq _sel (round __sel))
   (setq _x (round __x))
   (setq _y (round __y))
   self)
  (:sel
   (&optional __sel)
   (if __sel (setq _sel __sel)) _sel)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:serialization-length
   ()
   (+
    ;; int32 _sel
    4
    ;; int32 _x
    4
    ;; int32 _y
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _sel
       (write-long _sel s)
     ;; int32 _x
       (write-long _x s)
     ;; int32 _y
       (write-long _y s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _sel
     (setq _sel (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _x
     (setq _x (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _y
     (setq _y (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get assignment_2_2023::Interface :md5sum-) "effc2b1bd3a9fb5891fcabf8243ca2e8")
(setf (get assignment_2_2023::Interface :datatype-) "assignment_2_2023/Interface")
(setf (get assignment_2_2023::Interface :definition-)
      "# Message used by the interface 

int32 sel
int32 x
int32 y

")



(provide :assignment_2_2023/Interface "effc2b1bd3a9fb5891fcabf8243ca2e8")


