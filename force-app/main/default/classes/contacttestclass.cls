@isTest
public class contacttestclass {
 
        @isTest
            Static void TestAccountDeletewithContact()
    {
        Account acc=new Account(Name='Test Account');
        Insert acc;
        Contact con=new Contact();
        con.LastName='Test Contact';
        con.accountID=acc.Id;
        Insert con;
        Test.StartTest();
        Database.DeleteResult dr=Database.delete(acc,false);
        Test.StopTest();
        
        List<Database.Error> errList=dr.getErrors();
        system.assertEquals('Unable to delete Account with Contacts',errlist[0].getMessage());
    
        
        
    }

}