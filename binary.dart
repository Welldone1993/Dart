import 'dart:io';

void main() {
  List<int> sortedList = [10, 22, 33, 44, 56, 63, 71, 78, 89, 91];
  stdout.write('enter number');
  final int num = int.tryParse(stdin.readLineSync());
  int answer = binarySearch(sortedList, num);
  print(answer);
}

int binarySearch(List<int> list, int num) {
  int divide = list.length ~/ 2;
  int mid = list[divide];
  if(list.length == 1 && num != mid){
    return null;
  }
  if (num == mid) {
    return num;
  } else if (num < mid) {
    List newList = list.where((element) => element < mid).toList();
    return binarySearch(newList, num);
  } else if (num > mid) {
    List newList = list.where((element) => element > mid).toList();
    return binarySearch(newList, num);
  } else {
    return null;
  }
}
