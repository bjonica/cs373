#!/usr/bin/env python

# --------
# Login.py
# --------

import _mysql

def login () :
    c = _mysql.connect(
            host   = "z",
            user   = "downing",
            passwd = "<password>",
            db     = "downing_test")
    assert str(type(c)) == "<type '_mysql.connection'>"
    assert str(c)[0:30] == "<_mysql.connection open to 'z'"
    return c
