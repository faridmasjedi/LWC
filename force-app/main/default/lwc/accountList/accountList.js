import { LightningElement, wire } from 'lwc';
import getAccounts from '@salesforce/apex/AccountInfo.getAccounts';

export default class AccountList extends LightningElement {
    @wire(getAccounts) accounts;
    accountidfrmparent;
    clickHandler(e){
        e.preventDefault();
        this.accountidfrmparent = e.target.dataset.accountid;
    }
}