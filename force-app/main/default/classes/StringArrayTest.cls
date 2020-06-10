public class StringArrayTest {

    public StringArrayTest() {
        
    }
    
    public  static List<String> generateStringArray(Integer n) {
        List<String> listOfStrings = new List<String>();
        for(Integer i=0; i<n; i++) {
            listOfStrings.add('Test '+i);
            System.debug(listOfStrings[i]);
        }
        return listOfStrings;
    }
}