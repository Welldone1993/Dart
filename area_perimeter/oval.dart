import 'dart:math';

class Oval {
  late double _shortRadius;
  late double _longRadius;

  double get getShortRadius {
    return _shortRadius;
  }

  set setShortRadius(double shortRadius) {
    _shortRadius = shortRadius;
  }

  double get getLongRadius {
    return _longRadius;
  }

  set setLongRadius(double longRadius) {
    _longRadius = longRadius;
  }

  double Area() {
    double area = 3.14 * _longRadius * _shortRadius;
    return area;
  }

  double Perimeter() {
    double perimeter = (2 * 3.14) *
        (sqrt(
            ((_longRadius * _longRadius) + (_shortRadius * _shortRadius)) / 2));
    return perimeter;
  }
}
