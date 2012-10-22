#!/usr/bin/env python

# ------
# Max.py
# ------

# run-time polymorphism

class A (object) :
    def __init__ (self, i) :
        self.i = i

    def __lt__ (self, other) :
        return self.i < other.i

class B (A) :
    pass

def my_max (x, y, *bf) :
    if (bf is ()) :
        if x < y :
            return y
        return x
    elif bf[0](x, y) :
        return y
    else :
        return x

print "Max.py"

assert hasattr(int,   "__lt__")
assert hasattr(float, "__lt__")
assert hasattr(str,   "__lt__")
assert hasattr(A,     "__lt__")
assert hasattr(B,     "__lt__")

assert my_max(2,   3)   == 3
assert my_max(2.3, 4)   == 4
assert my_max(2,   4.5) == 4.5
assert my_max(2.3, 4.5) == 4.5

assert my_max("abc", "def") == "def"

x = A(2)
y = A(3)
assert my_max(x, y)                      is y
assert my_max(x, y, lambda a, b : b < a) is x
assert    max(x, y)                      is y

x = B(2)
y = B(3)
assert my_max(x, y)                      is y
assert my_max(x, y, lambda a, b : b < a) is x
assert    max(x, y)                      is y

print "Done."
