public class CustomerProjecthandler {
    public static void opportunityupdate(List<Customer_Project__c> custprolist)
    {
       
       Set<Id> opportunityids=new Set<Id>();
        for(Customer_Project__c cust:custprolist)
        {
            if(cust.Status__C=='Active')
            {
                opportunityids.add(cust.Opportunity__c);
            }
        }
        system.debug(opportunityids);
        
        List<Opportunity> opptoupdate=[Select Id,Customer_Project__c from opportunity where Id IN:opportunityids];
        List<Opportunity> opportunityup=new List<Opportunity>();
        for(Opportunity opp:opptoupdate)
        {
            opp.customer_Project__c=true;
            opportunityup.add(opp);
            system.debug(opp);
        }
        Update opportunityup ;
        system.debug(opptoupdate); 
    }

}