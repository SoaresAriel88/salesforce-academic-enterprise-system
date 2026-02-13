public with sharing class StudyBeforeInsertTriggerHandler implements TriggerHandler {
    public void execute() {
        this.instanceStudyService.validarAlunoInativo(Trigger.new);
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