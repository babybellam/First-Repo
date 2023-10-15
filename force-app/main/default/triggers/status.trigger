trigger status on Customer_Project__c (before insert,after insert,before update,after update,before delete,after delete) {
    
    Switch on Trigger.operationType
        {
            When After_Insert
            {
                //Map<Id,Opportunity> opp=Trigger.newmap;
                List<Customer_Project__c> cus=[SELECT  Id, Opportunity__c FROM Customer_Project__c Where Status__c = 'Active'];
               
                {
                    
                }
            }
            
        }   
            

}