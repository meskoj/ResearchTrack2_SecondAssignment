
(cl:in-package :asdf)

(defsystem "assignment_2_2023-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "GetCoordinates" :depends-on ("_package_GetCoordinates"))
    (:file "_package_GetCoordinates" :depends-on ("_package"))
    (:file "robotInfoSrv" :depends-on ("_package_robotInfoSrv"))
    (:file "_package_robotInfoSrv" :depends-on ("_package"))
  ))