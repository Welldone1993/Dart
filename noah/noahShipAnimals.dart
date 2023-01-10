import 'dart:io';
import 'noahShipFoods.dart';

abstract class Animal {
  late String name;
  late Food food;
  Animal(this.food, this.name);
  Eat();
}

class Donkey extends Animal {
  Donkey(Vegtable food, String name) : super(food, name);

  @override
  Eat() {
    stdout.write("$name likes to eat : ");
  }
}

class Penguin extends Animal {
  Penguin(Fish food, String name) : super(food, name);

  @override
  Eat() {
    stdout.write("$name likes to eat : ");
  }
}

class Lion extends Animal {
  Lion(Meat food, String name) : super(food, name);
  @override
  Eat() {
    stdout.write("$name likes to eat : ");
  }
}