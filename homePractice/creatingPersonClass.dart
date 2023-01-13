class Person {
  Person({
    required this.name,
    required this.age,
    required this.height,
  });
  final String name;
  final int age;
  final double height;
  void PrintDscribtion() {
    print(
      'my name is $name , i\'m $age and i\'m $height meter tall',
    );
  }
}

void main() {
  Person man = Person(
    name: 'Amir',
    age: 30,
    height: 1.79,
  );
  man.PrintDscribtion();
}
