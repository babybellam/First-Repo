trigger contactrigger on Contact (before insert,After Insert,Before Update,After Update,Before Delete,After Delete,After Undelete) {
    
    Switch on Trigger.operationType
    {
        When After_Insert 
        {
           // String jsonstring=JSON.serialize(Trigger.new);
            //futurenoofcontacts.futuremethod(jsonstring);
             //ContactRelationship.relationship(Trigger.new);
           //ContacttriggerHandler.contrigghand(Trigger.new);
        }
        When After_update
        {
          // 
        }
        When Before_Delete
        {
            Accountsdeleted_nocon.Nocontacts(Trigger.oldmap);
        }
        When After_Delete
        {
            //ContactRelationship.Deletecontact(Trigger.Old);
            //ContacttriggerHandler.countafterdeletion(Trigger.old);
            
        }
        When After_Undelete
        {
             //ContactRelationship.undeleteautomatically(Trigger.New);
        }
    }
    
    

}