#!/usr/bin/env python

"""
CS373: Quiz #6 (5 pts)
"""

""" ----------------------------------------------------------------------
1. In pair programming which of the partners should do most of the
   driving?
   [XP: Ch. 12, Pg. 90]
   (1 pt)

the one who is least sure of what's being done
"""

""" ----------------------------------------------------------------------
2. In Python, how do you test identity equality vs. content equality?
   (1 pt)

is vs. ==
"""

""" ----------------------------------------------------------------------
3. What is the output of the following program?
   (2 pts)

True
False
"""

a = [2, 3, 4]
b = a
b += [5]
print a == b

a = [2, 3, 4]
b = a[:]
b += [5]
print a == b
