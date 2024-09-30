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
