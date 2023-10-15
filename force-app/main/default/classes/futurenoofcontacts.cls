public class futurenoofcontacts {
    @Future
    public static void futuremethod(string jsonstring)
    {
        List<Contact> conlist=(List<Contact>)json.deserialize(jsonString, List<Contact>.class);
        Set<Id> contactids=new Set<Id>();
        for(Contact con:conlist)
        {
            contactids.add(con.AccountId);
        }
        List<Account> acclist=[Select Id,Number_of_Contacts__c,(Select Id from Contacts) From Account where ID IN:contactids];
        for(Account acc:acclist)
        {
            acc.Number_of_Contacts__c=acc.Contacts.size();
        }
        Update acclist;
    }

}