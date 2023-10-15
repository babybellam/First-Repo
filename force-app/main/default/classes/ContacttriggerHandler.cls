public class ContacttriggerHandler {
    public static void contrigghand(List<Contact> conlist)
    {
        Set<Id> accids=new set<Id>();
        for(Contact c:conlist){
            if(c.AccountId!=null)
            {
                accids.add(c.AccountId);
            }
        }
        List<Account> acclist =[Select Id,(Select id from Contacts) From Account Where Id IN :accids];
        if(acclist!=null){
            for(Account acc:acclist)
            {
                acc.Count_of_Contacts__c=acc.Contacts.Size();
                
                
            }
            
        }
        Update acclist;
    }
    public static void countafterdeletion(List<Contact> contactlist)
    {
        Set<Id> accids=new set<Id>();
        for(Contact c:contactlist){
            if(c.AccountId!=null)
            {
                accids.add(c.AccountId);
                system.debug(c.AccountId);
            }
        }
        List<Account> acclist =[Select Id,(Select id from Contacts) From Account Where Id IN :accids];
        if(acclist!=null){
            system.debug('welcome');
            for(Account acc:acclist)
            {
                acc.Count_of_Contacts__c=acc.Contacts.Size();
                 system.debug(acc.Contacts.Size());
                
            }
            
        }
        Update acclist;
    } 
}