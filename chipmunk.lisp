(defpackage #:clipmunk
  (:use :cl :cffi))

(defpackage #:clipmunk.bindings
  (:use :cl :cffi))

(defpackage #:clipmunk.accessors
  (:use :cl :cffi :clipmunk.bindings))

(in-package :clipmunk)

(define-foreign-library chipmunk
  (:unix (:or "libchipmunk.so.5.1" "libchipmunk.so" "libchipmunk.dylib"))
  (t (:default "chipmunk")))

(use-foreign-library chipmunk)

