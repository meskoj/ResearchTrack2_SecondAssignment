;; Auto-generated. Do not edit!


(when (boundp 'assignment_2_2023::interface)
  (if (not (find-package "ASSIGNMENT_2_2023"))
    (make-package "ASSIGNMENT_2_2023"))
  (shadow 'interface (find-package "ASSIGNMENT_2_2023")))
(unless (find-package "ASSIGNMENT_2_2023::INTERFACE")
  (make-package "ASSIGNMENT_2_2023::INTERFACE"))

(in-package "ROS")
;;//! \htmlinclude interface.msg.html


(defclass assignment_2_2023::interface
  :super ros::object
  :slots (_sel _x _y ))

(defmethod assignment_2_2023::interface
  (:init
   (&key
    ((:sel __sel) "")
    ((:x __x) 0)
    ((:y __y) 0)
    )
   (send-super :init)
   (setq _sel (string __sel))
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
    ;; string _sel
    4 (length _sel)
    ;; int32 _x
    4
    ;; int32 _y
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _sel
       (write-long (length _sel) s) (princ _sel s)
     ;; int32 _x
       (write-long _x s)
     ;; int32 _y
       (write-long _y s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _sel
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _sel (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _x
     (setq _x (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _y
     (setq _y (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get assignment_2_2023::interface :md5sum-) "892675a95328f24a296f6089f592b625")
(setf (get assignment_2_2023::interface :datatype-) "assignment_2_2023/interface")
(setf (get assignment_2_2023::interface :definition-)
      "# Message sent by the interface

string sel

int32 x
int32 y

")



(provide :assignment_2_2023/interface "892675a95328f24a296f6089f592b625")


