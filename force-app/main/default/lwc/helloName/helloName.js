import { LightningElement, track } from 'lwc';

export default class HelloName extends LightningElement {
    @track name;

    typeYourName () {
        this.name = prompt('What is your name ?');
        alert('Hello '+this.name);
    }
}