public class ObjectEmp {
    
    public string position;
    public integer z=0;
    
    /* Inserting Records  **/
    
    
    public void Insertion(string Employee_Name,integer Salary,string Position)
    {   
        
        List<Employee__c> emp=[Select Id
                               From Employee__c 
                               Where Employee_Name__c=:Employee_Name ];
        
        if(emp.size()>0)
        {
            system.debug('Record Already Exists');
        }
        else
        {
            Employee__c obj=new Employee__c();
            obj.Employee_Name__c=Employee_Name;
            if(Position!='Manager')
                obj.Salary__c=60000;
            else
                obj.Salary__c=Salary;
            if(Position == null || position==' ')
                obj.Position__c='Sales Assistant';
            else
                obj.Position__c=Position;
            
            insert obj;
            z=z+1;
            system.debug('No.of Records Processed = ' +z); 
        }
        
        
    }
    
    
       /* Deleting Records **/ 
    
    
    public void Deleting(String Employee_Name)
    {
       List<Employee__c> emp=[Select Id
                               From Employee__c 
                               Where Employee_Name__c=:Employee_Name ];
        
        if(emp.size()>0)
        {
           // emp[0].Employee_Name__c=Employee_Name;
            Delete emp;
        }
        else
        {
            system.debug('No Records Exists');
        }
    } 
    
    
    
    
                /* Maximum Salary **/
    
    
    public void MSalary(string Position)
    {
        Employee__c emp=[SELECT Id, Salary__c 
                         FROM Employee__c 
                         Where Position__c=:Position
                         Order by  Salary__c 
                         Desc Limit 1];
        
        system.debug('Maximum Salary =' + emp); 
        
    }
    
    
    
                           /* Max & Min Available Positions  **/
    
    
    
    public void Avlpositions()
    {
        
        Employee__c emp=[SELECT Id, Salary__c, Position__c 
                         FROM Employee__c 
                         Order by  Salary__c 
                         Desc Limit 1 ];
        
        system.debug('Avaiable position with max salary =' +emp);
        
        Employee__c min=[SELECT Id, Salary__c, Position__c 
                         FROM Employee__c 
                         Order by  Salary__c 
                         Asc Limit 1 ];
        system.debug('Position With Min Salary =' + min);
    }
    
}






/*
 ObjectEmp obj=new ObjectEmp();
obj.Insertion('Karuna',56000,'Sales Assistant');
obj.Insertion('Arjun',46000,'Service Assistant');
obj.Insertion('Krishna',78000,'Team Lead');
obj.MSalary('Service Assistant');
obj.Avlpositions();
**/