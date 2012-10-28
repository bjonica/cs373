#!/usr/bin/env python

# --------
# Query.py
# --------

def query (c, s) :
    c.query(s)
    r = c.use_result()
    if r is None :
        return None
    assert str(type(r)) == "<type '_mysql.result'>"
    assert str(r)[0:21] == "<_mysql.result object"
    t = r.fetch_row(maxrows = 0)
    assert type(t) is tuple
    return t
