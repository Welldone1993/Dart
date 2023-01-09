class Square {
  late int _side;

  int getSide() {
    return _side;
  }

  set setSide(int side) {
    _side = side;
  }

  int Area() {
    int area = _side * _side;
    return area;
  }

  int Perimeter() {
    int perimeter = _side * 4;
    return perimeter;
  }
}
