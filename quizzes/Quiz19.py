#!/usr/bin/env python

"""
CS373: Quiz #19 (5 pts)
"""

""" ----------------------------------------------------------------------
1. What kind of table is needed to represent a many-to-many association?
   [UML Design: Many-to-many]
   (1 pt)

join or junction table
"""

""" ----------------------------------------------------------------------
2. What is a subkey?
   [UML Design: Subkeys]
   (1 pt)

set of attributes that are a super key for some of the other attributes in
the relation, but not a super key for the entire relation
zipCode is a subkey of the Contacts table.
It is not a super key for the entire table,
but it functionally determines the city and state.
"""

""" ----------------------------------------------------------------------
3. What is the output of the following program?
   (2 pts)

[2, 3, {'a': 4}]
"""

def f (x, y, **z) :
    return [x, y, z]

d = {"a" : 4, "y" : 3}
print f(2, **d)
