import { LightningElement } from 'lwc';

export default class Day9Diyone extends LightningElement {
     texts;
    handleChange(event)
    {
        if(event.target.name=="uptxt1")
        {
            event.target.value;
        }
        
           this.texts=event.target.value.toUpperCase();
      
       
        
    }
}