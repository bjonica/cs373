#!/usr/bin/env python

# -------------
# ShowTables.py
# -------------

import Login
import Query

print "ShowTables.py"

x = Login.login()

t = Query.query(x, "show tables;")
print t

t = Query.query(x, "show table status;")
print t

t = Query.query(x, "show columns from dept;")
print t

print "Done."
