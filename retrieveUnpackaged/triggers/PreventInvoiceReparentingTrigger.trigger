trigger PreventInvoiceReparentingTrigger on Invoice__c (before update) {
    if(trigger.isBefore){
        for(Invoice__c iv : trigger.new){
            if(string.isNotEmpty(iv.AccountID__c)){
                iv.addError('You can\'t change this Account!');
            }
        }
    }
}