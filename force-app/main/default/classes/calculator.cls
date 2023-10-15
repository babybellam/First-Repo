public class calculator {
    public  static integer z;
     
    public static integer display(integer x,integer y,string operation)
    {
 
    
   if(operation=='+')
    {
        z=x+y;
        system.debug('Addition=' +z);
    }
    else if(operation=='-')
    {
        z=x-y;
        system.debug('Subtraction=' +z);
    }
    else if(operation=='*')
    {
        z=x*y;
        system.debug('Multiplication=' +z);
    }
    else if(operation=='/')
        
    {
        z=x/y;
         system.debug('Division=' +z);
    }
        return z;
    } 
 
}