public with sharing class StudySelector implements IStudySelector{
       public static List<Study__c> consultaStudyName(Id professorId){
         
        List<Study__c> nameStudyList = [SELECT Id, Name FROM Study__c WHERE Curso__r.Professor__r.Id = :professorId];
            return nameStudyList;    
        }

        
        public List<Study__c> lookupStatusMatricula(String status) {
            return [SELECT Name, Status__c FROM Study__c WHERE Status__c = :status];
       
    }

        public List<AggregateResult> lookupStudyForCourse(Set<Id> courseId){
            
            return [SELECT Curso__c, COUNT(Id) FROM Study__c 
                    WHERE Status__c = 'Ativo' AND Curso__c IN :courseId GROUP BY Curso__c];
        }

        public List<Study__c> searchForstudentId(Set<Id> studiesId){

            return [SELECT Id, Name , Status__c ,Curso__r.Professor__r.Email__c, 
                    Curso__r.Professor__c
                    FROM Study__c WHERE Id IN :studiesId];
        
        }

        
    
    
    
    
}