/*Write a dart program to create a class Laptop
 with properties [id, name, ram] 
 and create 3 objects of it and print all details.*/
 
class Laptop {
  Laptop({
    required this.id,
    required this.name,
    required this.ram,
  }) {}
  int id;
  String name;
  int ram;
  void Info() {
    print('laptop ID : $id , model $name , $ram MB');
  }
}

void main() {
  Laptop amir = Laptop(id: 01, name: 'Vaio', ram: 8192);
  amir.ram = 8192;
  Laptop ali = Laptop(id: 02, name: 'Asus', ram: 2048);
  Laptop reza = Laptop(id: 03, name: 'HP', ram: 4096);
  amir.Info();
  ali.Info();
  reza.Info();
}
