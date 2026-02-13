public with sharing class MatriculaDispatcher implements TriggerDispatcher {
    public void selectContext() {

        TriggerHandler instanceTriggerHandler;


        if(Trigger.isBefore){


            
            if(Trigger.isInsert)
            {
                instanceTriggerHandler = (TriggerHandler) di_Injector.Org.getInstance('MatriculaBeforeInsertTriggerHandler');
                
            }

            if (instanceTriggerHandler == null) {
                return;       
                
        }
    }
    
    instanceTriggerHandler.execute();
}

}