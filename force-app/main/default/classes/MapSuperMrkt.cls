public class MapSuperMrkt {
    integer Reorder=20;
    //Map<integer,String> Product =new Map<integer,string>();
     public Map<integer,Product> pro=new Map<integer,Product>();
     
    
      /*Display Product Detail**/
   /*  public void displayProduct(Product P)
    {
        system.debug('Product Code = '+ P.code);
        system.debug('Product Name = '+ P.Name);
        system.debug('Product Stock = '+ P.Stock);
        system.debug('Product Price = '+ P.Price);
        system.debug('Product Discount = '+ P.discount);
    }**/
    
    
     public void displayProduct(Product P)
     { 
        for(integer key:pro.keyset())
        {
            system.debug('Display');
        system.debug('Product Code = '+ pro.get(key).code);
        system.debug('Product Name = '+ pro.get(key).Name);
        system.debug('Product Stock = '+ pro.get(key).Stock);
        system.debug('Product Price = '+ pro.get(key).Price);
        system.debug('Product Discount = '+pro.get(key).discount);
        }
     }
   
    
         /*Display Billing Detail**/
    
    
    public void Billing(integer Productcode,integer quantity)
    {
        for(integer key:pro.keyset())
        {
            if(pro.get(key).code==Productcode)
            {
               if(pro.get(key).Stock>=quantity) 
             {
                    Decimal TotalAmt=quantity*(pro.get(key).Price*(100-pro.get(key).Discount)/100);
                    pro.get(key).stock=pro.get(key).stock-quantity;
                    system.debug('Total bill Amount = ' +TotalAmt);
                    break;
            }
                else
                {
                    system.debug('Sorry stock than the quantity');
                }
            }
            else
            {
                system.debug('Code doesnot Exists');
                
            }
        }
    }
    
    
              /*Display Reorder Detail**/ 
    
    
    public void Reorder()
    {
       for(integer key:pro.keyset())
           if(pro.get(key).stock<Reorder)
       {
           system.debug('The stock need to be Reorder');
       }
        else
        {
            system.debug('Limited stock');
        }
    }
    
    
              /*Display Stock Detail**/
    
    
    public void displayStock()
    {
        for(integer key:pro.keyset())
        {
            system.debug(pro.get(key).stock);
        }
    }
}




/*  Anonymous window   
 * 
 Product prd1=new Product(101,'Vim',500,10,100);
Product prd2=new Product(101,'Harppic',700,10,100);
Product prd3=new Product(101,'Lizol',300,10,100);

MapSuperMrkt sup=new MapSuperMrkt();
sup.pro.put(prd1.code,prd1);
sup.pro.put(prd2.code,prd2);
sup.pro.put(prd3.code,prd3);
sup.displayProduct(prd1);
sup.displayProduct(prd2);
sup.displayProduct(prd3);

sup.Billing(102,20);
sup.Billing(109,20);
sup.Reorder();
sup.displayStock();

**/