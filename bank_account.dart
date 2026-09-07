
class BankAccount {
  String name;
  String accountNumber;
  int _balance;

  BankAccount(this.name, this.accountNumber, this._balance) {
    print('Bank account created');
  }

  void deposit(int tk) {
    if (tk <= 0) {
      print('Invalid amount');
    } else {
      _balance = _balance + tk;
      print('After Deposit: Balance: $_balance');
    }
  }

  void withdraw(int tk) {
    if (tk <= 0) {
      print('Invalid amount');
      return;
    } else if (tk > _balance) {
      print('Insufficient balance');
      return;
    } else {
      _balance = _balance - tk;
      print('After Withdrawal: Balance: $_balance');
    }
  }

  void displayAccountInfo() {
    print('Account Holder: $name');
    print('Account Number: $accountNumber');
    print('Balance: $_balance');
  }
}

void main() {
  BankAccount account1 = BankAccount(
    'Rahim',
    '1001',
    5000,
  );

  account1.displayAccountInfo();

  account1.deposit(2000);

  account1.withdraw(1500);

  print('');
  BankAccount account2 = BankAccount(
    'Karim',
    '1002',
    8000,
  );

  account2.displayAccountInfo();
}

