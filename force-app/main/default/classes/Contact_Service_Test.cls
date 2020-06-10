@isTest public class Contact_Service_Test {

    @isTest public static void shouldSetAssistantNameToDeborah(){
        //Arrange
        Contact newName = new Contact(LastName = 'Someone');
        insert newName;
        //Act
        Contact_Service service = new Contact_Service();
        Contact resultContact = new Contact(LastName = 'Test');
        resultContact = service.updateContact(newName);
        //Assert
        System.assertEquals('Deborah Davies', resultContact.AssistantName);
    }
    
}