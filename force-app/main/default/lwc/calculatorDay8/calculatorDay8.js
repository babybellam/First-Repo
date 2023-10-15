import { LightningElement,track } from 'lwc';

export default class CalculatorDay8 extends LightningElement {

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
            //this.x=event.target.value;
           // this.y=event.target.value; 
           console.log(this.x); 
           console.log(this.y); 
            this.result=this.x+this.y;
            console.log(this.result);
            console.log('adiiton');
        }
        else if(event.target.name=="btn2")
        {
            //this.x=event.target.value;
            //this.y=event.target.value;  
            this.result=this.x-this.y;
            console.log(this.result)

        }
        else if(event.target.name=="btn3")
        {
            //this.x=event.target.value;
           // this.y=event.target.value;  
            this.result=this.x*this.y;
            console.log(this.result);

        }
        else (event.target.name=="btn4")
        {
           // this.x=event.target.value;
           // this.y=event.target.value;  
            this.result=this.x/this.y;
            console.log(this.result);
        }
    }
}
