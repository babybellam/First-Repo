public class objectD {
    
                    /*  Inserting Records  **/
    
    
    public void Insertion(string DepartmentName, String Head_Quarters , integer Employees)
    {
        List<Departmant__c> dept=[Select Id 
                                  From Departmant__c 
                                  Where Department_Name__c=:DepartmentName];
        if(dept.Size()>0)
        {
            system.debug('Record Already Exists');
        }
        else
        {
            Departmant__c obj=new Departmant__c();
            obj.Department_Name__c=DepartmentName;
            obj.Head_Quarters__c= Head_Quarters;
            obj.Employees__c=Employees;
            insert obj;
            
        }
      
    }
    
              /* No.of Employees **/
    
    
    public void NEmployee()
    {
        List<AggregateResult> dep=[Select 
                                   Count(Employees__c) NoofEmployees,Department_Name__c 
                                   FROM Departmant__c
                                   GROUP BY Department_Name__c
                                   ORDER BY Department_Name__c
                                   Asc LIMIT 3
                                  ];
        for(AggregateResult empno:dep)
        {
            system.debug(empno);
            system.debug(empno.get('NoofEmployees'));
            system.debug(empno.get('Department_Name__c'));
        }
    
    }  
}