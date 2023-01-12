void main() {
  List<dynamic> restaurants = [
    {
      'name': 'Pizza Mario',
      'cuisine': 'Italian',
      'ratings': [4.0, 3.5, 4.5],
    },
    {
      'name': 'Chez Anne',
      'cuisine': 'French',
      'ratings': [5.0, 4.5, 4.0],
    },
    {
      'name': 'Navaratna',
      'cuisine': 'Indian',
      'ratings': [4.0, 4.5, 4.0],
    },
  ];
  for (dynamic resturant in restaurants) {
    double sum = 0;
    final rating = resturant['ratings'] as List<double>;
    int index = rating.length;
    for (double rate in rating) {
      sum += rate;
    }
    double avg = sum / index;
    print('${resturant['name']} average rate is $avg');
    resturant['average rate'] = avg;
    print(resturant);
  }
}
