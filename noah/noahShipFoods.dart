 class Food {
  KindOfFood(){
    print("any kind");
  }
}

class Vegtable extends Food {
  @override
  KindOfFood() {
    print("WHEAT");
  }
}

class Meat extends Food {
  @override
  KindOfFood() {
    print("MEAT");
  }
}

class Fish extends Food {
  @override
  KindOfFood() {
    print("FISH");
  }
}
