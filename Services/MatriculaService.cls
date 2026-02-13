public with sharing class MatriculaService implements IMatriculaService {

    public void validarAlunoInativo(List<Study__c> study) {
      
        MatriculaSelector selector = (MatriculaSelector) di_Injector.Org.getInstance('MatriculaSelector');
        
        
        for(Study__c student : study){

        if(selector != null){
            
            if(student.Status__c == 'Inativo'){
                student.addError('Não é possível matricular um aluno inativo ');
                }
        
            }    
        }
    
    }
}