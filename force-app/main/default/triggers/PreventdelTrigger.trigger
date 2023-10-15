trigger PreventdelTrigger on Account (Before Insert,After Insert,Before Update,After Update,before Delete) {
    
    
     Switch on Trigger.operationType
    {
        When AFTER_INSERT
        {
            AccountTriggerHandler.numberoflocations(Trigger.new);
        }
    }
}
    
        
    
    /*Set<Id> newid=New Set<Id>();
    For(Account acc:Trigger.old){
        newid.add(acc.id);
    }
    List<Account> child=[Select Id,ParentId From Account Where ParentId IN : newid];
    
    
    //if(!child.isempty()&& newid.contains(newid.Id))
    {
        
    }*/
    
   /* List<Account> acclst=[Select Id, ParentId From Account Where ParentId!=Null];
    for(Account acc:acclst)
    {
        //if(acc.id!==null && acc.ParentId!==Null)
        {
            acc.adderror('Unable to Delete Records');
        }
    }*/