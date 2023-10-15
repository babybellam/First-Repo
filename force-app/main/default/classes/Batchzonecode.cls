public class Batchzonecode Implements Database.Batchable <SObject> {
    public Database.QueryLocator Start(Database.BatchableContext bz)
    {
        return Database.getQueryLocator('Select Id,Zone_code__C,Zone1__c from Store__C Where (Zone_code__c=null And Zone1__C!=Null)');
    }
    public void execute(Database.BatchableContext dbc,List<Store__C> scope)
    {
        if(Scope.Size()>0)
        {
            Set<String> Zonecodes=new Set<String>();
            for(Store__c oldcodes:Scope)
            {
                Zonecodes.add(oldcodes.Zone1__c);
            }
            List<Zone__C> zoneList=[Select Name From Zone__c Where Name IN:Zonecodes];
            Map<String,Id> MapZonevalues=New Map<String,Id>();
            for(Zone__C zonevalues:zoneList)
            {
                MapZonevalues.put(zonevalues.Name,zonevalues.Id);
            }
            List<Zone__C> newZonecodes=New List<Zone__C>();
            for(Store__c store:Scope)
            {
                if(MapZonevalues.keyset().contains(store.Zone1__c))
                {
                    Store.Zone_Code__c=MapZonevalues.get(Store.Zone1__c);
                }
                else
                {
                    //newZonecodes.add(new Zone__C(Name=Store.zone1__C));
                    
                }
               
            }
             update Scope;
            if(newZonecodes.size()>0)
             Insert newZonecodes;
            for(Store__C S:Scope)
            {
                for(Zone__c Z:newZonecodes)
                {
                    if(S.Zone1__c==Z.Name)
                        S.Zone_Code__C=Z.Id;
                }
            }
            Update Scope;
            
        }
    }
    public void Finish(Database.BatchableContext bz)
    {
        
    }

}