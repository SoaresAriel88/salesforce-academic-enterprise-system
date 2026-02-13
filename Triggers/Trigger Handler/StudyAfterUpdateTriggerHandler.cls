public with sharing class StudyAfterUpdateTriggerHandler implements TriggerHandler {
    
    public void execute() {
        this.instanceStudyService.verifyQuantidadeStudiesForCourse(Trigger.new);
        this.instanceStudyService.verifyQuantidadeStudiesForCourse(Trigger.old);
        this.instanceStudyService.verifyStudyInactiveForProfessor(Trigger.new);
        this.instanceStudyService.verifyStudyInactiveForProfessor(Trigger.old);
    
    
    }

    private StudyService instanceStudyService
    {
        get{
            if(this.instanceStudyService == null){
                this.instanceStudyService = (StudyService) di_Injector.Org.getInstance('StudyService');
            } 
            return instanceStudyService;
        }
        set;
    }


}