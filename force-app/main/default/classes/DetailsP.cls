public class DetailsP {
    private integer Code;
    private integer Price;
    private integer Stock;
    private string Name;
    private integer Discount;
    
    public DetailsP(integer Code,string Name,integer stock,integer Price,integer Discount)
    {
        this.Code=Code;
        this.Name=Name;
        this.stock=stock;
        this.Price=Price;
        this.Discount=Discount;
    }
    public void displayProducts(){
        system.debug('Code =' +Code);
        system.debug('Name =' +Name);
        system.debug('Stock =' +Stock);
        system.debug('Price =' +Price);
        system.debug('Discount =' +Discount);
    }
    
    
    public void billing(integer quantity){
        //system.debug('Billing code  =' +code);
        system.debug('Billing quantity =' +quantity);
        if(Stock<quantity)
        {
            system.debug('Sorry stock is Not Available');
        }
        else
        {
            Stock=Stock-quantity; //70
            integer calc=price*(100-discount)/100;//180
            integer quantityprice=calc*quantity;//900
            system.debug('Billing quantityPrice =' +quantityprice);
            system.debug('Billing  Stock =' +Stock);
        }
    }
    
    public void Search(integer code)
    {
        system.debug('Code =' +Code);
        system.debug('Name =' +Name);
        system.debug('Stock =' +Stock);
    }
    
    
    public void ReorderP(){
        if(Stock<20)
        {
            system.debug('Reorder the Stock');
        }
        else
        {
            system.debug('We have Limited Stock');
        }
        
    }
}




/* 
DetailsP Product1=new DetailsP(101,'Shampoo',90,100,10);
DetailsP Product2=new DetailsP(102,'Soap',90,900,10);
DetailsP Product3=new DetailsP(103,'Lotion',90,200,10);
Product1.displayProducts();
Product2.displayProducts();
Product3.displayProducts();
Product1.billing(80);
Product2.billing(10);
Product3.billing(10);
Product1.Search(101);
product1.ReorderP();
*/