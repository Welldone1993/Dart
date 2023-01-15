import 'dart:io';
import 'Student_forms.dart';
import 'course_forms.dart';
import 'student_class.dart';
import 'course_class.dart';

List<Student> studentsLog = [];
List<Course> courseLog = [];

void main() {
  int menu = 0;
  bool flag = true;
  while (flag == true) {
    print('1:Student menu\n2:Courses menu\n0:EXIT');
    menu = int.tryParse(stdin.readLineSync());
    switch (menu) {
      case 0:
        flag = false;
        break;
      case 1:
        students();
        break;
      case 2:
        courses();
        break;
    }
  }
}
