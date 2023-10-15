public class opplinitem{
    
    
    public static void afteroppproductcode(List<OpportunityLineItem> opplineitemlist)
    {   
        Set<Id> oppidset=new Set<Id>();
        for(OpportunityLineItem  oppid:opplineitemlist)
        {
            oppidset.add(oppid.OpportunityId);
        }
        
        Map<Id,Opportunity> opportunitymap=new Map<Id,Opportunity>([Select Id,Oppr_LineItems_Productcode__c From Opportunity Where Id IN:oppidset]);

         opplineitemlist=[Select OpportunityId,ProductCode From OpportunityLineItem Where OpportunityId IN:oppidset];
        List<Opportunity>  updateopportunity=new List<Opportunity>();
        Integer size =0;
        String Productcodes='';
        //String Delimiter=',';
        for(OpportunityLineItem opporline:opplineitemlist)
        { 
          
           Productcodes += opporline.ProductCode  ;
          
            Size+=1;
            if(size==opplineitemlist.size())
            {
                  Productcodes=Productcodes.removeEnd(',');
            
            
            opportunitymap.get(opporline.OpportunityId).Oppr_LineItems_Productcode__c =Productcodes;
                 updateopportunity.add( opportunitymap.get(opporline.OpportunityId));
            }
          
           
         } 
        
        if(!updateopportunity.isEmpty()){
            update updateopportunity; 
        }
             
    }
    
}
    
   /* public static void afteroppproductcode(List<OpportunityLineItem> opplineitemlist)
    {   
        Set<Id> oppidset=new Set<Id>();
        for(OpportunityLineItem  oppid:opplineitemlist)
        {
            oppidset.add(oppid.OpportunityId);
        }
        
        List<Opportunity> opportunitylist=[Select Id,Oppr_LineItems_Productcode__c,
                                           (Select OpportunityId,ProductCode From OpportunityLineItems )
                                           From Opportunity Where Id IN:oppidset];
        system.debug(opportunitylist);
        List<Opportunity>  updateopportunity=new List<Opportunity>();
        for(Opportunity opport:opportunitylist)
        {
            String productcodes='';
            string delimiter=',';
            //opport.OpportunityLineItems.OpportunityId
            for(OpportunityLineItem opporline:opport.OpportunityLineItems){
                
                opport.Id=opporline.OpportunityId;
                if(productcodes==''){
                    delimiter='';
                }
                else
                {
                    delimiter=',';
                }
                
                productcodes  = productcodes + delimiter + opporline.ProductCode;
                
            }
            // productcodes=productcodes.removeEnd(',');
            opport.Oppr_LineItems_Productcode__c= productcodes;
            updateopportunity.add(opport);
            
            
        }
        update updateopportunity;
    }
    
    
    public static void updationopportunity(List<OpportunityLineItem> opportunitylistitemupdate)
    {
        Set<Id> oppidset=new Set<Id>();
        for(OpportunityLineItem  oppid:opportunitylistitemupdate)
        {
            oppidset.add(oppid.OpportunityId);
        }
        
        List<Opportunity> opportunitylistnew=[Select Id,Oppr_LineItems_Productcode__c,
                                              (Select OpportunityId,ProductCode From OpportunityLineItems )
                                              From Opportunity Where Id IN:oppidset];
        system.debug(opportunitylistnew);
        List<Opportunity>  updateopportunities=new List<Opportunity>();
        for(Opportunity opport:opportunitylistnew)
        {
            String productcodes='';
            string delimiter=',';
            //opport.OpportunityLineItems.OpportunityId
            for(OpportunityLineItem opporline:opport.OpportunityLineItems){
                
                opport.Id=opporline.OpportunityId;
                if(productcodes==''){
                    delimiter='';
                }
                else
                {
                    delimiter=',';
                }
                
                productcodes  = productcodes + delimiter + opporline.ProductCode;
                
            }
            // productcodes=productcodes.removeEnd(',');
            opport.Oppr_LineItems_Productcode__c= productcodes;
            updateopportunities.add(opport);
            
            
        }
        Delete updateopportunities;
    }
    
} */