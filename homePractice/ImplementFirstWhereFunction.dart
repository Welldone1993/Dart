void main() {
  List num = [1, 2, 3, 4];
  final answer = FindingNum(num, (x) => x == 5, orElse: (() => -1));
  print(answer);
}

T FindingNum<T>(
  List<T> list,
  bool Function(T) checker, {
  required T Function() orElse,
}) {
  for (var element in list) {
    if (checker(element)) {
      return element;
    }
  }
  return orElse();
}
