(defpackage #:cl-chipmunk-bindings
  (:use :cl :cffi))

(defpackage #:cl-chipmunk
  (:use :cl :cl-chipmunk-bindings)
  (:nicknames :chipmunk :chip))