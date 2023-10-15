import { LightningElement } from 'lwc';
import ACCOUNT_OBJECT from '@salesforce/schema/Account'
import NAME_FIELD from '@salesforce/schema/Account.Name'
import INDUSTRY_FIELD from '@salesforce/schema/Account.Industry'
import ANNUAL_REVENUE_FIELD from '@salesforce/schema/Account.AnnualRevenue'


export default class LdsTrails extends LightningElement {
objectName=ACCOUNT_OBJECT;
fieldsList=[NAME_FIELD,INDUSTRY_FIELD,ANNUAL_REVENUE_FIELD];
updateHandler(event){
//console.log(event.detail.id)
alert(event.detail.id)
this.dispatchEvent(new ShowToastEvent({
Title:"Record Created",
message:"Record Created with ID::" + event.detail.id,
Variant :"success"
}))
}


}