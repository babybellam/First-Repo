trigger empTrigger on Employee__c (after delete) {
    
    Switch on Trigger.operationType
    {
        
        When After_Delete
        {
            System.debug('hello');
            Set<Id> accountids=New Set<Id>();
            for(Employee__c empid:Trigger.Old)
            {
                accountids.add(empid.Account__c);
            }
            system.debug(accountids);
            List<Account> acclist=[Select Id,(Select Id from Employees__r) From Account Where Id IN:accountids];
            System.debug(acclist);
            List<Account> updateaccounts=new List<Account>();
            
            for(Account acc:acclist){
                if(acc.employees__r.size()==0){
                    acc.Active__c= 'No';
                    updateaccounts.add(acc);
                    
                }
                
            }
            Update updateaccounts;
            
        }
        
    }
}