trigger OppAcc on Opportunity (After insert) 
{
    
    Switch on Trigger.operationType
    {
        When AFTER_INSERT
        {
            set<Id> accids=new set<Id>();
            for(Opportunity opacid:trigger.new)
            {
                accids.add(opacid.AccountID);
            }
            
            List<AggregateResult> agg=[Select Max(Amount) Maxamount,AccountId  From Opportunity Where AccountId IN :accids Group by AccountId];
            Map<Id,Account> accmap=new Map<Id,Account>([Select Id,OppHighValue__c from Account Where Id IN:accids]);
            List<Account> accountstoupdate=new List<Account>();
            for(AggregateResult finagg:agg)
            {
                //accmap.get((Id)finagg.get('AccountId')).OppHighValue__c=(Decimal) finagg.get('Maxamount');
                //accountstoupdate.add(accmap.get((Id)finagg.get('AccountId')));
                Account acc=accmap.get((Id)finagg.get('AccountId'));
                acc.OppHighValue__c=(Decimal) finagg.get('Maxamount');
                accountstoupdate.add(acc);
                
            }
            
            update accountstoupdate;
        }
        
    }
    
}