public with sharing class StudyService implements IStudyService {
   

    public static List<Study__c> filterStatus(String status){

    List<Study__c> studyList = new List<Study__c>();
    
    if(status == 'Todos'){
        studyList = [SELECT Name, Status__c FROM Study__c];
    } else if (status == 'Ativo'){
        studyList = [SELECT Name, Status__c FROM Study__c WHERE Status__c = 'Ativo'];
    } else if (status == 'Inativo'){
        studyList = [SELECT Name, Status__c FROM Study__c WHERE Status__c = 'Inativo'];
    }
      return studyList;
}   
//TRIGGERS ALUNOS INVATIVOS NÃO PODEM SE MATRICULAR

       public void validarAlunoInativo(List<Study__c> study) {
      
        StudySelector selector = (StudySelector) di_Injector.Org.getInstance('StudySelector');
        
        for(Study__c student : study){
            if(selector != null){
                if(student.Status__c == 'Inativo'){
                    student.addError('Não é possível matricular um aluno inativo ');
                }
        
            }    
        }
    
    }
// TRIGGERS QUANTIDADE DE ALUNOS POR CURSO

    
    public void verifyQuantidadeStudiesForCourse(List<Study__c> newStudies){
        
        StudySelector selectorQtdAlunos = (StudySelector) di_Injector.Org.getInstance('StudySelector');
        Set<Id> courseId = new Set<Id>();
        
        for(Study__c study : newStudies){
            courseId.add(study.Curso__c);
            
        }
        List<AggregateResult> listAggregateResult = selectorQtdAlunos.lookupStudyForCourse(courseId);

        List<Course__c> listCourse = new List<Course__c>();
        for(AggregateResult courseResult : listAggregateResult){
            Course__c course = new Course__c();
            course.Id = (Id) courseResult.get('Curso__c');
            course.Qtd_Alunos__c = (Integer) courseResult.get('expr0');
            listCourse.add(course);
        }
        System.debug(listCourse);

        if(listCourse != null){
            update listCourse;
        }
    }

 // VERIRICAÇÃO DO ALUNO INVATIVO E NOTIFICANDO EMAIL DO PROFESSOR   
    
    public void verifyStudyInactiveForProfessor(List<Study__c> quantityStudies){

        Set<Id> studiesId = new Set<Id>();
        
        StudySelector selectorVerifyStatus = (StudySelector) di_Injector.Org.getInstance('StudySelector');
        
          for(Study__c study : quantityStudies){
            if(study.Status__c == 'Inativo'){
                studiesId.add(study.Id);
            }
        }
        
        List<Study__c> listStudiesAndTeachers = selectorVerifyStatus.searchForstudentId(studiesId);
    
        Map<Id, List<Study__c>> mapStudiesAndTeachers = new Map<Id, List<Study__c>>();
      
        List<String> listTeacherEmail = new List<String>();
        
        for(Study__c studyResult : listStudiesAndTeachers){
            Id professorId = studyResult.Curso__r.Professor__c;
            mapStudiesAndTeachers.put(professorId, listStudiesAndTeachers);

            }
    
    Messaging.SingleEmailMessage myMail = new Messaging.SingleEmailMessage();
    OrgWideEmailAddress owea = new OrgWideEmailAddress();
    owea = [SELECT Id, Address, DisplayName FROM OrgWideEmailAddress WHERE DisplayName = 'URS - Salesforce'];
    
    
    
        System.debug(mapStudiesAndTeachers);
    	}
	}