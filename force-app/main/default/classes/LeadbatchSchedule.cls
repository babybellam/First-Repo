global class LeadbatchSchedule  Implements Database.Batchable <sObject>,Database.Stateful {
    global List<Lead> querylead=new List<Lead>();
    public Database.QueryLocator Start(Database.BatchableContext dbc)
    {
         return Database.getQueryLocator('SELECT Id, Status,CreatedDate FROM Lead Where Status=\'Open - Not Contacted\' AND CreatedDate=Today');
    }
     public void execute(Database.BatchableContext dbc,List<Lead> Scope)
     {
         for(Lead addlead:Scope)
         {
             querylead.add(addlead);
         }
         system.debug(Scope);
     }
     public void Finish(Database.BatchableContext dbc)
     {
        
         system.debug(querylead);
        Emailutil.sendingEmail(querylead);
         
     }
 
}