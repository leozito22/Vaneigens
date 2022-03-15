import { LightningElement, api, wire } from 'lwc';
import getDInOffice from '@salesforce/apex/ScheduleManagerHelper.getDInOffice';

export default class ScheduleManagerLWC extends LightningElement {
@api recordId; 



@wire(getDInOffice, {accId: '$recordId'} )


daysInOffice;

}