public with sharing class TeacherSelector {
     
    public static List<Teacher__c> consultaTeacherName(){
         List<Teacher__c> nameTeacherList = [SELECT Id, Name FROM Teacher__c];
        
         return nameTeacherList;
    }



}