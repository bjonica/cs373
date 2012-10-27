#!/usr/bin/env python

"""
CS373: Quiz #22 (5 pts)
"""

""" ----------------------------------------------------------------------
1. For the relational algebra 'select' operator, what is the argument and
   what is the result?
   [SQL Technique: Queries]
   (1 pt)

a predicate, all tuples for which the predicate is true
"""

""" ----------------------------------------------------------------------
2. For the relational algebra 'project' operator, what is the argument and
   what is the result?
   [SQL Technique: Queries]
   (1 pt)

a subscheme, all tuples with only the attributes in the subscheme
"""

""" ----------------------------------------------------------------------
3. What is the output of the following function?
   (2 pts)

{True: 7.8, 'abc': 5.6}
"""

a = [True, "abc", 1, "def"]
b = [3.4, 5.6, 7.8]
print dict(zip(a, b))
