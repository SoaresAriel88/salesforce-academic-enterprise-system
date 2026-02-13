public with sharing class TeacherController {
    
    @AuraEnabled(cacheable=true)
    public static List<Teacher__c> searchTeacherName(){
         
        return TeacherSelector.consultaTeacherName();
    }
}