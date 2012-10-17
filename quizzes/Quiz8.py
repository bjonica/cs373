#!/usr/bin/env python

"""
CS373: Quiz #8 (5 pts)
"""

""" ----------------------------------------------------------------------
1. What is the output of the following program?
   (4 pts)

m1 f1 f2 m2 m5 m6
m1 f1 m3 m5 m6
"""

class A (BaseException) : # extends BaseException
    pass

class B (A) :             # extends A
    pass

def f (b) :
    print "f1",
    if b :
        raise A()
    print "f2",

try :
    print "m1",
    f(False)
    print "m2",
except A :
    print "m3",
except B :
    print "m4",
finally :
    print "m5",
print "m6"

try :
    print "m1",
    f(True)
    print "m2",
except A :
    print "m3",
except B :
    print "m4",
finally :
    print "m5",
print "m6"
