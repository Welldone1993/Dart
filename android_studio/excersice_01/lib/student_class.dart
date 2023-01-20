import 'course_class.dart';

class Student {
  Student(
    this.id,
    this.name,
    this.family,
    this.course,
  );

  int id;
  String name;
  String family;
  List<Course> course;
}
