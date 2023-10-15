public class Workshopdiy {
    
    public string DetailsA(String Name,integer Revenue,string source,date Edate)
    {
        Account acc=new Account();
        acc.Name=Name;
        acc.AnnualRevenue=Revenue;
        acc.AccountSource=source;
        acc.SLAExpirationDate__c=Edate;
        insert acc;
        system.debug(acc);
        return acc.Id;
    }
    
    

}