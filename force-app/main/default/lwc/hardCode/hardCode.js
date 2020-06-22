import { LightningElement,track } from 'lwc';

const columns = [
    {label: 'FirstName', fieldName: 'FirstName', type: 'text'},
    {label: 'LastName', fieldName: 'LastName', type: 'text'}  
];

const  data = [{
    
    FirstName: 'Emin',
    LastName: 'Garaca'
}];
export default class HardCode extends LightningElement {
    data = data;
    columns = columns;

    getSelectedName(event) {
        const selectedRows = event.detail.selectedRows;
        // Display that fieldName of the selected rows
        for (let i = 0; i < selectedRows.length; i++){
            alert("You selected: " + selectedRows[i].Age);
        }
    }
}