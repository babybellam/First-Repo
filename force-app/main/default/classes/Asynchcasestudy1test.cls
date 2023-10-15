@isTest
public class Asynchcasestudy1test {
      @isTest
    public static void Test_leadownerchange()
    {
       List<Lead> Leadlist=new List<Lead>();
        Lead L=new Lead();
        L.LastName='Test Lead';
        L.Company='SLV Motars';
        L.Status='Open - Not Contacted';
        Leadlist.add(L);
        Insert Leadlist;
        List<Task> tasklist=new List<Task>();
        for(Lead Leadt:Leadlist)
        {
            Task T= new Task();
            T.WhoId=Leadt.ID;
            T.Subject='Batch test task';
            T.Status='Completed';
            tasklist.add(T);
        }
        Insert tasklist;
        
        Test.StartTest();
        Id JobID=Database.executebatch(New Leadcasestudy1());
        Test.StopTest();
       // List<Database.Error> errlist=jobId.getErrors();
        
        system.assertequals(1,[Select count() from Lead Where OwnerId!=Null]);
        
    }

}