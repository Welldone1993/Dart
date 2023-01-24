import 'dart:io';

import 'account_class.dart';

int accountId = 100;
Map<int, Account> bankAccount = {};

void main() {
  bool flag = true;
  while (flag) {
    String menu;
    String mainMenu;
    print('what you wanna do?\n(C)reate\n(A)ccount Info\n(E)xit\n------');
    mainMenu = stdin.readLineSync().toUpperCase();
    switch (mainMenu) {
      case 'C':
        stdout.write('Create account with how much money?');
        double initial = double.tryParse(stdin.readLineSync());
        Account account = newAccount(initial);
        print(
          'Your id is : ${accountId - 1}\n${account.showBalance}',
        );
        //create method
        break;
      case 'A':
        Account account = search();
        if (account == null) {
          print('wrong ID!!!');
          break;
        }
        print(account.showBalance);
        bool turn = true;
        while (turn) {
          print(
              'what you wanna do?\n(B)alance\n(D)eposit\n(W)ithdraw\n(E)xit\n------');
          menu = stdin.readLineSync().toUpperCase();
          switch (menu) {
            case 'B':
              print(account.showBalance);
              break;
            case 'D':
              stdout.write('How much to Deposit? :');
              double amount = double.tryParse(stdin.readLineSync());
              account.deposit(amount);
              print(account.showBalance);
              //deposite method
              break;

            case 'W':
              stdout.write('How much to WithDraw? :');
              double amount = double.tryParse(stdin.readLineSync());
              bool checker = account.withdraw(amount);
              checker
                  ? print(account.showBalance)
                  : print('insufficient balance');
              ;
              //withdraw method
              break;
            case 'E':
              turn = false;
              break;
            default:
              break;
          }
        }
        break;
      case 'E':
        flag = false;
        break;
      default:
        break;
    }
  }
}

Account newAccount(double entry) {
  Account newAccount = Account(entry);
  bankAccount[accountId] = newAccount;
  accountId++;
  return newAccount;
}

Account search() {
  stdout.write('enter Account ID:');
  int id = int.tryParse(stdin.readLineSync());
  for (var key in bankAccount.keys) {
    if (key == id) {
      return bankAccount[id];
    }
  }
  return null;
}
