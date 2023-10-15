public class Negaative
{
    public void display1()
    {
        List<integer> lstNumbers=new List<integer>{12,-4,95,-6,-7};
            integer x=0; 
        lstNumbers.sort();
        for(integer value:lstNumbers)
        {  
            if(x>value) 
            {
                system.debug(lstNumbers.size());
               //integer z=value.size();
              //system.debug('Largest Value = ' + z);   
            }
        }
          
    }

   
}