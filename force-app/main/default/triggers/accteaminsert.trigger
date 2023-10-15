trigger accteaminsert on Costumer__c (Before Insert,After Insert) {
     Switch on Trigger.operationType
     {
         When After_Insert
         {
             costumeraccountteams.accounteamsadd(Trigger.new);
         }
     }
    

}