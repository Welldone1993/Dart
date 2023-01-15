import 'dart:io';

class Student {
  late int id;
  late String name;
  late String lastName;
}

List<Student> student = [];
void main() {
  int menu = 0;
  bool flag = true;

  for (; flag == true;) {
    print(
      'MENU:\n1:Add Student\n2:Edit Student\n3:Delete Student\n4:Show List of Student\n0:EXIT\n----------',
    );
    menu = int.parse(stdin.readLineSync()!);
    switch (menu) {
      case 0:
        flag = false;
        break;
      case 1:
        AddStudent();
        break;
      case 2:
        EditStudent();
        break;
      case 3:
        DeleteStudent();
        break;
      case 4:
        ShowList();
        break;
      default:
        print('Wrong menu!');
        break;
    }
  }
}

void AddStudent() {
  Student newStudent = Student();
  print('Enter new ID:');
  newStudent.id = int.parse(stdin.readLineSync()!);
  print('Enter Name:');
  newStudent.name = stdin.readLineSync()!;
  print('Enter Lastname:');
  newStudent.lastName = stdin.readLineSync()!;
  student.add(newStudent);
  print('---DONE---');
}

void EditStudent() {
  int index = Search();
  if (index != -1) {
    print(student[index].name);
    print(student[index].lastName);
    print(student[index].id);
    int menu = 0;
    print(
      'What do you want to Edit?\n1:Edit ID\n2:Edit Name\n3:Edit Lastname\n0:EXIT',
    );
    menu = int.parse(stdin.readLineSync()!);

    switch (menu) {
      case 0:
        break;
      case 1:
        print('Enter new ID:');
        student[index].id = int.parse(stdin.readLineSync()!);
         print('---DONE---');
        break;
      case 2:
        print('Enter new Name:');
        student[index].name = stdin.readLineSync()!;
         print('---DONE---');
        break;
      case 3:
        print('Enter new Lastname:');
        student[index].lastName = stdin.readLineSync()!;
         print('---DONE---');
        break;
      default:
        print('Wrong menu!!!');
        break;
    }
  }
}

void DeleteStudent() {
  int index = Search();
  if (index != -1) {
    student.removeAt(index);
    print('DONE');
  }
}

void ShowList() {
  print('-------------------');
  for (var index in student) {
    print('ID : ${index.id}');
    print('Name : ${index.name}');
    print('Lastname : ${index.lastName}');
    print('-------------------');
  }
}

int Search() {
  print('Enter ID:');
  int idNum = int.parse(stdin.readLineSync()!);
  int indexCounter = 0;
  int index = student.length;
  for (int i = 0; i < index; i++) {
    if (idNum == student[i].id) {
      indexCounter = i;
      return indexCounter;
    } else {
      print('Wrong ID!!!!');
    }
  }
  return -1;
}
