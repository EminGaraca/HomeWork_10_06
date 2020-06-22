import { LightningElement, track } from 'lwc';
const columns = [
    {label: 'Age', fieldName: 'Age', type: 'number'},
    {label: 'Name', fieldName: 'Name', type: 'text'},
    {label: 'Breed', fieldName: 'Breed', type: 'text'}
];

const  data = [{
    
    Age: 30,
    Name: 'Hans',
    Breed: 'Vucjak'
},
{
    
    Age: 1110,
    Name: 'Zuti',
    Breed: 'Pitbul'
},
{
    
    Age: 1110,
    Name: 'Zuti',
    Breed: 'Pitbul'

}];
export default class DogObject extends LightningElement {
   
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