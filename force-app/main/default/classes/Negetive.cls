public class Negetive {
    public integer x=0;
    public void Minus()
    {
        List<integer> lstNumber=new List<integer>{5,-1,6,-3,-9,22};
            lstNumber.sort();
        for(integer value:lstNumber)
        {
            if(x>value)
            {
                x=value;
            }
        }
        system.debug('Negative Number in the List =' + x);
    }

}