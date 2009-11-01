(in-package :cl-chipmunk-bindings)

(defctype body-velocity-function :pointer
  "Function used to integrate a body's velocity.")
(defctype body-position-function :pointer
  "Function used to integrate a body's position.")

(defcstruct body
  "A dynamic body.  Note that, excepting data, these values are not intended to be directly accessed."
  (velocity-function body-velocity-function)
  (position-function body-position-function)
  (mass cp-float)
  (mass-inverse cp-float)
  (moment cp-float)
  (moment-inverse cp-float)
  (position vect)
  (velocity vect)
  (force vect)
  (angle cp-float)
  (angular-velocity cp-float)
  (torque cp-float)
  (rotation vect)
  (data :pointer)
  (velocity-bias vect)
  (angular-velocity-bias cp-float))

(defcfun ("cpBodyAlloc" body-alloc) :pointer)
(defcfun ("cpBodyInit" body-init) :pointer
  (body :pointer)
  (mass cp-float)
  (moment cp-float))
(defcfun ("cpBodyNew" body-new) :pointer
  (mass cp-float)
  (moment cp-float))

(defcfun ("cpBodyDestroy" body-destroy) :void
  (body :pointer))
(defcfun ("cpBodyFree" body-free) :void
  (body :pointer))

(defcfun ("cpBodySetMass" body-set-mass) :void
  (body :pointer)
  (mass cp-float))
(defcfun ("cpBodySetMoment" body-set-moment) :void
  (body :pointer)
  (moment cp-float))
(defcfun ("cpBodySetAngle" body-set-angle) :void
  (body :pointer)
  (angle cp-float))

(defcfun ("cpBodySlew" body-slew) :void
  (body :pointer)
  (position vect)
  (dt cp-float))

(defcfun ("cpBodyUpdateVelocity" body-update-velocity) :void
  (body :pointer)
  (gravity vect)
  (damping cp-float)
  (dt cp-float))
(defcfun ("cpBodyUpdatePosition" body-update-position) :void
  (body :pointer)
  (dt cp-float))

(defcfun ("cpBodyResetForces" body-reset-forces) :void
  (body :pointer))
(defcfun ("cpBodyApplyForce" body-apply-force) :void
  (body :pointer)
  (f vect)
  (r vect))

(defcfun ("cpDampedSpring" damped-spring) :void
  (body-a :pointer)
  (body-b :pointer)
  (anchor-1 vect)
  (anchor-2 vect)
  (rlen cp-float)
  (constant cp-float)
  (damping cp-float)
  (dt cp-float))