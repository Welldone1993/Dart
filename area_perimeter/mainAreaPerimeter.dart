import 'dart:io';
import 'Circle.dart';
import 'oval.dart';
import 'rectangle.dart';
import 'square.dart';
import 'triangle.dart';

void main() {
  bool flag = true;
  for (; flag == true;) {
    print("-----------------------------------------------------------");
    print("1:Rectangle\n2:Square\n3:Triangle\n4:Circle\n5:Oval\n0:EXIT");
    print("-----------------------------------------------------------");
    int menu = int.parse(stdin.readLineSync()!);
    switch (menu) {
      case 1:
        Rectangle rectangle = Rectangle();
        print("Enter Height of Rectangle:");
        rectangle.setHeight = int.parse(stdin.readLineSync()!);
        print("Enter width of Rectangle:");
        rectangle.setwidth = int.parse(stdin.readLineSync()!);
        print("Area of Rectangle is:  ${rectangle.Area()}");
        print("Perimeter of Rectangle is: ${rectangle.Perimeter()}");
        break;
      case 2:
        Square square = Square();
        print("Enter Side of Square:");
        square.setSide = int.parse(stdin.readLineSync()!);
        print("Area of Square is: ${square.Area()}");
        print("Perimeter of Square is:  ${square.Perimeter()}");
        break;
      case 3:
        Triangle triangle = Triangle();
        print("Enter Side 1 of Triangle:");
        triangle.setSide1 = double.parse(stdin.readLineSync()!);
        print("Enter Side 2 of Triangle:");
        triangle.setSide2 = double.parse(stdin.readLineSync()!);
        print("Enter Base (Side 3) of Triangle:");
        triangle.setBase = double.parse(stdin.readLineSync()!);
        print("Enter Altitude of Triangle:");
        triangle.setAltitude = double.parse(stdin.readLineSync()!);
        print("Area of Triangle is: ${triangle.Area()}");
        print("Perimeter of Triangle is:  ${triangle.Perimeter()} ");
        break;
      case 4:
        Circle circle = Circle();
        print("Enter Radius:");
        circle.setRadius = double.parse(stdin.readLineSync()!);
        print("Area of Circle is: ${circle.Area()}");
        print("Perimeter of Circle is ${circle.Perimeter()}");
        break;
      case 5:
        Oval oval = Oval();
        print("Enter Long Radius:");
        oval.setLongRadius = double.parse(stdin.readLineSync()!);
        print("Enter Short Radius:");
        oval.setShortRadius = double.parse(stdin.readLineSync()!);
        print("Area of oval is: ${oval.Area()}");
        print("Perimeter of oval is: ${oval.Perimeter()}");

        break;
      default:
        flag = false;
    }
  }
}
