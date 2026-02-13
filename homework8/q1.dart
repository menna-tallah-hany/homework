void main() {
  Bank bankAccount = Bank();
  bankAccount._balance = 2000.100;
  print( bankAccount._balance);
  bankAccount.balance = 2000.500;
  print( bankAccount._balance);
  bankAccount.balance = -20000;
  print( bankAccount._balance);
}class Bank {
  double _balance = 0;
  double get balance => _balance;
  set balance(double value) {
    if (value <= 0) {
      print("invalid balance");
    } else {
      _balance = value;
    }
  }
}

