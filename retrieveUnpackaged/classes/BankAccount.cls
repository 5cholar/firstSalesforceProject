public virtual class BankAccount {
    private Integer accountNum;
	Protected Decimal balance;
    private string accountName;
      
    public BankAccount(String username, Decimal UserBalance){
        accountName = username;
        balance = userBalance;
    }
    public BankAccount(Decimal userBalance){
        balance = userBalance;
    }
    public virtual Decimal withdraw(Decimal withdrawAmount){
        if(withdrawAmount <= 0) throw new BankException('Invalid Operation');
        return balance -= withdrawAmount;
    }
    public void deposit(Decimal depositAmount){
        if(depositAmount <= 0) throw new BankException('Invalid Operation');
        balance += depositAmount;
    }    
    public Decimal getBalance(){
        while(balance <= 0){
           throw new BankException('Invalid Balance'); 
        }
        //if(balance <= 0) throw new BankException('Invalid Balance');
        return balance;
    }
    /*
    public String getAcctName(){
        return accountName;
    }
    public void setAcctName(String name){
        accountName += name;
    }
    */
}