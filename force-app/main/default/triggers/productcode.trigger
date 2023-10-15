trigger productcode on OpportunityLineItem (After Insert,After update,After delete) {
    Switch on Trigger.operationType
    {
        When After_insert
        {
            opplinitem.afteroppproductcode(Trigger.new);
        }
        When After_Delete
        {
            //opplinitem.updationopportunity(Trigger.old);
        }
    }

}