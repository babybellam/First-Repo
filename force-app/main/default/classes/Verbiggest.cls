public class Verbiggest {
    public void display1()
    {
        List<integer> lstNumbers=new List<integer>{12,4,95,6,7};
            integer x=0; 
        lstNumbers.sort();
        for(integer value:lstNumbers)
        {  
            if(x<value) 
            {
                x=value;
                
            }
        }
        system.debug('Largest Value = ' + x);   
    }
    
}