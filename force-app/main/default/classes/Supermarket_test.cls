@isTest
public class Supermarket_test {
   @isTest
    public static void testor()
    {
    Product prd1=new Product(101,'Vim',500,10,100);
    Product prd2=new Product(102,'Harppic',700,10,100);
   
    SuperMarket sup=new SuperMarket();
    sup.lstprod.add(prd1);
    sup.lstprod.add(prd2);
    sup.displayProduct(prd1);
    sup.displayProduct(prd2);
    sup.Billing(101,10);
    sup.Reorder();
    sup.displayStock();
        
    }
}