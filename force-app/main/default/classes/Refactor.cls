public class Refactor {
    
    Public void display(){
        
        
        
        
    List<Employee__c> emplo=[Select Id,Employee_Name__c From Employee__c];
    for(Employee__c emp:emplo)
    {
        emp.Employee_Name__c=emp.Employee_Name__c+'R';
    }
      Update emplo;
        
        
    
    }
    
  
}