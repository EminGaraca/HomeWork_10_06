public class Opportunity_Service {

    public List<Opportunity> getAllOpportunities() {
        List<Opportunity> oppList = new List<Opportunity>();
        oppList  = [SELECT Name FROM Opportunity];
        return oppList;
    }
}