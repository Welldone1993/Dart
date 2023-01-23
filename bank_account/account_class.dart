class Account {
  double _balance;
  Account(double balance) {
    this._balance = balance;
  }

//deposit method
  void deposit(double amount) {
    print('Done + $amount');
    _balance += amount;
  }

//withdraw method
  bool withdraw(double amount) {
    if (_balance < amount) {
      return false;
    } else {
      _balance -= amount;
      return true;
    }
  }

  String get showBalance => 'your Balance is : $_balance';
}
