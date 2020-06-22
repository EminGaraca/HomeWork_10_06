import { LightningElement, wire, api } from 'lwc';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';
import createContactByName from '@salesforce/apex/Contact_Service_Add_Contact.createContactByName';

export default class TestContactLwc extends LightningElement {
    @api fName;
    @api lName;

    askForName() {
        this.fName = prompt('What is your first  name ?');
        this.lName = prompt('What is your  last name ?');
        
    }
    @wire(createContactByName,{fName :'$fName', lName : '$lName'})
    
    contacts;

    handleSuccess (event) {
        const toastEvent = new ShowToastEvent({
            title: "Contact created",
            message: "Record ID: " + event.detail.id,
            variant: "success"
        });
        this.dispatchEvent(toastEvent);
    }

    

}