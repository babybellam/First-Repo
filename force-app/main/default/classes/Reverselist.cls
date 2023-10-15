public class Reverselist {
    
    public void displayList()
    {
        List<integer> lstvalues=new List<integer>{5,4,3,2};
         List<integer> Finallst=new List<integer>();
            integer z=lstvalues.size();
        
        for(integer x=z-1;x>=0;x--)
        {
            Finallst.add(lstvalues[x]);
            
        }
        system.debug('Old List =' +lstvalues);
        system.debug('size of first List =' +z);
        system.debug('New List =' +Finallst ); 
    }

}


/*
 Reverselist obj=new Reverselist();
obj.displayList();

**/