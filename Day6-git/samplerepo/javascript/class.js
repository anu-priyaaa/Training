class Account{
    constructor(accNo, holderName, balance){
        this.accNo = accNo;
        this.holderName = holderName;
        this.balance = balance
    }
    getBalance(){
        return this.balance;
    }
    deposit(amount) {
        if (amount > 0) { // Check if the amount is valid
            this.balance += amount;
            console.log(`${amount} deposited successfully. Account No: ${this.accNo.slice(-5)}
            Available Balance: ${this.balance}`);
        } else {
            console.log("Invalid amount");
        }
    }
}

// Create an instance of the Account class
const acc1 = new Account('453475435', 'John Doe', 1000);

// Test the deposit method
acc1.deposit(500); // 500 deposited successfully. Account No: 5435
                   // Available Balance: 1500
acc1.deposit(-100); // Invalid amount

// Check the balance
console.log('Balance:', acc1.getBalance()); // Balance: 1500