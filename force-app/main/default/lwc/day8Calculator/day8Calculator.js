import { LightningElement,track } from 'lwc';

export default class Day8Calculator extends LightningElement {
    x;
    y;
   @track Output;
   result;

    handleChange(event)
    {
     if(event.target.name=="inp1")
     {
         this.x=parseInt(event.target.value);
         console.log('input1'+ this.x);
     }
     else if(event.target.name=="inp2")
     {
         this.y=parseInt(event.target.value);
         console.log('input2'+ this.y);
     }
    
    }


handleClick(event)
{
 if(event.target.name=="btn1")
 {
    
    console.log(this.x); 
    console.log(this.y); 
     this.result=this.x+this.y;
     console.log(this.result);
     console.log('adiiton');
 }
 else if(event.target.name=="btn2")
 {
      
     this.result=this.x-this.y;
     console.log(this.result)

 }
 else if(event.target.name=="btn3")
 {
     
     this.result=this.x*this.y;
     console.log(this.result);

 }
 else (event.target.name=="btn4")
 {
    
     this.result=this.x/this.y;
     console.log(this.result);
 }
}
}