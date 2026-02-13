public with sharing class StudyAfterDeleteTriggerHandler implements TriggerHandler {
    
    public void execute() {
        this.instanceStudyService.verifyQuantidadeStudiesForCourse(Trigger.old);
    
    
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