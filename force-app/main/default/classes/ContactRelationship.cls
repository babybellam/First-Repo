public class ContactRelationship {
    
    //a.When we create contact by checking contact relationship checkbox,then contact relationship will be created automatically for that contact
    
    public static void relationship(List<Contact> contactlist)
    {
        List<Contact_Relationship__c> CRlist=new List<Contact_Relationship__c>();
        for(Contact con:contactlist)
        {
           if(con.Contact_Relationship__c==True)
           {
               Contact_Relationship__c CRrecords=new Contact_Relationship__c();
               CRrecords.Name = con.LastName+'Test';
               CRrecords.Consumer__c   = con.Id;
               CRlist.add(CRrecords);
           }
        }
        Update CRlist;
        system.debug(CRlist);
    }
    
    
    
    //b.When we change the owner of the Contact relationship ,Then the Owner name will be automatically populated in the Contact relationship Name field.
     
    public static void Ownername(List<Contact_Relationship__c> contactrellist)
    {
        Set<Id> ownerids=new Set<Id>();
        Map<ID,Contact_Relationship__c> contrelMap= new  Map<ID,Contact_Relationship__c>([Select Id,ownerId from Contact_Relationship__c]);
        Map<ID,Contact_Relationship__c> ownerid=new map<ID,Contact_Relationship__c>(); 
        for(Contact_Relationship__c cont:contactrellist){
            Contact_Relationship__c newid=contrelMap.get(cont.Id);
            if(cont.OwnerId!=newid.OwnerId)
            {
                ownerids.add(newid.OwnerId);
                ownerid.put(cont.OwnerId,cont);
            }
        }
        List<Contact_Relationship__c> updationownername=new List<Contact_Relationship__c> ();
        List<User> Userlist =[Select Id,Name From User Where Id IN:ownerids];
        for(User us:Userlist)
        {
            ownerid.get(us.Id).Name=us.Name;
            //updationownername.add((String)ownerid.get(us.Id).Name=us.Name);

        }
        
        update updationownername;
        
    }
    
    
    //c.When we delete the Contact, Then contact Relationship will be deleted automatically.
    public static void Deletecontact(List<Contact> contactdellist)
    {
       List<Contact_Relationship__c> contrellist = [Select Id From Contact_Relationship__c Where Consumer__c !=Null and Consumer__c IN :contactdellist];
        if(contrellist!=Null)
        {
            Delete contrellist;
        }
        
    }
    
    
    //d. When we undelete the Contact, then contact relationship will be undeleted automatically.
    public static void undeleteautomatically(List<Contact> newcontactlist )
    {
          List<Contact_Relationship__c> undelrelationship=[Select Id,Consumer__c FROM Contact_Relationship__c Where Consumer__c IN :newcontactlist];
            if(undelrelationship.size()>0)
            UNDelete undelrelationship;
        
    }
}