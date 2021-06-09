import { LightningElement, wire, api } from 'lwc';
import displayContact from '@salesforce/apex/ContactInfo.displayContact';

export default class ContactTable extends LightningElement {
    cols = [
        {label: 'First Name', fieldName: 'FirstName'},
        {label: 'Last Name', fieldName: 'LastName'},
        {label: 'Email', fieldName: 'Email', type:'email'},
        {label: 'Phone', fieldName: 'Phone'},
    ];

    @api accountId;
    @wire(displayContact, {accountId:'$accountId'}) contacts;
}