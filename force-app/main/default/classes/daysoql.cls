public class daysoql {
    
    public void display()
    {
        List<List<sObject>> con=[Find 'United' returning Account(Name),Contact(LastName)];
        List<Account> acc=con[0];
        List<Contact> cont=con[1];
        for(Account a:acc)
        {
            system.debug(a.Name);
        }
    }

}