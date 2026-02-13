trigger StudyTrigger on Study__c (before insert, after update, after insert, after delete) {

    TriggerDispatcher instanceDispatcher = (TriggerDispatcher) di_injector.Org.getInstance('StudyDispatcher');

    instanceDispatcher.selectContext();

}