public class BatchJob Implements Database.Batchable <sObject> {
   public Database.QueryLocator Start(Database.BatchableContext Bj)
   {
       return Database.getQueryLocator('Select Id From Account');
   }
    public void execute(Database.BatchableContext dbc,List<Lead> Scope)
    {
        
    }
     public void Finish(Database.BatchableContext Bj)
     {
         Emailutil.sendingEmail();
         //Database.executeBatch(new Batchjob());
     }
}