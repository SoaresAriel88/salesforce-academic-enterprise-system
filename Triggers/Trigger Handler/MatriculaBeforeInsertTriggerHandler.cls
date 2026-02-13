public with sharing class MatriculaBeforeInsertTriggerHandler implements TriggerHandler {
    public void execute() {
        this.instanceMatriculaService.validarAlunoInativo(Trigger.new);
    }

    private MatriculaService instanceMatriculaService
    {
        get{
            if(this.instanceMatriculaService == null){
                this.instanceMatriculaService = (MatriculaService) di_Injector.Org.getInstance('MatriculaService');
            } 
            return instanceMatriculaService;
        }
        set;
    }
    
}