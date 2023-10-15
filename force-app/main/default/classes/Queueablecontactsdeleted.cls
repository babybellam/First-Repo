public class Queueablecontactsdeleted Implements Queueable{
    public void execute(Queueablecontext contxt )
    {
        Delete[Select ID From Contact Where CreatedDate =Yesterday];
        system.enqueueJob(new Queueableaccountsdeleted());
        
    }

}