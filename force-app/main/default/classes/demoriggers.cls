public class demoriggers {
    
    Public void display()
    {
       /* Map<Id,Decimal> oppnew=New map<Id,Decimal>();
            for(AggregateResult agg:[Select Max(Amount) Maxamount,AccountId  From Opportunity Group by AccountId ])
            {
                Decimal Maxamount=(Decimal)agg.get('Maxamount');
                Id Accountid=(Id)agg.get('AccountId');
                oppnew.put(Accountid,Maxamount);
                system.debug(Maxamount);
                //system.debug(AccountId);
                //for(Id ids:oppnew.values())
                {
                    //system.debug(oppnew.get(ids).Amount);
                }
            }
        */
        
      /* Map<Id,AggregateResult> oppmap=New Map<Id,AggregateResult>([Select Max(Amount) Maxamount,AccountId  From Opportunity Group by AccountId]);
        Map<Id,Decimal> resultagg= new Map<Id,Decimal>();
        for(Id newopp:oppmap.keyset())
        {
           Aggregateresult agg=oppmap.get(newopp);
            Decimal Maxamount=(Decimal)agg.get('Maxamount');
            Id AccountId=(Id)agg.get('AccountId');
            resultagg.put(AccountId,Maxamount);
            system.debug('Opportunity Id  :' +newopp);
            system.debug('MaxAmount  :' +Maxamount);
            system.debug('AccountId  :' +AccountId);
        }*/
        
        //11
        Set<Id> contids=new Set<Id>();
        List<Contact> conl=trigger.new;
        for(Contact con:Conl)
        {
            if(Con!=null && con.AccountId!=null)
            {
                contids.add(con.AccountId);
            }
        }
        List<Account> acc=[Select Id,Count_of_Contacts__c,(Select id from Contacts) From Account Where Id IN :contids];
        if(acc!=null)
        {
             for(Account a:acc)
             {
                 a.Count_of_Contacts__c=a.Contacts.Size();
             }
        }
        Update Acc;
    }
    
    
    

}