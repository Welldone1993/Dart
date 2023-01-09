class Rectangle {
  late int _height;
  late int _width;

  int get getHeight {
    return _height;
  }

  set setHeight(int height) {
    _height = height;
  }

  int get getWidth {
    return _width;
  }

  set setwidth(int width) {
    _width = width;
  }

  int Area() {
    int area = _height * _width;
    return area;
  }

  int Perimeter() {
    int perimeter = (_height + _width) * 2;
    return perimeter;
  }
}
