public class DataFactory {
    
    public static List<Account> autoNumber(Integer numOfAccts, Integer conPerAccts){
        List<Account> accts = new List<Account>();
        for(Integer i = 0; i < numOfAccts; i++){
            Account a = new Account(Name='Account' + i);
            accts.add(a);
        }
        insert accts;
        
        List<Contact> cons = new List<Contact>();
        for(Integer k = 0; k < accts.size(); k++){
            Account acct = accts[k];
            
            for(Integer x = 0; x < conPerAccts; x++){
                cons.add(new contact(FirstName='Account ' + Acct.Name , LastName= 'Contact' + x, AccountId = acct.Id));
            }
        }
        insert cons;
        return accts;
    }
}