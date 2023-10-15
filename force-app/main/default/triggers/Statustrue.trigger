trigger Statustrue on Customer_Project__c (After insert) {
     Switch on Trigger.operationType
    {
        When After_Insert 
        {
           CustomerProjecthandler.opportunityupdate(Trigger.new);
        }
        
    }

}