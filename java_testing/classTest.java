import java.math.BigDecimal;

public class classTest
{
    public static void main(String[] args) 
    {
        A a = new A();
        B b = new B();
        b.mA();
        b.mB();
        a.mA();
        a = new B();
        b = (B) a;
        

    }


public static class A
{
    public A()
    {

    }
    public void mA()
    {
        System.out.println("MA");
    }
}
public static class B extends A
{
    public B()
    {

    }
    public void mB()
    {
        System.out.println("MB");
    }
}
}