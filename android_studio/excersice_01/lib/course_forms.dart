import 'dart:io';
import 'main.dart';
import 'course_class.dart';

void courses() {
  int menu = 0;
  bool flag = true;
  while (flag == true) {
    print(
      '1:Add Course\n2:Edit Course info\n3:Delete Course\n4:Show List of Course\n0:EXIT',
    );
    menu = int.tryParse(stdin.readLineSync());
    switch (menu) {
      case 0:
        flag = false;
        break;
      case 1:
        addCourse();
        break;
      case 2:
        editCourseInfo();
        break;
      case 3:
        deleteCourse();
        break;
      case 4:
        courseInfoLog();
        break;
      default:
        print('Wrong menu number!!!');
        break;
    }
  }
}

void addCourse() {
  print('Enter Id:');
  int id = int.tryParse(stdin.readLineSync());
  print('Enter name:');
  String courseName = stdin.readLineSync();
  print('Enter unit:');
  int unit = int.tryParse(stdin.readLineSync());

  Course newCourse = Course(id, courseName, unit);
  courseLog.add(newCourse);
}

int searchCourse() {
  print("Enter ID:");
  int num = int.tryParse(stdin.readLineSync());
  if (num == -1) {
    return -1;
  }
  int indexCounter = 0;
  int index = courseLog.length;
  for (int i = 0; i < index; i++) {
    if (num == courseLog[i].id) {
      indexCounter = i;
      return indexCounter;
    }
  }
  return -1;
}

void editCourseInfo() {
  int index = searchCourse();
  int changer = courseLog[index].id;
  if (index != -1) {
    print(courseLog[index].id);
    print(courseLog[index].courseName);
    print(courseLog[index].unit);
    int menu = 0;

    print("1:Edit ID\n2:Edit course name\n3:Edit unit\n0:EXIT");
    menu = int.tryParse(stdin.readLineSync());
    switch (menu) {
      case 0:
        break;
      case 1:
        courseLog[index].id = int.tryParse(stdin.readLineSync());
        break;
      case 2:
        courseLog[index].courseName = stdin.readLineSync();
        break;
      case 3:
        courseLog[index].unit = int.tryParse(stdin.readLineSync());
        break;
    }
    for (var item in studentsLog) {
      for (var item2 in item.course) {
        if (changer == item2.id) {
          item2.id = courseLog[index].id;
          item2.courseName = courseLog[index].courseName;
          item2.unit = courseLog[index].unit;
        }
      }
    }
  } else {
    print("Wrong Number");
  }
}

void deleteCourse() {
  int index = searchCourse();
  if (index != 0) {
    courseLog.removeAt(index);
  } else {
    print("Wrong Number");
  }
}

void courseInfoLog() {
  for (var index in courseLog) {
    stdout.write('ID:');
    print(index.id);
    stdout.write('Course name:');
    print(index.courseName);
    stdout.write('number of units:');
    print(index.unit);
    print("-------------------");
  }
}
