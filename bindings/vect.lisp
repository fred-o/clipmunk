(in-package :cl-chipmunk-bindings)

(defcstruct vect
  "Simple two-dimensional vector"
  (x cp-float)
  (y cp-float))

(defcfun ("cpvlength" vect-length) cp-float
  (vector vect))
(defcfun ("cpvlengthsq" vect-length-sq) cp-float
  (vector vect))
(defcfun ("cpvnormalize" vect-normalize) vect
  (vector vect))
(defcfun ("cpvforangle" angle->vect) vect
  (angle cp-float))
(defcfun ("cpvtoangle" vect->angle) cp-float
  (vector vect))