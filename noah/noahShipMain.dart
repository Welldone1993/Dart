import 'noahShipAnimals.dart';
import 'noahShipFoods.dart';

void main() {
  Vegtable firstWheat = Vegtable();
  Donkey donkey1 = Donkey(firstWheat, "aqa khare");
  donkey1.Eat();
  donkey1.food.KindOfFood();
  //------------------------
  Fish fisrtFish = Fish();
  Penguin penguin1 = Penguin(fisrtFish, "aqa panguan");
  penguin1.Eat();
  penguin1.food.KindOfFood();
  //-------------------------
  Meat firstMeat = Meat();
  Lion lion1 = Lion(firstMeat, "aqa shire");
  lion1.Eat();
  lion1.food.KindOfFood();
}
