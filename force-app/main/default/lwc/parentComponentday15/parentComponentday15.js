import { LightningElement } from 'lwc';

export default class ParentComponentday15 extends LightningElement {
    handleClick()
    {
        this.template.querySelector("c-child-componentday15").handleStart();
        this.template.querySelector("lightning-button").disabled=true;
    }
    
    handleFinish()
    {
        this.template.querySelector("lightning-button").disabled=false;
    }
}