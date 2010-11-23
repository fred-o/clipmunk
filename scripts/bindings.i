%module bindings

%feature("intern_function", "chipmunk-lispify");

%insert("lisphead") %{
(in-package :clipmunk.bindings)
%}

//  ignored 
%ignore "INFINITY";
%ignore "CP_HASH_COEF";

// ignored, because we supply our own definitions instead of the SWIG-generated ones
%ignore "cpMomentForCircle";
%ignore "cpMomentForSegment";
%ignore "cpMomentForPoly";

// ignored, because they are inline static, and not accessible through CFFI
%ignore "cpvzero";
%ignore "cpfmax";
%ignore "cpfmin";
%ignore "cpfabs";
%ignore "cpfclamp";
%ignore "cpflerp";
%ignore "cpflerpconst";
%ignore "cpArbiterGetShapes";
%ignore "cpArbiterGetBodies";
%ignore "cpArbiterIsFirstContact";
%ignore "cpArbiterGetNormal";
%ignore "cpArbiterGetPoint";
%ignore "cpBBNew";
%ignore "cpBBintersects";
%ignore "cpBBcontainsBB";
%ignore "cpBBcontainsVect";
%ignore "cpBBmerge";
%ignore "cpBBexpand";
%ignore "cpBodyIsSleeping";
%ignore "cpBodyIsRogue";
%ignore "cpBodySet##name";
%ignore "cpBodyLocal2World";
%ignore "cpBodyWorld2Local";
%ignore "cpBodyApplyImpulse";
%ignore "cpBodyKineticEnergy";
%ignore "cpPolyShapeValueOnAxis";
%ignore "cpPolyShapeContainsVert";
%ignore "cpPolyShapeContainsVertPartial";
%ignore "cpSegmentQueryHitPoint";
%ignore "cpSegmentQueryHitDist";
%ignore "cpv";
%ignore "cpveql";
%ignore "cpvadd";
%ignore "cpvneg";
%ignore "cpvsub";
%ignore "cpvmult";
%ignore "cpvdot";
%ignore "cpvcross";
%ignore "cpvperp";
%ignore "cpvrperp";
%ignore "cpvproject";
%ignore "cpvrotate";
%ignore "cpvunrotate";
%ignore "cpvlengthsq";
%ignore "cpvlerp";
%ignore "cpvnormalize";
%ignore "cpvnormalize_safe";
%ignore "cpvclamp";
%ignore "cpvlerpconst";
%ignore "cpvdist";
%ignore "cpvdistsq";
%ignore "cpvnear";
%ignore "cpvslerp";
%ignore "cpvslerpconst";
%ignore "cpvforangle";
%ignore "cpBBClampVect";
%ignore "cpBBWrapVect";
%ignore "cpBodyGetPos";
%ignore "cpBodyGetVel";
%ignore "cpBodyGetForce";
%ignore "cpBodyGetRot";
%ignore "cpCircleShapeGetOffset";
%ignore "cpSegmentShapeGetA";
%ignore "cpSegmentShapeGetB";
%ignore "cpSegmentShapeGetNormal";
%ignore "cpPolyShapeGetVert";
%ignore "cpContactsSumImpulses";
%ignore "cpContactsSumImpulsesWithFriction";
%ignore "cpArbiterTotalImpulse";
%ignore "cpArbiterTotalImpulseWithFriction";

%include "/usr/local/include/chipmunk/chipmunk.h"
%include "/usr/local/include/chipmunk/chipmunk_types.h"
%include "/usr/local/include/chipmunk/cpVect.h"
%include "/usr/local/include/chipmunk/cpBB.h"
%include "/usr/local/include/chipmunk/cpArray.h"
%include "/usr/local/include/chipmunk/cpHashSet.h"
%include "/usr/local/include/chipmunk/cpSpaceHash.h"

%include "/usr/local/include/chipmunk/cpBody.h"
%include "/usr/local/include/chipmunk/cpShape.h"
%include "/usr/local/include/chipmunk/cpPolyShape.h"

%include "/usr/local/include/chipmunk/cpArbiter.h"
%include "/usr/local/include/chipmunk/cpCollision.h"
	
%include "/usr/local/include/chipmunk/constraints/cpConstraint.h"

%include "/usr/local/include/chipmunk/cpSpace.h"
