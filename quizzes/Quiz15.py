#!/usr/bin/env python

"""
CS373: Quiz #15 (5 pts)
"""

""" ----------------------------------------------------------------------
1. What is the output of the following?
   (2 pts)

True False
"""

a = (2, 3, 4)
b = a[:]
print a is b,
a += (5, 6)
print a is b

""" ----------------------------------------------------------------------
2. What is the output of the following?
   (2 pts)

2
"""

print reduce(lambda x, y : y - x, [2, 3, 4], 1)
