public class Account_Service {

    public void updateAccounts() {
        Account [] arrayAccount = [SELECT Id, Type FROM Account];
        
        for ( Account acc : arrayAccount) {
            switch on acc.Type {
                when 'Prospect' {
                    acc.MarketingValue__c=30;
                }
                when 'Customer - Direct' {
                    acc.MarketingValue__c=65;
                }
                when 'Customer - Channel' {
                    acc.MarketingValue__c=100;
                }
                when else {
                    acc.MarketingValue__c=1;
                }
            }
        }
        update arrayAccount;
    }
}