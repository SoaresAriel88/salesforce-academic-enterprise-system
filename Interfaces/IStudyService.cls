public interface IStudyService{

    List<Study__c> filterStatus(String status);
    void validarAlunoInativo(List<Study__c> study);
    void verifyQuantidadeStudiesForCourse(List<Study__c> newStudies);
    void verifyStudyInactiveForProfessor(List<Study__c> studies);
   
}