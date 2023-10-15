public class costumeraccountteams {
    public static void accounteamsadd(List<Costumer__c> costumerlist)
    {
        Set<Id> accountids=new Set<Id>();
        
        for(Costumer__c cost:costumerlist)
        {
            accountids.add(cost.Account__c);
            
        }
        Map<Id,Id> AccountManagermap=new Map<Id,Id>();
        costumerlist=[SELECT Id,Account__c, Account_Manager__c FROM Costumer__c WHERE Account__c IN :accountids];
        for(Costumer__c c:costumerlist)
        {
            Accountmanagermap.put(c.Account__c,c.Account_manager__c);
        }
        List<AccountTeamMember> insertAccTeamMembers = new List<AccountTeamMember>();
        for(Id setaccount:accountids)
        {
            AccountTeamMember accMember = new AccountTeamMember();
                accMember.AccountId = setaccount;
                accMember.UserId = accountManagerMap.get(setaccount);
                accMember.TeamMemberRole = 'Account Manager';
                insertAccTeamMembers.add(accMember);
        }
        
        
        Insert insertaccTeamMembers;

}
}