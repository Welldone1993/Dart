void main() {
  Map<String, int> fastFood = {
    'peperoni': 12,
    'margarita': 10,
    'vegeterian': 9,
  };

  List<String> order = ['peperoni', 'margarita', 'salad'];
  int bill = 0;
  for (String food in order) {
    int? price = fastFood[food];
    if (price != null) {
      print('$food registered');
      bill += fastFood[food]!;
    } else {
      print('$food in not in menu');
    }
  }
  print('your bill = \$$bill');
}
//you can use this switch method instead of if method

/*
  switch (food) {
      case 'peperoni':
        print('$food registered');
        bill += fastFood[food]!;
        break;
      case 'margarita':
        print('$food registered');
        bill += fastFood[food]!;
        break;
      case 'vegeterian':
        print('$food registered');
        bill += fastFood[food]!;
        break;
      default:
        print('$food is not in menu');
        break;
    }
*/
