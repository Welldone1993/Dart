import 'dart:io';
import 'dart:math';

void main() {
  print('Your new password is:');
for (var element in PasswordGenerate()) {
  stdout.write(element);
}
}
List PasswordGenerate() {
  List<String> passWord = [];
  for (var i = 0; i < 8; i++) {
    int randomNumber = (Random().nextInt(93)) + 33;
    String letter = String.fromCharCode(randomNumber);
    passWord.add(letter);
  }
  return passWord;
}
