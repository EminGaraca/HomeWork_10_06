public with sharing class Contact_Selector {
    @AuraEnabled(cacheable=true)
        public static List<Contact> getContactList() {
            return [
                SELECT Id, FirstName, LastName, Email
                FROM Contact
                WITH SECURITY_ENFORCED
                LIMIT 5
            ];
        }
    
}
