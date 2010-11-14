#!/bin/sh

swig -cffi -module bindings -noswig-lisp -o bindings.lisp scripts/bindings.i 

sed -i -e "s/(\(\w*\) #.(chipmunk-lispify \"cpVect\" 'classname)/(\1-x :double) (\1-y :double/" bindings.lisp 
sed -i -e "s/(#.(chipmunk-lispify \"\(\w*\)\" 'slotname) #.(chipmunk-lispify \"cpVect\" 'classname)/(\1-x :double) (\1-y :double/" bindings.lisp 



