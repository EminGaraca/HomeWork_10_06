@isTest public class Account_Service_Test {

    @isTest static void shouldSet65WhenTypeCustomerChannel() {
        //Arrange
        Account_Service service = new Account_Service();
        Account pType= new Account(Name= 'Test', Type='Customer - Channel');
        insert pType;
        //Act
        service.updateAccounts();
        Account results= [SELECT Id, MarketingValue__c FROM Account WHERE Id =: pType.Id];
        //ASSERT
        System.assertEquals(100 ,results.MarketingValue__c);
       
    }
    @isTest static void shouldSet1WhenTypeElse() {
        //Arrange
        Account_Service service = new Account_Service();
        Account pType= new Account(Name= 'Test');
        insert pType;
        //Act
        service.updateAccounts();
        Account results= [SELECT Id, MarketingValue__c FROM Account WHERE Id =: pType.Id];
        //ASSERT
        System.assertEquals(1 ,results.MarketingValue__c);
       
    }
    
}