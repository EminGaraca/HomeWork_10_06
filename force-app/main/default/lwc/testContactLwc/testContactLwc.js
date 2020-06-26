import { LightningElement, wire, api } from 'lwc';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';
import createContactByName from '@salesforce/apex/Contact_Service_Add_Contact.createContactByName';


export default class TestContactLwc extends LightningElement {
    @api fName;
    @api lName;
    @api contactId;
    @api error;

    async askForName() {
        this.fName = prompt('What is your first  name ?');
        this.lName = prompt('What is your  last name ?');
       
        let inputContact = {
            fName : this.fName,
            lName : this.lName
        }
        await this.createContact(inputContact);
    }
        createContact(inputContact) {
            return new Promise((resolve,reject) =>
            createContactByName(inputContact)
            .then((result) => {
                this.contactId=result;
                this.dispatchEvent(
                    new ShowToastEvent({
                        title: 'Success',
                        message: 'Contact updated '+ result,
                        variant: 'success'
                    })
                );
            })
            .catch((error) => {
                this.error = error;
            })
            );
        }


}