(asdf:defsystem cl-chipmunk
  :depends-on (#:cffi)
  :components
  ((:file "packages")
   (:module "bindings"
            :components
            ((:file "library")))))