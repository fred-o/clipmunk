(defpackage #:cl-chipmunk
  (:use :cl :cffi))

(in-package :cl-chipmunk)

(define-foreign-library chipmunk
  (:unix (:or "libchipmunk.so.5.1" "libchipmunk.so" "libchipmunk.dylib"))
  (t (:default "chipmunk")))

(use-foreign-library chipmunk)

