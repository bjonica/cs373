#!/usr/bin/env python

# ---------------
# CreateTables.py
# ---------------

import Login
import Query

print "CreateTables.py"

x = Login.login()

try :
    t = Query.query(
            x,
            """
            create table dept (
                    department  int,
                    name        text,
                    location    text,
                    budget      int)
                engine = innodb;
            """)
    assert t is None
except Exception, e :
    assert str(type(e)) == "<class '_mysql_exceptions.OperationalError'>"
    assert type(e.args) is     tuple
    assert len(e.args)  is     2
    assert e.args       is not (1050, "Table 'dept' already exists")
    assert e.args       ==     (1050, "Table 'dept' already exists")
    print e.args[1]

t = Query.query(x, "show tables")
assert type(t)    is tuple
assert len(t)     == 1
assert type(t[0]) is tuple
assert len(t[0])  == 1
assert t[0][0]    == "dept"

print "Done."
