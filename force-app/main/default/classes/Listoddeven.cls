public class Listoddeven {
    public integer Value;
    public integer odd=0;
    public integer even=0;
    public void Evenodd()
    {
        List<integer> lstNumber=new List<integer>{1,4,5,6,8,9,20,13};
            for(integer store:lstNumber)
        {
            Value=Math.mod(store,2);
            if(Value==0)
            {
                even=even+store;
                system.debug('Sum of even value = ' + store);
            }
            else
            {
                odd=odd+store;
                system.debug('Sum of odd Values =' + store);
            }
        }
        
        system.debug('Even ='+even);
        system.debug('odd ='+odd);
    }
    
}