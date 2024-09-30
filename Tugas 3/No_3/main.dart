class ATM {
  // Private attribute for balance
  double _balance;

  // Constructor to initialize the balance
  ATM(this._balance);

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

  // Method to check balance
  double checkBalance() {
    return _balance;
  }
}

void main() {
  // Creating an ATM object with an initial balance
  ATM myATM = ATM(1000.0);

  // Checking balance
  print('Initial balance: \$${myATM.checkBalance().toStringAsFixed(2)}');

  // Depositing money
  myATM.deposit(300.0);

  // Withdrawing money
  myATM.withdraw(150.0);

  // Checking balance after transactions
  print('Final balance: \$${myATM.checkBalance().toStringAsFixed(2)}');
}
