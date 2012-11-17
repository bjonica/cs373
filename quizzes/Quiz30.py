#!/usr/bin/env python

"""
CS373: Quiz #30 (5 pts)
"""

""" ----------------------------------------------------------------------
1. What is the output of the following program?
   (4 pts)

.A.
True
.B.
my_range()
2
.C.
3
"""

def my_range (b, e) :
    print "my_range()"
    while b != e :
        yield b
        b += 1

p = my_range(2, 5)

print ".A."

q = iter(p)
print p is q

print ".B."

v = p.next()
print v

print ".C."

v = p.next()
print v
