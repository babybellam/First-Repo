import { LightningElement,track } from 'lwc';

export default class ProductDAy9diy2 extends LightningElement {
    @track productobj=
    {
        name:'hari',
        price:500,
        stock:'',
    }
    refresh=true;
    instock;
    refresh=true;
    handleChange(event)
    {
        this.productobj.stock=event.target.value;
      
        if(event.target.name=="inp" && event.target.value===0)
        {
            this.refresh=false;
        }
       handleClick(event)
       {
        if(this.productobj.stock>0)
        {
            this.instock=true;
        }
        else{
            this.instock=false;
            this.isclicked=true;
            this.refresh=true;
        }
       }
        
    }
}