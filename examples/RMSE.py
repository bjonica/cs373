#!/usr/bin/env python

# -------
# RMSE.py
# -------

import math
import sys
import time

def rmse1 (a, p) :
    """
    O(1) in space
    O(n) in time
    """
    s = len(a)
    i = 0
    v = 0.0
    while i != s :
        v += (a[i] - p[i]) ** 2
        i += 1
    return math.sqrt(v / s)

def rmse2 (a, p) :
    """
    O(1) in space
    O(n) in time
    """
    s = len(a)
    i = 0
    v = 0.0
    for i in xrange(s) :
        v += (a[i] - p[i]) ** 2
    return math.sqrt(v / s)

def rmse3 (a, p) :
    """
    O(1n) in space
    O(2n) in time
    """
    s = len(a)
    z = zip(a, p)
    v = 0.0
    for x, y in z :
        v += (x - y) ** 2
    return math.sqrt(v / s)

def rmse4 (a, p) :
    """
    O(1n) in space
    O(2n) in time
    """
    s = len(a)
    z = zip(a, p)
    v = reduce(lambda w, (x, y) : w + (x - y) ** 2, z, 0.0)
    return math.sqrt(v / s)

def rmse5 (a, p) :
    """
    O(2n) in space
    O(3n) in time
    """
    s = len(a)
    z = zip(a, p)
    v = sum(map(lambda (x, y) : (x - y) ** 2, z), 0.0)
    return math.sqrt(v / s)

def rmse6 (a, p) :
    """
    O(1n) in space
    O(2n) in time
    """
    s = len(a)
    z = zip(a, p)
    v = sum([(x - y) ** 2 for x, y in z], 0.0)
    return math.sqrt(v / s)

def rmse7 (a, p) :
    """
    O(1n) in space
    O(2n) in time
    """
    s = len(a)
    v = sum(map(lambda x, y : (x - y) ** 2, a, p), 0.0)
    return math.sqrt(v / s)

def test (f, s) :
    print f.__name__ + " (" + s + ")"
    assert str(f((2, 3, 4), (2, 3, 4))) == "0.0"
    assert str(f((2, 3, 4), (3, 4, 5))) == "1.0"
    assert str(f((2, 3, 4), (4, 3, 2))) == "1.63299316186"
    a = 1000000 * [1]
    p = 1000000 * [5]
    s = time.clock()
    assert str(f(a, p)) == "4.0"
    t = time.clock()
    print (t - s) * 1000, "milliseconds"
    print

print "RMSE.py"
print sys.version
print

test(rmse1, "while")
test(rmse2, "xrange, for")
test(rmse3, "zip, for")
test(rmse4, "zip, reduce")
test(rmse5, "zip, map, sum")
test(rmse6, "zip, list comprehension, sum")
test(rmse7, "map, sum")

print "Done."

"""
RMSE.py
2.7.2 (default, Jun 20 2012, 16:23:33)
[GCC 4.2.1 Compatible Apple Clang 4.0 (tags/Apple/clang-418.0.60)]

rmse1 (while)
255.425 milliseconds

rmse2 (xrange, for)
212.638 milliseconds

rmse3 (zip, for)
454.595 milliseconds

rmse4 (zip, reduce)
520.952 milliseconds

rmse5 (zip, map, sum)
491.466 milliseconds

rmse6 (zip, list comprehension, sum)
394.235 milliseconds

rmse7 (map, sum)
239.551 milliseconds

Done.
"""
