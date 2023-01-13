import 'dart:io';

void main() {
  List num = [1, 3, 4, 5, 6, 2, 6, 8, 1];
  final result = FindingNum(num, (x) => x.isOdd);

  print(result);
}

List<T> FindingNum<T>(List<T> list, bool Function(T) odd) {
  List<T> check = [];
  for (var element in list) {
    if (odd(element)) {
      check.add(element);
    }
  }
  return check;
}
