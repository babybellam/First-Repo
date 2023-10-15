public class dynamic2 {
     public string strObject;
    public string strfields='';
    List<String> lstrec=new List<String>();
    
    
    
    public void Search(string strObject,List<string> fields,string searchf,string operator,string value)
    {
        
        string result=string.join(fields,',');
        system.debug('Result='+result);
        string strQuery=' Select  ' +result+ '  From  ' +strObject+  '  Where  '  +  searchf + '  '  + operator+ '  '  + value ;
        system.debug(strQuery);
        
        List<Sobject> lst=Database.query(strQuery);
        for(Sobject rec:lst)
        {
            system.debug(rec);
            
        }
    }
    
    

}