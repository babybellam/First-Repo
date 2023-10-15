public class Queueableaccountsdeleted Implements Queueable{
     public void execute(Queueablecontext contxt)
    {
       Delete[Select ID From Account Where CreatedDate =Last_Year];
    }

}