import 'dart:io';
import 'dart:core';

//printing butterfly with delay of 250 milli second per line
Future printButterfly() async {
  for (int line = 0; line < 10; line++) {
    await Future.delayed(Duration(milliseconds: 200));
    for (int space = 0; space < line; space++) {
      stdout.write(' ');
    }
    for (int star = 10; star > line + 1; star--) {
      stdout.write('*');
    }
    for (int star = 11; star > line + 1; star--) {
      stdout.write('*');
    }
    stdout.write('\n');
    if (line == 9) {
      print('Hi, Welcome to my PARTY!!!!!!');
    }
  }
  for (int line = 0; line < 10; line++) {
    await Future.delayed(Duration(milliseconds: 200));
    for (int space = 10; space > line + 1; space--) {
      stdout.write(' ');
    }
    //mid
    for (int star = 0; star < line + 1; star++) {
      stdout.write('*');
    }
    for (int star = 0; star < line; star++) {
      stdout.write('*');
    }
    stdout.write('\n');
  }
}

//printing rules letter by letter
Future rules() async {
  String rules = """there is some rules here
  1:if you are under 18 ages years old you cant drink
  2:if you are over 18 guest you can drink maximum 5 shots
  ------------------------------------------
  """;
  int stringCounter = rules.length;
  for (int word = 0; word < stringCounter; word++) {
    await Future.delayed(Duration(milliseconds: 20));
    stdout.write(rules[word]);
  }
}
