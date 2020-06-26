public with sharing class Contact_Service_Add_Contact {

    @AuraEnabled
    public static String createContactByName(String fName, String lName) {
        Contact con = new Contact(FirstName = fName, LastName = lName );
        insert con;
        ID conId = con.Id;
        String identification = String.valueOf(conId);
        return String.valueOf(conId);
    }
}