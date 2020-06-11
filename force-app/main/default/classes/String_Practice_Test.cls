@isTest public class String_Practice_Test {
    
    @isTest static void shouldReturnFizzBuzzWhenInputNumberDivisibleBy5And3() {
        //Arrange
        String_Practice practice = new String_Practice();
        String resultExc='fizzbuzz';
        //Act
        String actual=practice.fizzBuzzGame(15);
        //Assert
        System.assertEquals(resultExc, actual);
    }

    @isTest static void shouldReturnFizzWhenInputNumberDivisibleBy5() {
        //Arrange
        String_Practice practice = new String_Practice();
        String resultExc='fizz';
        //Act
        
        String actual=practice.fizzBuzzGame(50);
        //Assert
        System.assertEquals(resultExc, actual);
    }
    @isTest static void shouldReturnBuzzWhenInputNumberDivisibleBy3() {
         //Arrange
        String_Practice practice = new String_Practice();
        String resultExc='buzz';
        //Act
        String actual=practice.fizzBuzzGame(9);
        //Assert
        System.assertEquals(resultExc, actual);
    }
    
    @isTest static void shouldReturnNullWhenInputNumberNotDivisibleBy5Or3() {
        //Arrange
        String_Practice practice = new String_Practice();
        String resultExc=null;
        //Act
        String actual=practice.fizzBuzzGame(7);
        //Assert
        System.assertEquals(resultExc, actual);
    }
    @isTest static void ShouldReturn1WhenInputLetterEqualsI() {
       //Arrange
        String_Practice practice = new String_Practice();
        Integer resultExc= 1;
        //Act
        
        Integer actual=practice.romanToDecimal('I');
        //Assert
        System.assertEquals(resultExc, actual); 
    }
    @isTest static void ShouldReturn5WhenInputLetterEqualsV() {
       //Arrange
        String_Practice practice = new String_Practice();
        Integer resultExc= 5;
        //Act
        
        Integer actual=practice.romanToDecimal('V');
        //Assert
        System.assertEquals(resultExc, actual); 
    }
    @isTest static void ShouldReturn10WhenInputLetterEqualsX() {
       //Arrange
        String_Practice practice = new String_Practice();
        Integer resultExc= 10;
        //Act
        
        Integer actual=practice.romanToDecimal('X');
        //Assert
        System.assertEquals(resultExc, actual); 
    }
    @isTest static void ShouldReturn50WhenInputLetterEqualsL() {
       //Arrange
        String_Practice practice = new String_Practice();
        Integer resultExc= 50;
        //Act
        
        Integer actual=practice.romanToDecimal('L');
        //Assert
        System.assertEquals(resultExc, actual); 
    }
    @isTest static void ShouldReturn100WhenInputLetterEqualsC() {
        //Arrange
        String_Practice practice = new String_Practice();
        Integer resultExc= 100;
        //Act
        
        Integer actual=practice.romanToDecimal('C');
        //Assert
        System.assertEquals(resultExc, actual);
    }
    @isTest static void ShouldReturn500WhenInputLetterEqualsD() {
        //Arrange
        String_Practice practice = new String_Practice();
        Integer resultExc= 500;
        //Act
        
        Integer actual=practice.romanToDecimal('D');
        //Assert
        System.assertEquals(resultExc, actual);
    }
    @isTest static void ShouldReturn1000WhenInputLetterEqualsM() {
        //Arrange
        String_Practice practice = new String_Practice();
        Integer resultExc= 1000;
        //Act
        
        Integer actual=practice.romanToDecimal('M');
        //Assert
        System.assertEquals(resultExc, actual);
    }
    @isTest static void ShouldReturnNullWhenElse() {
       //Arrange
        String_Practice practice = new String_Practice();
        Integer resultExc= null;
        //Act
        
        Integer actual=practice.romanToDecimal('O');
        //Assert
        System.assertEquals(resultExc, actual);
    } 
    @isTest static void ShouldReturnFirstSecondAndThirdDigitOfANumberWhen3Digits() {
         //Arrange
        String_Practice practice = new String_Practice();
        List<Integer> whatWeEspectForResult = new List<Integer> {3,2,1};
        List<Integer> whatWeHaveForResult = new List<Integer>();
        //Act
        whatWeHaveForResult = practice.digitThreeTwoOne(123);
        
        //Assert
        System.assertEquals(whatWeEspectForResult, whatWeHaveForResult);
    }
    @isTest static void ShouldReturnNullWhenNumberNot3DigitNumber() {
        //Arrange
        String_Practice practice = new String_Practice();
        List<Integer> whatWeEspectForResult = new List<Integer>();
        whatWeEspectForResult.add(null);
        List<Integer> whatWeHaveForResult = new List<Integer>();
        //Act
        whatWeHaveForResult = practice.digitThreeTwoOne(12);
        
        //Assert
        System.assertEquals(whatWeEspectForResult, whatWeHaveForResult);
    }
}