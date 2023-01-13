class Restaurant {
  const Restaurant({
    required this.name,
    required this.cuisine,
    required this.ratings,
  });
  final String name;
  final String cuisine;
  final List<double> ratings;

  void total() {
    if (ratings.length != 0) {
      print(ratings.reduce((value, element) => value += element));
    } else {
      print('No Ratings yet!');
    }
  }

  double get avg {
    if (ratings.length != 0) {
      double sum = ratings.reduce((value, element) => value += element);
      return sum / ratings.length;
    } else {
      return 0;
    }
  }
}

void main() {
  Restaurant pizza = Restaurant(
    name: 'lavia',
    cuisine: 'italy',
    ratings: [1],
  );
  print(pizza.avg);
  pizza.total();
}
