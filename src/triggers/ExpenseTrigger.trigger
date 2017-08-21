trigger ExpenseTrigger on Expense__c (before update, after update) {
    if(trigger.isBefore){
        for(Expense__c exp : trigger.new){
            system.debug('Before Update Test: '+exp.Test_For_Before_Trigger_Value__c);
        }
    }
    if(trigger.isAfter){
        for(Expense__c exp : trigger.new){
            system.debug('After Update Test: '+exp.Test_For_Before_Trigger_Value__c);
        }
    }
}