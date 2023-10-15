public class Banking {
    public integer Balance=50000;
    //public integer Amount;
   // Public integer option=2;
    public string str;
  public integer displayX(integer x,string y)
  {
    if(y=='withdraw') 
    {
        Balance=Balance-x;
        system.debug('Withdraw  =' +Balance);
     }
      else if(y=='deposit')
      {
          Balance=Balance+x;
          system.debug('Deposit  ='  +Balance);
      }
      return Balance;
  }
    
}