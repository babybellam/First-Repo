import { LightningElement,api } from 'lwc';

export default class ChildComponentday15 extends LightningElement {
    progress=0;
    @api handleStart()
    {
       const x= setInterval(()=>{
            this.progress=this.progress+10;
            if(this.progress>100){
                const e=new CustomEvent('progressfinished')
                this.dispatchEvent(e);
                clearInterval(x)
            }
        },300)
    }
   
}