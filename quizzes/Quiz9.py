#!/usr/bin/env python

"""
CS373: Quiz #9 (5 pts)
"""

""" ----------------------------------------------------------------------
1. In the paper, "A Bug and a Crash" about the Ariane 5, what was the
   software bug?
   (1 pt)

the conversion of a 64-bit number to a 16-bit number
"""

""" ----------------------------------------------------------------------
2. In the paper, "Mariner 1", what was the software bug?
   (1 pt)

the ommission of a hyphen
"""

""" ----------------------------------------------------------------------
3. What is the output of the following program?
   (2 pts)

m1 f1 f4 m3 m5 m6
"""

class A (BaseException) :
    pass

class B (A) :             # extends A
    pass

class X (BaseException) : # does NOT extend A
    pass

def f () :
    try :
        print "f1",
        raise B()
        print "f2",
    except X :
        print "f3",
    finally :
        print "f4",
    print "f5"

try :
    print "m1",
    f()
    print "m2",
except A :
    print "m3",
except B :
    print "m4",
finally :
    print "m5",
print "m6"
