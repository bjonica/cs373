#!/usr/bin/env python

print "Test.py"

""" ----------------------------------------------------------------------
3. What is the output of the following program?
   (2 pts)

[2, 3, {'a': 4}]
"""

def f (x, y, **z) :
    return [x, y, z]

d = {"z" : 4, "y" : 3}
print f(2, **d)

print "Done."
