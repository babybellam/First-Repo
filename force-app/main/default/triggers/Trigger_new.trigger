trigger Trigger_new on Account (before insert,after insert) {
    
    switch on Trigger.operationType
    {
        when Before_Insert
        {
            system.debug('Its before Trigger');
            system.debug(trigger.New);
            for(Account acc:trigger.new)
            {
                 if(acc.Rating=='Hot' && acc.AnnualRevenue==Null)
                   acc.AnnualRevenue=200000; 
            }
        }
       
    }
         
}