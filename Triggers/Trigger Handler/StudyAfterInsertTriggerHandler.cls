public with sharing class StudyAfterInsertTriggerHandler implements TriggerHandler {
    
    public void execute() {
        this.instanceStudyService.verifyQuantidadeStudiesForCourse(Trigger.new);
    
    
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