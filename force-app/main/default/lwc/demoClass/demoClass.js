import { LightningElement,wire,api } from 'lwc';
import Account_Object from '@salesforce/schema/Account'
import NAME_FIELD from '@salesforce/schema/Account.Name'
import INDUSTRY_FIELD from '@salesforce/schema/Account.Industry'
import ANNUAL_REVENUE_FIELD from '@salesforce/schema/Account.AnnualRevenue'
import {getRecord} from 'lightning/uiRecordApi';

const fields=[NAME_FIELD,INDUSTRY_FIELD,ANNUAL_REVENUE_FIELD]

export default class DemoClass extends LightningElement {
    @api recordId;
    accountInfo
   //@wire(getRecord,{recordID:'$recordId',fields:fields})
   @wire(getRecord,{recordId:'$recordId',fields})
  getAccountData({data,error})
  {
    if(data)
    {
       this.accountInfo=data;

       console.log(data.fields.Name.value);
    }
    if(error)
    {
      console.log(error);
      console.log("Testing");
    }
 
  }
}