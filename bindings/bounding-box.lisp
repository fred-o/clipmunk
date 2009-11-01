(in-package :cl-chipmunk-bindings)

(defcstruct bounding-box
  "Axis-aligned bounding box."
  (left cp-float)
  (bottom cp-float)
  (right cp-float)
  (top cp-float))

(defcfun ("cpBBClampVect" bb-clamp-vect) vect
  (bounding-box bounding-box)
  (vector vect))

(defcfun ("cpBBWrapVect" bb-wrap-vect) vect
  (bounding-box bounding-box)
  (vector vect))