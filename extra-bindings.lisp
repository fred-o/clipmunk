(in-package :clipmunk.bindings)

(cffi:defcfun ("cpMomentForCircle" #.(chipmunk-lispify "cpMomentForCircle" 'function)) :double
  (m :double)
  (r1 :double)
  (r2 :double)
  (offset-x :double) (offset-y :double))

(cffi:defcfun ("cpMomentForSegment" #.(chipmunk-lispify "cpMomentForSegment" 'function)) :double
  (m :double)
  (a-x :double) (a-y :double)
  (b-x :double) (b-y :double))

(cffi:defcfun ("cpMomentForPoly" #.(chipmunk-lispify "cpMomentForPoly" 'function)) :double
  (m :double)
  (numVerts :int)
  (verts :pointer)
  (offset-x :double) (offset-y :double))
