#!/usr/bin/env python

# ---------
# Select.py
# ---------

import Login
import Query

print "Select.py"

x = Login.login()

t = Query.query(x, "select * from dept;")
print t

print "Done."
