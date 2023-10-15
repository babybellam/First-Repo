public class Accountsdeleted_nocon {
     Public static void Nocontacts(Map<ID,Contact> contactoldmap)
    {
	Set<ID> accid=new Set<Id>();
    List<Account> accountoldlist=[Select ID from account];
	for(Account accountwithid:accountoldlist)
	{
	    accid.add(accountwithid.ID);
	}
	List<Account> accountList=[Select Id,Name from Account Where Id IN(Select AccountID from Contact) AND ID IN:accid];
	for(Account acc:accountList)
	{
	   contactoldmap.get(acc.Id).Adderror('Unable to delete Account with Contacts');
	}
    }

}