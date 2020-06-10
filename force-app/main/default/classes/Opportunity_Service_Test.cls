@isTest public class Opportunity_Service_Test {

    @isTest static void shouldSetOpportunities() {
        //Arrange
        Opportunity_Service service = new Opportunity_Service();    
        List<Opportunity> listnew = new List<Opportunity>(); 
        List<Opportunity> oldList = new List<Opportunity>();
        //Act
        oldList=service.getAllOpportunities();
        listnew = [SELECT Name FROM Opportunity];
        //Assert
        System.assertEquals(oldList, listnew);
    }
}