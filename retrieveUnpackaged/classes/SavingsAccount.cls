public class SavingsAccount Extends BankAccount{
    
    public SavingsAccount(String username, Decimal UserBalance){
        super(username,userBalance);
    }
    public SavingsAccount(Decimal userBalance){
        super(userBalance);
    }
    public override Decimal withdraw(Decimal withdrawAmount){
    	throw new SavingsException('Not Valid');
    }
      
}