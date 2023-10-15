import { LightningElement } from 'lwc';

export default class ModalsDay16 extends LightningElement {
    modalcomponent=true;

   handleClick()
   {
      this.modalcomponent=false;
   }
}