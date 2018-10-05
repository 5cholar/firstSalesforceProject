public class conForAcctController {
    public List<Account> accounts {get; set;}
    public List<Contact> contacts {get; set;}
    
    public conForAcctController(){
        getAllAccounts();
        getAllContacts();
    }
    
    public pageReference getAllAccounts(){
        accounts = [SELECT id, name,billingState, industry,rating, type FROM account];
        return apexPages.currentPage();
    }
    public pageReference getAllContacts(){
        contacts = [SELECT id, firstname, lastName, phone, email, accountId FROM contact];
        return apexPages.currentPage();
    }
    
    public static List<contact> getContactsByAccountId(id acctId){
        return [SELECT firstName, lastName, phone, email, accountId FROM contact WHERE accountId = :acctId];
        
    }
}