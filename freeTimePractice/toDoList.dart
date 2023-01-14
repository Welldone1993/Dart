import 'dart:io';

void main() {
  List? toDo = [];
  int menu = 0;
  bool flag = true;
  for (; flag == true;) {
    print('----------');
    print('1:add\n2:delete\n3:ShowList\n0:EXIT');
    print('----------');
    menu = int.parse(stdin.readLineSync()!);
    switch (menu) {
      case 0:
        flag = false;
        break;
      case 1:
        print('Enter a Task:');
        String add = stdin.readLineSync()!;
        toDo.add(add);
        break;
      case 2:
        print('Etere what to Delete:');
        String deleteItem = stdin.readLineSync()!;
        toDo.removeWhere((element) => element == deleteItem);
        break;
      case 3:
      print('####################');
        int counter = 1;
        print('Here what to Do:');
        for (String item in toDo) {
          print('$counter : $item');
          counter++;
        }
        print('####################');
        break;
      default:
        print('Wrong number of menu!');
        break;
    }
  }
}
