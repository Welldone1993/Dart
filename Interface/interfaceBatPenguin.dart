class InterfaceFly {
  Fly() {}
}

class InterfaceWalk {
  Walk() {}
}

class Birds {}

class penguin extends Birds implements InterfaceWalk {
  @override
  Walk() {
    print('Penguin is Walking');
  }
}

class Mammals {}

class bat extends Mammals implements InterfaceFly {
  @override
  Fly() {
    print('Bat is flying');
  }
}

void main() {}
