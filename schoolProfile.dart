import 'dart:io';

List<String> studentName = [];
List<String> studentFamily = [];
List<String> studentBirthDate = [];
List<int> studentPersonalNumber = [];

int index = 0;
int id = 1;
void ReadStudent(String inputName, String inputFamily, String inputBirthDate,
    int inputPersonalNumber) {
  studentName.insert(index, inputName);
  studentFamily.insert(index, inputFamily);
  studentBirthDate.insert(index, inputBirthDate);
  studentPersonalNumber.insert(index, inputPersonalNumber);
  index++;
}

void AddStudent() {
  print("Student $id :");
  print("Student Name:");
  String name = (stdin.readLineSync()!);
  print("Student Family:");
  String family = (stdin.readLineSync()!);
  print("Student Birth date:");
  String birthDate = (stdin.readLineSync()!);
  print("Student Personal Number:");
  int personalNumber = (int.parse(stdin.readLineSync()!));
  id++;
  ReadStudent(name, family, birthDate, personalNumber);
}

void SearchStudent() {
  print("Enter Student Personal Number to show profile:");
  int code = int.parse(stdin.readLineSync()!);
  for (int i = 0; i < index; i++) {
    if (studentPersonalNumber[i] == code) {
      print("Name :");
      print(studentName.elementAt(i));
      print("Family :");
      print(studentFamily.elementAt(i));
      print("Birth Date :");
      print(studentBirthDate.elementAt(i));
      print("Personal number :");
      print(studentPersonalNumber.elementAt(i));
    } else {
      print("\n\n!!!Wrong Personal Number!!!\n\n");
    }
  }
}

void EditStudent() {
  print("Enter Student Personal Number to edit:");
  int code = int.parse(stdin.readLineSync()!);
  for (int i = 0; i < index; i++) {
    if (code == studentPersonalNumber[i]) {
      print(
          "What to Edit:\n1=Name, 2=Family, 3=Birthdate, 4=Personal Number, 5=Do Nothing");
      int menu = int.parse(stdin.readLineSync()!);
      switch (menu) {
        case 1:
          String name = (stdin.readLineSync()!);
          studentName[i] = name;
          break;
        case 2:
          String family = (stdin.readLineSync()!);
          studentFamily[i] = family;
          break;
        case 3:
          String birthDate = (stdin.readLineSync()!);
          studentBirthDate[i] = birthDate;
          break;
        case 4:
          int personalNumber = int.parse(stdin.readLineSync()!);
          studentPersonalNumber[i] = personalNumber;
          break;
        case 5:
          break;
      }
    } else {
      print("\n\n!!!Wrong Personal Number!!!\n\n");
    }
  }
}

void DeleteStudent() {
  print("Enter Personal Number to Delete:");
  int code = int.parse(stdin.readLineSync()!);
  for (int i = 0; i < index; i++) {
    if (studentPersonalNumber[i] == code) {
      studentName.removeAt(i);
      studentFamily.removeAt(i);
      studentBirthDate.removeAt(i);
      studentPersonalNumber.removeAt(i);
    } else {
      print("\n\n!!!Wrong Personal Number!!!\n\n");
    }
    index--;
  }
}

void AllStudentInfo() {
  int code = 1;
  for (int i = 0; i < index; i++) {
    print("\nStudent ID:$code\n");

    print("Name :");
    print(studentName.elementAt(i));
    print("Family :");
    print(studentFamily.elementAt(i));
    print("Birth Date :");
    print(studentBirthDate.elementAt(i));
    print("Personal number :");
    print(studentPersonalNumber.elementAt(i));
    code++;
  }
}

void main() {
  bool flag = false;

  for (; flag == false;) {
    print(
        "select What to do:\n0:Close Program\n1:Addstudent\n2:Show info of student\n3:Edit info\n4:Delete Student\n5:Show All Student Info");
    int menu = int.parse(stdin.readLineSync()!);

    switch (menu) {
      case 0:
        flag = true;
        break;
      case 1:
        AddStudent();
        break;
      case 2:
        SearchStudent();
        break;
      case 3:
        EditStudent();
        break;
      case 4:
        DeleteStudent();
        break;
      case 5:
        AllStudentInfo();
        break;
    }
  }
}
