public without sharing class TrainerControllerNew {
    @AuraEnabled(cacheable=true)
    public static List<Trainer__c> getTrainerListHandler(){
        try{

            return [SELECT 
            Name,Email__c,Last_Name__c,Phone_Number__c,Photo__c,Specialities__c,Certifications__c,Availability_Schedule__c 
            FROM Trainer__c
          ];
        }
        catch(Exception exp){
            throw new AuraHandledException(exp.getMessage());
        }
       
    }
}