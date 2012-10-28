#!/usr/bin/env python

# ---------
# Insert.py
# ---------

import Login
import Query

print "Insert.py"

x = Login.login()

try :
    t = Query.query(
            x,
            """
            insert into dept values (10, "Research", "New York", 1500000)
            """)
    assert t is None
except Exception, e :
    print e
    assert str(type(e)) == "<class '_mysql_exceptions.OperationalError'>"
    assert type(e.args) is     tuple
    assert len(e.args)  is     2
    assert e.args       is not (1050, "Table 'dept' already exists")
    assert e.args       ==     (1050, "Table 'dept' already exists")
    print e.args[1]

print "Done."
