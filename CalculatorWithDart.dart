import 'dart:io';

int Ascii(String num) {
  int ascii = 0;
  int n = 1;
  int counter = num.length;
  for (int i = counter - 1; i >= 0; i--) {
    int letterAscii = (num.codeUnitAt(i) - 48);
    ascii = (letterAscii * n) + ascii;
    n = n * 10;
  }
  return ascii;
}

void main() {
  String firtsNumber;
  String secondNumber;
  var operation;
  print("Enter First Number:");
  firtsNumber = (stdin.readLineSync()!);
  print("Enter Operation (+, -, *, /)");
  operation = (stdin.readLineSync()!);
  print("Enter Second Number:");
  secondNumber = (stdin.readLineSync()!);
  print("--------------------");
  int? num1 = Ascii(firtsNumber);
  int? num2 = Ascii(secondNumber);
  int? answer = 0;

  switch (operation) {
    case "+":
      answer = num1 + num2;

      break;
    case "-":
      answer = num1 - num2;

      break;
    case "*":
      answer = num1 * num2;
      break;
    case "/":
      answer = num1 ~/ num2;

      break;
    default:
      print("!!!WRONG OPERATION");
      return;
  }
  print("$firtsNumber $operation $secondNumber = $answer");
}
