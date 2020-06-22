public with sharing class Contact_Service_Add_Contact {

    @AuraEnabled(cacheable=true)
    public static String createContactByName(String fName, String lName) {
        Contact con = new Contact(FirstName = fName, LastName = lName );
        insert con;
        ID conId = con.Id;
        return conId;
    }
}