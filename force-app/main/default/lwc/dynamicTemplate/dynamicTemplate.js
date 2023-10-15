import { LightningElement,track } from 'lwc';
import dynamicTemplate from './dynamicTemplate.html'
import accountTemplate from './accountTemplate.html'
import contacttemplate from './contacttemplate.html'
export default class DynamicTemplate extends LightningElement {
    
  
   //get AccountTemplate(){
   // return accountTemplate ? 'slds-button_selected' : 'slds-button_neutral';
  // }
  // get ContactTemplate(){
   // return contactTemplate ? 'slds-button_selected' : 'slds-button_neutral';
  // }
  acc;
  con;
  showAccount(event){
   this.acc=event.target.name;
  

  }
  
  render(){
if(this.acc=="btn1")
//
{
   return accountTemplate;
    
}
else if(this.acc=="btn2"){
   return contacttemplate;
}
else{
   return dynamicTemplate;
}

  }
   
  

}