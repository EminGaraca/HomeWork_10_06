import { LightningElement, wire, api } from 'lwc';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';
import createContactByName from '@salesforce/apex/Contact_Service_Add_Contact.createContactByName';

export default class TestContactLwc extends LightningElement {
    @api fName;
    @api lName;

    askForName(e) {
        this.fName = prompt('What is your first  name ?');
        this.lName = prompt('What is your  last name ?');
        createContactByName({
          
            fName: this.fName,
            lName: this.lName
        })
        .then(() => {
            const toastEvent = new ShowToastEvent({
                title: "Contact created",
                message: "Record created: ",
                variant: "success"
            });
            this.dispatchEvent(toastEvent);
        })
        .catch((error) => {
            this.message = 'Error received: code' + error.errorCode + ', ' +
                'message ' + error.body.message;
        });
    }

    

    

}