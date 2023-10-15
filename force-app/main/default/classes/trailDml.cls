public class trailDml {
   
    
    /* Display all Opportunities**/
    
    
   /* public void display()
    {
        List<Opportunity> opp=[
            					SELECT Id, Name
                                FROM Opportunity
                                Where Amount>100000 and StageName='Closed Won'
                              ];
        for(Opportunity oppor:opp)
        {
           system.debug(oppor); 
        }
        
    } **/
    
    
    
    /* Display all Opportunity greater than passed amount(Parameter)**/
    
       public void display1()
    {
        List<Opportunity> opp=[
            					SELECT Id, Name
                                FROM Opportunity
            					Where StageName='Closed Won' and LeadSource='Web'
                              ];
        for(Opportunity oppor:opp)
        {
           system.debug(oppor); 
        }
        
    }
    

       public void display2()
    {
        List<Opportunity> opp=[
            					SELECT Id, Name
                                FROM Opportunity
            					Where Name like 'uni%'
                              ];
        for(Opportunity oppor:opp)
        {
           system.debug(oppor); 
        }
        
    }
}



/*
 trailDml obj=new trailDml();
obj.display2();
   
**/