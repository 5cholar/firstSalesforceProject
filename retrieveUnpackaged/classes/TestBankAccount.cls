@isTest
private class TestBankAccount {
	
    @isTest Static void negativeBalance(){
        BankAccount Bank = new BankAccount(-1);
        Decimal bal = Bank.getBalance();
        system.assertEquals(-1,bal);
    }
    @isTest Static void ZeroBalance(){
        BankAccount Bank = new BankAccount(0);
        Decimal bal = Bank.getBalance();
        system.assertEquals(0,bal);
    }
    @isTest Static void hasBalance(){
        BankAccount Bank = new BankAccount(5);
        Decimal bal = Bank.getBalance();
        system.assertEquals(1,bal);
    }
    @isTest Static void zeroWithdraw(){
        BankAccount Bank = new BankAccount(5);
        bank.withdraw(0);
    }
    @isTest Static void negativeWithdraw(){
        BankAccount Bank = new BankAccount(5);
        bank.withdraw(-1);
    }
    @isTest Static void Withdraw(){
        BankAccount Bank = new BankAccount(100);
        bank.deposit(25);
        Decimal wa = bank.withdraw(75);
        Decimal bal = Bank.getBalance();
        //system.assertEquals(wa,bal);
    }
    @isTest Static void deposit(){
        BankAccount Bank = new BankAccount('Bob',100);
        bank.deposit(25);
        system.assertEquals(125,bank.getBalance());
    }
}