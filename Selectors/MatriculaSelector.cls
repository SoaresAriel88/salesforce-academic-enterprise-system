public with sharing class MatriculaSelector implements IMatriculaSelector {

    public static List<Study__c> lookupStatusMatricula(Id alunoId) {

        List<Matricula__c> matriculaList = [
            SELECT Id, Name, Aluno__c, Aluno__r.Name, Aluno__r.Status__c
            FROM Matricula__c
            WHERE Aluno__c = :alunoId
        ];
        Set<Id> alunosIdSet = new Set<Id>();

        for(Matricula__c matricula : matriculaList){
            
            if(matricula != null){
                alunosIdSet.add(matricula.Aluno__c);
            }
            
        }
        
        Map<Id, Study__c> alunoMap = new Map<Id, Study__c>([SELECT Id, Name, Status__c FROM Study__c WHERE Id IN :alunosIdSet]);
        
        return alunoMap.values();
    }
}