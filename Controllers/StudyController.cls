public with sharing class StudyController {
    
    @AuraEnabled(cacheable=true)
    public static List<Study__c> searchStatus(String status){
        return StudyService.filterStatus(status);
    }

    @AuraEnabled(cacheable=true)
    public static List<Study__c> searchStudyName(Id professorId){
        return StudySelector.consultaStudyName(professorId);
    }


}