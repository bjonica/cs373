#!/usr/bin/env python

print "Test.py"

a = 3 * [[]]
assert a[0] is a[1]

a = [[] for v in xrange(3)]
assert a[0] is not a[1]

print "Done."
