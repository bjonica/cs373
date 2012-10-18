#!/usr/bin/env python

"""
CS373: Quiz #18 (5 pts)
"""

""" ----------------------------------------------------------------------
1. What is the output of the following program?
   (2 pts)

True
True
"""

x = -6
y = -6
print x is y
x += 1
y += 1
print x is y

""" ----------------------------------------------------------------------
2. What is the output of the following program?
   (2 pts)

[6, 3, 8, 5]
[6, 7, 4, 5]
"""

def f (x = 2, y = 3, z = 4, t = 5) :
    return [x, y, z, t]

print f(6, z = 8)

a = (6, 7)
print f(*a)
