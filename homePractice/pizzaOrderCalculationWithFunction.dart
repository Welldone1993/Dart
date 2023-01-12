void main() {
  const order = ['margherita', 'pepperoni', 'pineapple'];
  print('your bill is \$${OrderCalculation(order)}');
}

double OrderCalculation(List<String> order) {
  double bill = 0.0;
  const pizzaPrices = {
    'margherita': 5.5,
    'pepperoni': 7.5,
    'vegetarian': 6.5,
  };
  for (var item in order) {
    final price = pizzaPrices[item];
    if (price != null) {
      bill += price;
    } else {
      print('${item} pizza is not in menu!');
    }
  }
  return bill;
}
