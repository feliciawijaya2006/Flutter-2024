// Base class: BankAccount
class BankAccount {
  // Private attribute for balance
  double _balance;

  // Constructor to initialize the balance
  BankAccount(this._balance);

  // Method to deposit money
  void deposit(double amount) {
    if (amount > 0) {
      _balance += amount;
      print('Deposit successful. Current balance: \$${_balance.toStringAsFixed(2)}');
    } else {
      print('Deposit amount must be positive.');
    }
  }

  // Method to withdraw money
  void withdraw(double amount) {
    if (amount > 0 && amount <= _balance) {
      _balance -= amount;
      print('Withdrawal successful. Current balance: \$${_balance.toStringAsFixed(2)}');
    } else if (amount > _balance) {
      print('Insufficient funds.');
    } else {
      print('Withdrawal amount must be positive.');
    }
  }

  // Method to check the balance
  double checkBalance() {
    return _balance;
  }
}

// Subclass: SavingsAccount inherits BankAccount
class SavingsAccount extends BankAccount {
  // Interest rate attribute
  double interestRate;

  // Constructor to initialize balance and interest rate
  SavingsAccount(double balance, this.interestRate) : super(balance);

  // Method to apply interest to the balance
  void applyInterest() {
    double interest = checkBalance() * interestRate / 100;
    deposit(interest);
    print('Interest applied. Interest: \$${interest.toStringAsFixed(2)}. New balance: \$${checkBalance().toStringAsFixed(2)}');
  }
}

void main() {
  // Creating a SavingsAccount object
  SavingsAccount savingsAccount = SavingsAccount(1000.0, 5.0);

  // Checking balance
  print('Initial Balance: \$${savingsAccount.checkBalance().toStringAsFixed(2)}');

  // Deposit money
  savingsAccount.deposit(500);

  // Withdraw money
  savingsAccount.withdraw(200);

  // Apply interest
  savingsAccount.applyInterest();
}
