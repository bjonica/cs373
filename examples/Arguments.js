// ------------
// Arguments.js
// ------------

function assert (b) {
    if (!b) {
        throw "Assertion Error"}}

function equals (a, b) {
    return (!(a < b)) && (!(a > b))}

function f (j) {
    ++j}

function g (t) {
    t += "def"}

function h (b) {
    ++b[1]}

print("Arguments.js\n")

i = 2
f(i)
assert(i == 2)

s = "abc"
g(s)
assert(s == "abc")

a = [2, 3, 4]
h(a)
assert(a != [2, 4, 4])
assert(equals(a, [2, 4, 4]))

print("Done.\n")
