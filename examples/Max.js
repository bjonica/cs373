// ------
// Max.js
// ------

// run-time polymorphism

function assert (b) {
    if (!b) {
        throw "Assertion Error"}}

print("Max.js\n");

function A (i) {
    this.i  = i;
    this.lt = function (that) {return this.i < that.i;}}

function my_max (x, y, bf) {
    if ((typeof(x.lt) == 'undefined') && (typeof(bf) == 'undefined')) {
        if (x < y)
            return y;
        return x;}
    else if (typeof(bf) == 'undefined') {
        if (x.lt(y))
            return y;
        return x;}
    else if (bf(x, y))
        return y;
    else
        return x;}

assert(my_max(2,   3)   == 3);
assert(my_max(2.3, 4)   == 4);
assert(my_max(2,   3.4) == 3.4);
assert(my_max(2.3, 4.5) == 4.5);

assert(Math.max(2,   3)   == 3);
assert(Math.max(2.3, 4)   == 4);
assert(Math.max(2,   3.4) == 3.4);
assert(Math.max(2.3, 4.5) == 4.5);

x = new A(2);
y = new A(3);
assert(my_max(x, y)                                    == y);
assert(my_max(x, y, function (a, b) {return b.lt(a);}) == x);

print("Done.\n");
