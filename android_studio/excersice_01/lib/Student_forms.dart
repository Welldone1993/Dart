import 'dart:io';
import 'course_class.dart';
import 'course_forms.dart';
import 'student_class.dart';
import 'main.dart';

void students() {
  int menu = 0;
  bool flag = true;
  while (flag == true) {
    print(
      '1:Add Student\n2:Edit Student info\n3:Delete Student\n4:Show List of Student\n5:Student Courses\n0:EXIT',
    );
    menu = int.tryParse(stdin.readLineSync());
    switch (menu) {
      case 0:
        flag = false;
        break;
      case 1:
        addStudent();
        break;
      case 2:
        editInfo();
        break;
      case 3:
        deleteStudent();
        break;
      case 4:
        studentInfoLog();
        break;
      case 5:
        int index = searchStudent();
        studentCourse(index);
        break;
      default:
        print('Wrong menu number!!!');
        break;
    }
  }
}

void addStudent() {
  print('Enter Id:');
  int idStudent = int.tryParse(stdin.readLineSync());
  print('Enter name:');
  String name = stdin.readLineSync();
  print('Enter family:');
  String family = stdin.readLineSync();
  List<Course> selectedCourses = addStudentCourses();

  Student newStudent = Student(idStudent, name, family, selectedCourses);
  studentsLog.add(newStudent);
}

int searchStudent() {
  print("Enter ID:");
  int num = int.tryParse(stdin.readLineSync());
  int indexCounter = 0;
  int index = studentsLog.length;
  for (int i = 0; i < index; i++) {
    if (num == studentsLog[i].id) {
      indexCounter = i;
      return indexCounter;
    }
  }
  return 0;
}

void editInfo() {
  int index = searchStudent();
  if (index != -1) {
    print(studentsLog[index].id);
    print(studentsLog[index].name);
    print(studentsLog[index].family);
    studentCourse(index);

    int menu = 0;
    print("1:Edit ID\n2:Edit name\n3:Edit Family\n4:Edit courses\n0:EXIT");
    menu = int.tryParse(stdin.readLineSync());
    switch (menu) {
      case 0:
        break;
      case 1:
        studentsLog[index].id = int.tryParse(stdin.readLineSync());
        break;
      case 2:
        studentsLog[index].name = stdin.readLineSync();
        break;
      case 3:
        studentsLog[index].family = stdin.readLineSync();
        break;
      case 4:
        studentsLog[index].course = addStudentCourses();
        break;
    }
  } else {
    print("Wrong Number");
  }
}

void deleteStudent() {
  int index = searchStudent();
  if (index != -1) {
    studentsLog.removeAt(index);
  } else {
    print("Wrong Number");
  }
}

void studentInfoLog() {
  for (var index in studentsLog) {
    print(index.id);
    print(index.name);
    print(index.family);
    int i = studentsLog.indexOf(index);
    studentCourse(i);
  }
  print("-------------------");
}

void studentCourse(index) {
  List<Course> courseList = studentsLog[index].course;
  for (int i = 0; i < courseList.length; i++) {
    print('******');
    stdout.write('Course iD:');
    print(courseList[i].id);
    stdout.write('Course Name:');
    print(courseList[i].courseName);
    stdout.write('Course Unit:');
    print(courseList[i].unit);
    print('******');
  }
}

List<Course> addStudentCourses() {
  print('Entire Courses');
  List<Course> selectedCourses = [];
  bool endAddingCourse = false;
  while (endAddingCourse == false) {
    courseInfoLog();
    print('Enter course id to add and -1 to end adding');
    int index = searchCourse();
    if (index == -1) {
      endAddingCourse = true;
    }
    if (index != -1) {
      int id = courseLog[index].id;
      String courseName = courseLog[index].courseName;
      int unit = courseLog[index].unit;
      Course newCourse = Course(id, courseName, unit);
      selectedCourses.add(newCourse);
    }
  }
  return selectedCourses;
}
