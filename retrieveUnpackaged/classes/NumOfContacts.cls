public class NumOfContacts {
    public static void updateNumber(List<Contact> con){
        set<id> acctId = new set<id>();
        List<Account> ListAcct = new List<Account>();
        
        for(Contact con1 : con ){
            acctId.add(con1.AccountId);
        }
        
        Map<ID, Account> conForAccounts = new Map<ID, Account>([SELECT id, Name, Number_Of_Contacts__c,(SELECT id FROM Contacts) 
                                                                FROM Account 
                                                                WHERE id = :acctId]);
        for(Contact c : con){
            Account a = conForAccounts.get(c.AccountId);
            Account acc1 = new Account();
            acc1.id = a.id;
            acc1.Number_Of_Contacts__c = a.Contacts.size();
            listAcct.add(acc1);
        }
        update listAcct;
    }
}