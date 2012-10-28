#!/usr/bin/env python

# ---------------
# CreateTables.py
# ---------------

import Login
import Query

print "CreateTables.py"
print

c = Login.login()

t = Query.query(c, "drop table if exists dept;")
assert t is None

try :
    t = Query.query(
            c,
            """
            create table dept (
                    department  int,
                    name        text,
                    location    text,
                    budget      int,
                    primary key (department))
                engine = innodb;
            """)
    assert t is None
except Exception, e :
    assert False

t = Query.query(c, "show tables")
print "1."
print t
print

try :
    t = Query.query(
            c,
            """
            create table dept (
                    department  int,
                    name        text,
                    location    text,
                    budget      int,
                    primary key (department))
                engine = innodb;
            """)
    assert False
except Exception, e :
    print "2."
    print e
    print

print "Done."

"""
CreateTables.py

1.
(('dept',),)

2.
(1050, "Table 'dept' already exists")

Done.
"""
