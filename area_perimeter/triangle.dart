class Triangle {
  late double _altitude;
  late double _base;
  late double _side1;
  late double _side2;

  double get getAltitude {
    return _altitude;
  }

  set setAltitude(double altitude) {
    _altitude = altitude;
  }

  double get getSide1 {
    return _side1;
  }

  set setSide1(double side1) {
    _side1 = side1;
  }

  double get getSide2 {
    return _side2;
  }

  set setSide2(double side2) {
    _side2 = side2;
  }

  double get getBase {
    return _base;
  }

  set setBase(double base) {
    _base = base;
  }

  double Area() {
    double area = (_base * _altitude) / 2;
    return area;
  }

  double Perimeter() {
    double perimeter = _side1 + _side2 + _base;
    return perimeter;
  }
}
