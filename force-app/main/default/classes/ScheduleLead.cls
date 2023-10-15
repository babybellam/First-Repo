public class ScheduleLead implements Schedulable {
    public void execute(SchedulableContext sl){
        
        Database.executeBatch(new Leadbatchschedule());
        
    }

}