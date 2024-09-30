import 'class.dart';
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
