void main() {
  int bananas = 5;
  int apples = 6;
  Map<String, dynamic> grains = {
    'pasta': '500g',
    'rice': '1kg',
  };
  bool buyBanana = false;
  if (bananas > 0) {
    buyBanana = true;
  }
  bool buyApple = false;
  if (apples > 0) {
    buyApple = true;
  }

  Map<String, dynamic> shoppingList = {
    if (buyBanana) 'Bananas': bananas,
    if (buyApple) 'Apple': apples,
    for (var grain in grains.entries) grain.key: grain.value,
    // ...grains -------> we can use this syntax for shorter version of addAll
  };
  print(shoppingList);
}

// we can use conditions for banana and apple inside the shoppingList Map
