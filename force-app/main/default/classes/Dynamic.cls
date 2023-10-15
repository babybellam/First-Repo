public class Dynamic {
    public string strObject;
   // public string strfields='';
   // List<String> lstrec=new List<String>();
    
    
    
    public void Search(string strObject,List<string> fields)
    {
        
        string result=string.join(fields,',');
        system.debug('Result='+result);
        string strQuery='Select '+result+' From ' +strObject;
        system.debug(strQuery);
        
        List<Sobject> lst=Database.query(strQuery);
        for(Sobject rec:lst)
        {
            system.debug(rec);
            
        }
    }
    
    
}


/*
 * 
Dynamic obj=new Dynamic();
List<string> lstrec=new List<String>();
lstrec.add('Id');
lstrec.add('Name');
lstrec.add('Rating');
obj.Search('Account',lstrec);
**/