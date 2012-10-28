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
    print e
    print

print "Done."

"""
CreateTables.py

(1050, "Table 'dept' already exists")

Done.
"""
