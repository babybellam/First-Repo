public class NoNegative {
    public integer x=0;
    public  integer y=0;
    public void Minus()
    {
        List<integer> lstNumber=new List<integer>{5,-1,6,-3,-9,22};
            lstNumber.sort();
        for(integer value:lstNumber)
        {
            if(x>value)
            {
                y=y+1;
                system.debug(value);
            }
        }
        system.debug('Negative Number in the List =' + y);
    }
    
    
}