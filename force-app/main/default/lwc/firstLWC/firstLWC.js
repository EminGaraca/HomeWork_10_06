import { LightningElement, api } from 'lwc';
import {FlowAttributeChangeEvent, FlowNavigationNextEvent} from 'lightning/flowSupport';

export default class FirstLWC extends LightningElement {
    @api firstName;
    @api resultName;

    fireEvent() {
        const attributeEvent = new FlowAttributeChangeEvent('resultName', 'Esselamun Alejkum');
        this.dispatchEvent(attributeEvent);
    }
    goEvent() {
        this.dispatchEvent(new FlowNavigationNextEvent());
    }
}