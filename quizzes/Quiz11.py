#!/usr/bin/env python

"""
CS373: Quiz #11 (5 pts)
"""

""" ----------------------------------------------------------------------
1. What is the "moral" of the story in "Testing Improves Code"?
   [XP: Ch. 29, Pg. 201]
   (2 pts)

code that cannot be easily tested is not factored properly
"""

""" ----------------------------------------------------------------------
2. What is the output of the following program?
   (2 pts)

False
True
"""

a = [2, 3, 4]

i = iter(a)
j = iter(a)
k = iter(i)

print i is j
print i is k
