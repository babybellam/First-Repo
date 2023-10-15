public class Leadbatch Implements Database.Batchable <sObject>{
    public Database.QueryLocator Start(Database.BatchableContext dbc)
    {

        return Database.getQueryLocator('SELECT Id, Status, CreatedDate FROM Lead Where Status!=\'Hot\' AND CreatedDate <= Last_N_Months:6');
    }
    public void execute(Database.BatchableContext dbc,List<Lead> Scope)
    {
        List<Lead> LeadtoUpdate=new List<Lead>();
        for(Lead L:scope){
            L.Status='Closed Lost';
            Leadtoupdate.add(L);
        }
        update Leadtoupdate;
    }
    public void Finish(Database.BatchableContext dbc)
    {
        ////Database.executeBatch(new Leadbatch());
        Emailutil.sendingEmail();
    }
}