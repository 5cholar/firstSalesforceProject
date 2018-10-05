trigger NumberOfContacts on Contact (after insert, after update, after delete) {
    
    if(Trigger.isAfter && (Trigger.isInsert || Trigger.isUpdate || Trigger.isUnDelete)){
        NumOfContacts.updateNumber(Trigger.new);
    }
    if(Trigger.isAfter && Trigger.isDelete){
        NumOfContacts.updateNumber(Trigger.old);
    }
}