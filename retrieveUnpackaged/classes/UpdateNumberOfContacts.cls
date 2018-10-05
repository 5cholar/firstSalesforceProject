public class UpdateNumberOfContacts implements Database.Batchable<sObject>, Database.stateful{
	public Integer total = 0;
    
    public Database.QueryLocator start(Database.BatchableContext BC){
        string query = 'SELECT Number_Of_Contacts__c, (SELECT Id FROM Contacts) FROM Account';
        return Database.getQueryLocator(query);
    }
    public void execute(Database.BatchableContext BC, List<sObject> scope){
        for(Account a : (List<Account>) scope){
            a.Number_Of_Contacts__c = a.Contacts.size();
            total++;
        }
        update scope;
    }
    public void finish(Database.BatchableContext BC){
        system.debug(total);
    }
}