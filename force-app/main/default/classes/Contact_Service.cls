public class Contact_Service {

    public Contact updateContact(Contact inputContact){
        
        if(inputContact.Account.Name == 'United Oil & Gas Corp.') {
            inputContact.AssistantName = 'David Berg';
        }
        else if(inputContact.Account.Name == 'United Oil & Gas, Singapore') {
            inputContact.AssistantName = 'Adam Brody';
        }
        else if(inputContact.Account.Name == 'United Oil & Gas, UK') {
            inputContact.AssistantName = 'Alan Rickman';
        }
        else {
            inputContact.AssistantName = 'Deborah Davies';
        }
        update inputContact;
        return inputContact;
    }
}