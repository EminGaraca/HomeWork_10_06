public class Calculator {
 public Integer addition(Integer x, Integer y)
    {
       return x + y;
    }
    public Integer subtraction(Integer x, Integer y)
    {
        if (x<y) {
            return y - x;
        } else {
            return x - y;
        }
    }
    public Integer multiplication(Integer x, Integer y)
    {    
       return x * y;
    }
    public Integer division(Integer x, Integer y)
    {
       return x / y;
    }
}