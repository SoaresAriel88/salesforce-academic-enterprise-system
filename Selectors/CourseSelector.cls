public with sharing class CourseSelector {
    
    public static List<Course__c> consultationCourseName(Id professorId){
         List<Course__c> nameCourseList = [SELECT Id, Name FROM Course__c WHERE Professor__c = :professorId];

         return nameCourseList;

    
        }
    }