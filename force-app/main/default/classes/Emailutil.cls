public class Emailutil {
    Public static void sendingEmail( List<Lead> dailyrec)
    {
        Messaging.SingleEmailMessage message=new Messaging.SingleEmailMessage();
        message.toaddresses=new String[]{userinfo.getUserEmail()};
            message.subject='Test Message';
        //message.plaintextbody='The following Records are created today with NOT CONTACTED as status' + dailyrec;
        
        message.plaintextbody='The following Records are created today with NOT CONTACTED as status' + dailyrec;
        Messaging.SingleEmailMessage[] messages=new list<Messaging.SingleEmailMessage> {message};
            Messaging.SendEmailResult[] results=messaging.sendEmail(messages);
        if(results[0].success){
            system.debug('The email was sent successfully');
        }
        else
        {
            system.debug('The email Failed to send ::' +results[0].errors[0].message);
        }
        
        
    } 
    
}