@isTest
public class DataFactoryTest {
    @isTest Static void numberAcct(){
        List<Account> acct = datafactory.autoNumber(2,3);
  		Account acct1 = acct[0];
        system.assertEquals(2, acct.size());
        System.assertEquals(acct1, acct[0]);
        system.debug(acct.size());
    }
    @isTest Static void numberCon(){
        List<Account> acct = datafactory.autoNumber(5,3);
        //insert acct;
        List<Contact> con = [SELECT FirstName, LastName FROM Contact WHERE AccountId = :acct];
        //Account acct1 = datafactory.autoNumber(5,3)[0];
        //Contact con = [SELECT FirstName, LastName FROM Contact WHERE id = :acct1.id];
        
        //system.assertEquals(Con.AccountId, acct1.id); 
        system.debug(Con.size());
        
    }
}