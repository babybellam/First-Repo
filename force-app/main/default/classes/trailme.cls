public class trailme {
    public void display()
    {
         List<AggregateResult> lst=[Select Count(Id) noofIds,Employee_Name__c
                               From Employee__c 
                              
                               Group by Employee_Name__c
                              ];
    for(AggregateResult dem : lst)
    {
       system.debug(dem.get('Employee_Name__c')+ '-'+ dem.get('NoofIds')); 
    }
    }
   
    Public void display1()
    {
        List<Employee__c> lstr=[Select Employee_Name__c
                               From Employee__c];
        system.debug(lstr);
            
    }

}