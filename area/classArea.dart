import 'dart:io';

class Area {
  late int _width;
  late int _height;
  Area(this._height, this._width);
  int get getHeight {
    return _height;
  }

  int get getwidth {
    return _width;
  }

  set setHeight(int height) {
    _height = height;
  }

  set setwidth(int width) {
    _width = width;
  }
}
