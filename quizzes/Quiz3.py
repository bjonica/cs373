#!/usr/bin/env python

"""
CS373: Quiz #3 (5 pts)
"""

""" ----------------------------------------------------------------------
1. What are the four elements of the Circle of Life?
   [XP: Ch.2, Pg. 16]
   (1 pt)

define, estimate, choose, build
"""

""" ----------------------------------------------------------------------
2. Which of the following practices demonstrates effective pair
   programming?
   [All I Really Needed to Know about Pair Programming I Learned in
    Kindergarten]
   (1 pt)

a. Each partner writing separate parts.
b. Each partner writing both parts and then submitting the best.
c. Each partner writing both parts and then submitting the best
   combination.
d. Sharing a monitor and keyboard while coding.
e. One partner writing the interface and tests, the other the
   implementation.

d.
"""

""" ----------------------------------------------------------------------
3. Given positive integers, b and e, let m = e / 2. If b <= m, then
   max_cycle_length(b, e) = max_cycle_length(m, e). True or False?
   [Collatz]
   (1 pt)

True

Consider b = 10, e = 100.
Then m = 50.
max_cycle_length(10, 100) = max_cycle_length(50, 100)
All the numbers between 10 and 50 can be mapped to numbers between 50 and
and 100 by one or more doublings, so none of those numbers could have a
larger cycle length.
"""

""" ----------------------------------------------------------------------
4. Describe the difference between a unit test and an acceptance test.
   (1 pt)

a unit test tests the return value and the side effects of an individual
function or method
an acceptance test tests the input output behavior of the whole program
"""
