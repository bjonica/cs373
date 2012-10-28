#!/usr/bin/env python

# -------------
# ShowTables.py
# -------------

import Login
import Query

print "ShowTables.py"
print

c = Login.login()

t = Query.query(c, "show tables;")
print "1."
print t
print

t = Query.query(c, "show table status;")
print "2."
print t
print

t = Query.query(c, "show columns from dept;")
print "3."
print t
print

print "Done."

"""
ShowTables.py

1.
(('dept',),)

2.
(('dept', 'InnoDB', '10', 'Compact', '0', '0', '16384', '0', '0', '11534336', None, '2012-10-28 15:06:50', None, None, 'latin1_swedish_ci', None, '', ''),)

3.
(('department', 'int(11)', 'YES', '', None, ''),
 ('name', 'text', 'YES', '', None, ''),
 ('location', 'text', 'YES', '', None, ''),
 ('budget', 'int(11)', 'YES', '', None, ''))

Done.
"""
