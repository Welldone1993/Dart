import 'dart:io';
import 'pvarea.dart';

void main() {
  Area square = Area(10,10);
  square.setHeight = int.parse(stdin.readLineSync()!);
  square.setwidth = int.parse(stdin.readLineSync()!);
  print((square.getHeight) * (square.getwidth));
}
