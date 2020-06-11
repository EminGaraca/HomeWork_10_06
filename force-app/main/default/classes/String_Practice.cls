public class String_Practice {

    public String fizzBuzzGame(Integer inputNumber ) {
        if (Math.mod(inputNumber, 3)==0 && Math.mod(inputNumber, 5)==0) {
            return 'fizzbuzz';
        }   
        if (Math.mod(inputNumber, 5)==0) {
            return 'fizz';
        }
        if (Math.mod(inputNumber, 3)==0) {
            return 'buzz';
        } 
            
         return null;    
    }
    public Integer romanToDecimal(String inputLetter) {
        if (inputLetter == 'I') {
            return 1;
        }
        if (inputLetter == 'V') {
            return 5;
        }
        if (inputLetter == 'X') {
            return 10;
        }
        if (inputLetter == 'L') {
            return 50;
        }
        if (inputLetter == 'C') {
            return 100;
        }
        if (inputLetter == 'D') {
            return 500;
        }
        if (inputLetter == 'M') {
            return 1000;
        }
        return null;
    } 
    public List<Integer> digitThreeTwoOne(Integer inputNumber) {
        String inputString = String.valueOf(inputNumber);
        List<String> listOfStrings = new List<String>();
        List<Integer> listOfIntegers = new List<Integer>(); 
        
        if(inputString.length()==3) {
            
        listOfStrings = inputString.split('');
        
        for(String str : listOfStrings) {
            listOfIntegers.add(Integer.valueOf(str));
        }
        List<Integer> listOfRevInt = new List<Integer>();
        for(Integer i = listOfIntegers.size() - 1; i >= 0; i--){
        listOfRevInt.add(listOfIntegers[i]);
        }
        return listOfRevInt;
        } else {
            listOfIntegers.add(null);
            return listOfIntegers;
        }
        
        
    }
}