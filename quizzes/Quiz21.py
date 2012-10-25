#!/usr/bin/env python

"""
CS373: Quiz #21 (5 pts)
"""

""" ----------------------------------------------------------------------
1. Distinguish incomplete vs. complete specialization.
   [UML Design: Subclasses]
   (2 pts)

some vs. all of the individuals of the parent class have unique attributes
Example: teaching assistant, research assistant: incomplete
Example: city lot, county lot: complete
"""

""" ----------------------------------------------------------------------
2. What is the output of the following?
   (2 pts)

[[2, 3, 4, 4], [2, 3, 4, 4]]
[[2, 3, 4, 4], [2, 3, 4, 4]]
"""

a = [2, 3]
b = [a] + [a]
for v in b :
    v += [4]
print b

a = [2, 3]
b = 2 * [a]
for v in b :
    v += [4]
print b
