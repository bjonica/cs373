#!/usr/bin/env python

# -------------
# DropTables.py
# -------------

import Login
import Query

print "DropTables.py"

x = Login.login()

t = Query.query(x, "drop table if exists dept;")
assert t is None

print "Done."
