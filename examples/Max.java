// --------
// Max.java
// --------

// parametric run-time polymorphism

/*
package java.lang;

interface Comparable<T> {
    int compareTo (T that);}
*/

/*
package java.util;

interface Comparator<T> {
    int compare (T value1, T value2);} // const
*/

import java.io.Serializable;
import java.util.Comparator;

class A implements Comparable<A> {
    private int _i;

    public A (int i) {
        _i = i;}

    public int compareTo (A that) {
        return _i - that._i;}}

class B extends A {
    public B (int n) {
        super(n);}}

final class Max {
    private static <T extends Comparable<T>> T max1 (T x, T y) {
        if (x.compareTo(y) < 0)
            return y;
        return x;}

    private static <T> T max1 (T x, T y, Comparator<T> c) {
        if (c.compare(x, y) < 0)
            return y;
        return x;}

    private static <T extends Comparable<? super T>> T max2 (T x, T y) {
        if (x.compareTo(y) < 0)
            return y;
        return x;}

    private static <T> T max2 (T x, T y, Comparator<? super T> c) {
        if (c.compare(x, y) < 0)
            return y;
        return x;}

    public static void main (String[] args) {
        System.out.println("Max.java");

        assert Integer.class.getInterfaces() instanceof Class[];
        assert Integer.class.getInterfaces().length == 1;
        assert Integer.class.getInterfaces()[0]     == Comparable.class;

        assert String.class.getInterfaces() instanceof Class[];
        assert String.class.getInterfaces().length == 3;
        assert String.class.getInterfaces()[0]     == Serializable.class;
        assert String.class.getInterfaces()[1]     == Comparable.class;
        assert String.class.getInterfaces()[2]     == CharSequence.class;

        assert A.class.getInterfaces() instanceof Class[];
        assert A.class.getInterfaces().length == 1;
        assert A.class.getInterfaces()[0] == Comparable.class;

        assert B.class.getInterfaces() instanceof Class[];
        assert B.class.getInterfaces().length == 0;

        assert      max1(2, 3) == 3;
        assert      max2(2, 3) == 3;
        assert Math.max (2, 3) == 3;

        assert max1("abc", "def") == "def";
        assert max2("abc", "def") == "def";

        Comparator<A> c =
            new Comparator<A> () {
                public int compare (A x, A y) {
                    return y.compareTo(x);}};

        {
        A             x = new A(2);
        A             y = new A(3);
        assert max1(x, y)    == y;
        assert max1(x, y, c) == x;
        assert max2(x, y)    == y;
        assert max2(x, y, c) == x;
        }

        {
        B x = new B(2);
        B y = new B(3);
//      assert max1(x, y)    == y; // error: cannot find symbol
        assert max1(x, y, c) == x;
        assert max2(x, y)    == y;
        assert max2(x, y, c) == x;
        }

        {
        A x = new B(2);
        A y = new B(3);
        assert max1(x, y)    == y;
        assert max1(x, y, c) == x;
        assert max2(x, y)    == y;
        assert max2(x, y, c) == x;
        }

        System.out.println("Done.");}}
