// ---------------
// Reflection.java
// ---------------

interface I {
    String f ();}

final class A implements I {
    public String f () {
        return "A.f()";}}

final class B implements I {
    public String f () {
        return "B.f()";}}

final class C {
    private C ()
        {}}

final class D {
    public D (int i)
        {}}

abstract class E
    {}

final class Reflection {
    public static void main (String[] args) {
        System.out.println("Reflection.java");

        try {
            assert ((I) A.class.newInstance()).f() == "A.f()";
            assert ((I) B.class.newInstance()).f() == "B.f()";}
        catch (IllegalAccessException e) {
            assert false;}
        catch (InstantiationException e) {
            assert false;}

        try {
            assert ((I) new A().getClass().newInstance()).f() == "A.f()";
            assert ((I) new B().getClass().newInstance()).f() == "B.f()";}
        catch (IllegalAccessException e) {
            assert false;}
        catch (InstantiationException e) {
            assert false;}

        try {
            assert ((I) Class.forName("A").newInstance()).f() == "A.f()";
            assert ((I) Class.forName("B").newInstance()).f() == "B.f()";}
        catch (ClassNotFoundException e) {
            assert false;}
        catch (IllegalAccessException e) {
            assert false;}
        catch (InstantiationException e) {
            assert false;}

        try {
            Class.forName("C").newInstance();}
        catch (ClassNotFoundException e) {
            assert false;}
        catch (IllegalAccessException e) {
            assert e.toString().equals("java.lang.IllegalAccessException: Class Reflection can not access a member of class C with modifiers \"private\"");}
        catch (InstantiationException e) {
            assert false;}

        try {
            Class.forName("D").newInstance();}
        catch (ClassNotFoundException e) {
            assert false;}
        catch (IllegalAccessException e) {
            assert false;}
        catch (InstantiationException e) {
            assert e.toString().equals("java.lang.InstantiationException: D");}

        try {
            Class.forName("E").newInstance();}
        catch (ClassNotFoundException e) {
            assert false;}
        catch (IllegalAccessException e) {
            assert false;}
        catch (InstantiationException e) {
            assert e.toString() == "java.lang.InstantiationException";}

        try {
            Class.forName("I").newInstance();}
        catch (ClassNotFoundException e) {
            assert false;}
        catch (IllegalAccessException e) {
            assert false;}
        catch (InstantiationException e) {
            assert e.toString().equals("java.lang.InstantiationException: I");}

        try {
            assert ((I) Class.forName("F").newInstance()).f() == "F.f()";
            assert false;}
        catch (ClassNotFoundException e) {
            assert e.toString().equals("java.lang.ClassNotFoundException: F");}
        catch (IllegalAccessException e) {
            assert false;}
        catch (InstantiationException e) {
            assert false;}

        System.out.println("Done.");}}
