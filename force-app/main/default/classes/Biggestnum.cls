public class Biggestnum 
{
    public void display()
    {
        List<integer> lstNumbers=new List<integer>{12,4,95,6,7};
            integer x;
        // system.debug( lstNumbers.size());
        lstNumbers.sort();
        for(integer value:lstNumbers)
        {
            x=value;
        }
        system.debug('Largest Value = ' + x);   
    }
}