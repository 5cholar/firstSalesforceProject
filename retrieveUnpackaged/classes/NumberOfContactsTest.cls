@isTest
public class NumberOfContactsTest {
    @isTest static void numOfCon(){
        Account acc = new Account();
        acc.Name = 'Test1';
        insert acc;
        
        Contact con = new Contact();
        con.AccountId = acc.Id;
        con.FirstName = 'John';
        con.LastName = 'Doe';
        insert con;
        
        account testAcc = [SELECT id, Name, Number_Of_Contacts__c,(SELECT id FROM Contacts) 
                           FROM Account 
                           WHERE id = :acc.id limit 1];
        system.assertEquals(1, testAcc.Number_Of_Contacts__c);
        
        delete con;
    }
}