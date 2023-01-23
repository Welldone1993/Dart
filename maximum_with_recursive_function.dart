void main() {
  List num = [1, 3, 9, 1, 5, 2, 7];
  print(maximum(num));
}

int maximum(List num) {
  List num2 = [...num];
  if (num2.length > 1) {
    num2.removeLast();
    int max = num.last;
    if (max > num2.last) {
      num2.last = max;
     return maximum(num2);
    } else {
     return maximum(num2);
    }
  }
  int max = num2[0];
  return max;
}
