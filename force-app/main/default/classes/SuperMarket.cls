public class SuperMarket
{
    public List<Product> lstprod=new List<Product>();
    integer Reorder=20;
    
    /*Display Product Detail**/
    
    
    public void displayProduct(Product P)
    {
        system.debug('Product Code = '+ P.code);
        system.debug('Product Name = '+ P.Name);
        system.debug('Product Stock = '+ P.Stock);
        system.debug('Product Price = '+ P.Price);
        system.debug('Product Discount = '+ P.discount);
    }
    
    
    /*Display Billing Detail**/
    
    Public void Billing(integer ProductCode,integer quantity)
    {
        for(Product P:lstprod) 
        {
            if(p.Code==ProductCode)
            {
                if(P.Stock>=quantity)
                {
                    Decimal TotalAmt=quantity*(P.Price*(100-P.Discount)/100);
                    P.stock=P.stock-quantity;
                    system.debug('Total bill Amount = ' +TotalAmt);
                    break;
                }
                else
                {
                    system.debug('Sorry Stock is Less Than Quantity');
                }
                
            }
            else
            {
                system.debug('Code doesnot exist');
            }
        }   
    }
    
    
    /*Display Reorder Detail**/
    
    public void Reorder()
    {
        for(Product P:lstprod)
        {
            
            
            if(P.stock<Reorder)
            {
                system.debug('The Stock Need to be Reorder');
            }
            else
            {
                system.debug('Limited Stock is Available');
            }
        }
    }
    
    /*Display Stock Detail**/
    
    public void displayStock()
    {
        for(Product P:lstprod)
        {
            system.debug('Stock  =' +P.stock);
        }
        
    }
    
}


/* Anonymous Window
 

Product prd1=new Product(101,'Vim',500,10,100);
Product prd2=new Product(101,'Harppic',700,10,100);
Product prd3=new Product(101,'Lizol',300,10,100);

SuperMarket sup=new SuperMarket();
sup.lstprod.add(prd1);
sup.lstprod.add(prd2);
sup.lstprod.add(prd3);
sup.displayProduct(prd1);
sup.displayProduct(prd2);
sup.displayProduct(prd3);

sup.Billing(102,20);
sup.Billing(109,20);
sup.Reorder();
sup.displayStock(); **/