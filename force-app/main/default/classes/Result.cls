public class Result {
   public double mark1=90;
    public double mark2=80;
    public double mark3=70;
    public void displayP()
    {
        if(mark1>30&&mark2>30&&mark3>30)
        {
            system.debug('Pass');
        }
        else
        {
            system.debug('Fail');
        }
  }
    public double average=((mark1+mark2+mark3)/300)*100;
    
   public void displayA()
   {
       if(average>=90)
       {
           system.debug('S');
       }
       else if(average>=80)
       {
           system.debug('A');
       }
       else if(average>=70)
       {
           system.debug('B');
       }
       else if(average>=60)
       {
           system.debug('C');
       }
       else
       {
           system.debug('Fail');
       }
   }

}