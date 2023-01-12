void main() {
  Set a = {1, 3};
  Set b = {3, 5};
  Set result = a.union(b).difference(a.intersection(b));

  print('result set is $result');
  int sum = 0;
  for (int index in result) {
    sum += index;
  }
  print('result sum is $sum');
}
