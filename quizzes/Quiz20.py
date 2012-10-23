#!/usr/bin/env python

"""
CS373: Quiz #20 (5 pts)
"""

""" ----------------------------------------------------------------------
1. Distinguish disjoint vs. overlapping specialization.
   [UML Design: Subclasses]
   (1 pt)

an individual of the parent class may be a member of one vs. many
subclasses
Example: teaching assistant, research assistant: disjoint
Example: city lot, county lot: overlapping
"""

""" ----------------------------------------------------------------------
2. What is the output of the following program?
   Be clear about newlines, if any.
   (3 pts)

b ab

ab
aab

b ab
"""

import re

s = "b ab\naab 123"

m = re.search("(a*)b([^a]*)(a*)b", s) # * is zero or more
print m.group(0)
print

m = re.search("(a+)b([^a]*)(a+)b", s) # + is one or more
print m.group(0)
print

m = re.search("(a?)b([^a]*)(a?)b", s) # ? is zero or one
print m.group(0)
