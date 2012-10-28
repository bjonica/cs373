#!/usr/bin/env python

# ------------
# Databases.py
# ------------

import Login
import Query

print "Databases.py"

x = Login.login()

t = Query.query(x, "show databases")
assert type(t)    is tuple
assert len(t)     == 9
assert type(t[0]) is tuple
assert len(t[0])  == 1

assert t[0][0] == "information_schema"
assert t[1][0] == "downing"
assert t[2][0] == "downing_cs327e"
assert t[3][0] == "downing_cs371p"
assert t[4][0] == "downing_cs373"
assert t[5][0] == "downing_cs378"
assert t[6][0] == "downing_dml"
assert t[7][0] == "downing_test"
assert t[8][0] == "drupal_dml"

print "Done."
