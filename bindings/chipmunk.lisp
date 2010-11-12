(in-package :cl-chipmunk-bindings)

(defconstant +infintity+ 1l+300)

(defcvar ("cpVersionString" +version-string+ :read-only t) :string)

(defcfun ("cpInitChipmunk" init-chipmunk) :void)

(defcfun ("cpMomentForCircle" moment-for-circle) cp-float
  "Calculate the moment of inertia for a circle. R1 and R2 are the
inner and outer diameters. A solid circle has an inner diameter offset
0."
  (m cp-float)
  (r1 cp-float)
  (r2 cp-float)
  (offset vect))

(defcfun ("cpMomentForSegment" moment-for-segment) cp-float
  "Calculate the moment of inertia for a line segment. Beveling radius
is not supported."
  (m cp-float)
  (a vect)
  (b vect))

(defcfun ("cpMomentForPoly" moment-for-poly) cp-float
  "Calculate the moment of inertia for a solid polygon shape."
  (m cp-float)
  (num-verts :int)
  (verts :pointer)
  (offset vect))

(defcfun ("cpMomentForBox" moment-for-box) cp-float
  "Calculate the moment of inertia for a solid box."
  (m cp-float)
  (width cp-float)
  (height cp-float))


