public interface IStudySelector{
    List<Study__c> consultaStudyName(Id professorId);
    List<Study__c> lookupStatusMatricula(String status);
    List<AggregateResult> lookupStudyForCourse(Set<Id> courseId);
    List<Study__c> searchforstudentId(Set<Id> studiesId);
}