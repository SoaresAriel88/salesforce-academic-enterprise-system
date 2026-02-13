public with sharing class StudyDispatcher implements TriggerDispatcher {
    public void selectContext() {

        TriggerHandler instanceTriggerHandler;

    //ERRO NA MATRICULA COM ALUNO INATIVO
        if(Trigger.isBefore){
            if(Trigger.isInsert){
                instanceTriggerHandler = (TriggerHandler) di_Injector.Org.getInstance('StudyBeforeInsertTriggerHandler');
                
                if (instanceTriggerHandler == null) {
                    return;       
                }
                instanceTriggerHandler.execute();
            }
    }
    
//QUANTIDADE DE ALUNOS EM CADA CURSO    
        
        if(Trigger.isAfter){
            if(Trigger.isUpdate){
                instanceTriggerHandler = (TriggerHandler) di_Injector.Org.getInstance('StudyAfterUpdateTriggerHandler');
                        if(instanceTriggerHandler == null){
                            return;
                        }
                instanceTriggerHandler.execute();
            }
            if(Trigger.isInsert){
                instanceTriggerHandler = (TriggerHandler) di_Injector.Org.getInstance('StudyAfterInsertTriggerHandler');
                        if(instanceTriggerHandler == null){
                            return;
                        }
                instanceTriggerHandler.execute();
            }
            if(Trigger.isDelete){
                instanceTriggerHandler = (TriggerHandler) di_Injector.Org.getInstance('StudyAfterDeleteTriggerHandler');
                        if(instanceTriggerHandler == null){
                            return;
                        }
                instanceTriggerHandler.execute();
            }
        
        }




}
   }