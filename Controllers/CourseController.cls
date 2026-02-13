public with sharing class CourseController {
   
    @AuraEnabled(cacheable=true)
    public static List<Course__c> searchCourseName(Id professorId){
        return CourseSelector.consultationCourseName(professorId);
   
    }
}