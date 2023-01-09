class Circle {
  late double _radius;
  double get getRadius {
    return _radius;
  }

  set setRadius(double radius) {
    _radius = radius;
  }

  double Area() {
    double area = (_radius * _radius * 3.14);
    return area;
  }

  double Perimeter() {
    double perimeter = _radius * 2 * 3.14;
    return perimeter;
  }
}
