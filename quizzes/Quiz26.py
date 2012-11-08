#!/usr/bin/env python

"""
CS373: Quiz #25 (5 pts)
"""

""" ----------------------------------------------------------------------
1. What is the output of the following?
   (4 pts) 21 / 63

True
True
"""

a = ([2, 3], [4, 5])
b = a
a += a
print a[0] is a[2]
print a[0] is b[0]
