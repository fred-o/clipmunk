(in-package :cl-chipmunk-bindings)

(defmacro with-cpv ((name x y) &body body)
  `(with-foreign-object (,name 'vect)
     (with-foreign-slots ((x y) ,name vect)
       (setf x ,x y ,y)
       ,@body)))

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