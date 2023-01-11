class Cage {
  gate(FLy bird){
    print('fly');
  }
}
class FLy{}

class Eagle implements FLy{}

class Monkey{}
void main() {
Cage cage =Cage();
Eagle eagle = Eagle();
// Monkey monkey = Monkey();
cage.gate(eagle);
}
