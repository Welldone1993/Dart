import 'dart:io';
import 'dart:math';

void main() {
  bool flag = true;
  for (; flag == true;) {
    print('---------------------------');
    print('Rock Paper Scissor? (r/p/s)\nQ:quit');
    String? human = stdin.readLineSync();
    var ai = Random();
    if (human == "q") {
      flag = false;
    } else if (ai.nextInt(2) == 0) {
      if (human == "r") {
        print("Ai: Rock => TIE!");
        continue;
      } else if (human == "p") {
        print("Ai: Rock => You WIN!");
        continue;
      } else if (human == "s") {
        print("Ai: Rock => You LOSE!");
        continue;
      }
    } else if (ai.nextInt(2) == 1) {
      if (human == "r") {
        print("Ai: Scissor => You WIN");
        continue;
      } else if (human == "p") {
        print("Ai: Scissor => You LOSE!");
        continue;
      } else if (human == "s") {
        print("Ai: Scissor => TIE!");
        continue;
      }
    } else if (ai.nextInt(2) == 2) {
      if (human == "r") {
        print("Ai: Paper => You LOSE!");
        continue;
      } else if (human == "p") {
        print("Ai: Paper => TIE!");
        continue;
      } else if (human == "s") {
        print("Ai: Paper => You WIN!");
        continue;
      }
    }
  }
}
