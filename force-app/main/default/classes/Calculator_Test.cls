@isTest public class Calculator_Test {

    @isTest static void shouldAddition(){
        //Arange
        Calculator calculator = new Calculator();
        //Act
       Integer result = calculator.addition(5, 4);
        //Assert
        System.assertEquals(9, result);
    }
     @isTest static void shouldSubtraction(){
        //Arange
        Calculator calculator = new Calculator();
        //Act
       Integer result = calculator.subtraction(4, 5);
        //Assert
        System.assertEquals(1, result);
    }
    @isTest static void shouldMultiplication(){
        //Arange
        Calculator calculator = new Calculator();
        //Act
       Integer result = calculator.multiplication(4, 5);
        //Assert
        System.assertEquals(20, result);
    }
    @isTest static void shouldDivision(){
        //Arange
        Calculator calculator = new Calculator();
        //Act
       Integer result = calculator.division(4, 5);
        //Assert
        System.assertEquals(0, result);
    }
}