import { LightningElement } from 'lwc';

export default class DataBindings extends LightningElement {
    
    customStyle='myStyle';
    message='Welcome to LWC';

    handleClick(event)
    {
        //this.message;
        this.customStyle='myStylered';
    }
        
    handleClickblue(event)
    {
        //this.message;
        this.customStyle="myStyle_blue";
    }

}
