#!/usr/bin/env python

"""
CS373: Quiz #32 (5 pts)
"""

""" ----------------------------------------------------------------------
1. What is the output of the following program?
   (4 pts)

A.A()  A.A()  False A.A()  A.f()
.A.
A.A()
.B.
True A.f()
.C.
.D.
True A.f()
.E.
"""

def Decorator (c) :
    x = c()
    return lambda : x

class A (object) :
    def __init__ (self) :
        print "A.A() ",

    def f (self) :
        print "A.f() ",

print A() is A(),
A().f()
print

print ".A."

A = Decorator(A)
print

print ".B."

print A() is A(),
A().f()
print

print ".C."

A = Decorator(A)

print ".D."

print A() is A(),
A().f()
print

print ".E."
