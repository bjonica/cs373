#!/usr/bin/env python

# ------------
# Databases.py
# ------------

import Login
import Query

print "Databases.py"
print

c = Login.login()

t = Query.query(c, "show databases")
print t
print

print "Done."

"""
Databases.py

(('information_schema',),
 ('downing',),
 ('downing_cs327e',),
 ('downing_cs370',),
 ('downing_cs371p',),
 ('downing_cs373',),
 ('downing_cs378',),
 ('downing_dml',),
 ('downing_test',),
 ('drupal_dml',))

Done.
"""
