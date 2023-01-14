/*Write a dart program to create a class House with properties [id, name, prize].
Create a constructor of it and create 3 objects of it.
Add them to the list and print all details.*/

class House {
  House({required this.id, required this.name, required this.prize});
  int id;
  String name;
  double prize;
}

List<House> houses = [];
void main() {
  House firstHouse = House(id: 01, name: 'house1', prize: 10000);
  House secondHouse = House(id: 02, name: 'house2', prize: 15000);
  House thirdHouse = House(id: 03, name: 'house3', prize: 12000);
  houses.add(firstHouse);
  houses.add(secondHouse);
  houses.add(thirdHouse);
  for (var element in houses) {
    print(element.id);
    print(element.name);
    print(element.prize);
    print('-----');
  }
}
