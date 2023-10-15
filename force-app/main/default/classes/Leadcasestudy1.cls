global class Leadcasestudy1  Implements Database.Batchable <sObject> ,Database.Stateful{
    global List<Task> ManagerTask=new List<Task>();
    global List<Lead> updationleads=new List<Lead>();
    Global Database.QueryLocator Start(Database.BatchableContext bcs)
    {
        
        return Database.getQueryLocator('Select Id,OwnerId From Lead Where Days_Since_Last_Activity__c > 5 AND ( NOT Status LIKE \'Closed%\') ' );
    }
    Global void execute(Database.BatchableContext bcs,List<Lead> Scope)
    {
        Set<Id> Ownerids=New Set<ID>();
        
        for(Lead Leadowner:Scope)
        {
            Ownerids.add(Leadowner.OwnerId);
        }
        
        Map<Id,User> OwnerManagerId=New Map<Id,User>([Select Id,ManagerId From User Where Id IN:Ownerids]);
        for(Lead Leadowner:Scope)
        {
            Leadowner.OwnerId=OwnerManagerId.get(Leadowner.OwnerId).ManagerId;
            Task newtask=new Task();
            newtask.WhoId=Leadowner.Id;
            newtask.OwnerId=OwnerManagerId.get(Leadowner.OwnerId).ManagerId;
            newtask.ActivityDate=system.today();
            newtask.Subject='Ownership changing';
            newtask.Status='Completed';
            newtask.Priority='Normal';
            ManagerTask.add(newtask);
            updationleads.add(Leadowner);
        }
        if(updationleads.Size()>0)
         Update updationleads;
        Insert ManagerTask;
       
        system.debug(updationleads);
        system.debug(ManagerTask);
        
    }
  Global void Finish(Database.BatchableContext bcs)
    {
        EmailCasestudyutil.sendingEmail(updationleads,ManagerTask);
    }
    
}