public class AccountTriggerHandler {
   // Public integer i=0;
    Public static void numberoflocations(List<Account> acclist)
    {
       // List<Account> accountloc=[Select Id,Name,NumberofLocations__c from Account Where NumberofLocations__c>0];
        List<Contact> contactstoupdate=new List<Contact>();
        for(Account acc:acclist){
            system.debug(acc.NumberofLocations__c);
             //Integer contacttocreate=(Integer)acc.NumberofLocations__c;
            for( Integer i=0;i<acc.NumberofLocations__c;i++){
                Contact con=new Contact();
                con.Lastname=acc.Name + (i+1);
                con.AccountId=acc.Id;
                contactstoupdate.add(con);
                system.debug(con);
            }
        }
        Insert contactstoupdate;
    }
    
    
}