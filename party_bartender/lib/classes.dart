import 'main.dart';

//drinking interface
abstract class Drink {
  drink();
}

//give any id specific token
class IdAndToken {
  IdAndToken(this.id, this.token);

  int id = idCounter;
  final int token;
}

abstract class PartyMembers {
  PartyMembers({
    this.name,
    this.age,
    this.indicator,
  });

  final String name;
  final int age;
  final IdAndToken indicator;

  @override
  String toString() {
    String welcomeMessage = """Hi $name
  there is your ID : ${indicator.id}
  and there is your token : ${indicator.token}
  ---------WARNING---------
  Remember id and token or write it some where!!!!""";
    return welcomeMessage;
  }

  String endParty() {
    return null;
  }

  void status() {}
}

class Host extends PartyMembers implements Drink {
  Host(name, age, indicator, this.shots)
      : super(name: name, age: age, indicator: indicator);
  int shots;

  @override
  void drink() {
    shots++;
  }

  @override
  String endParty() {
    return 'member $name took $shots \n========';
  }

  @override
  void status() {
    drink();
    print('CHEERS $name\nyou took $shots till now');
  }
}

class GuestOver18 extends PartyMembers implements Drink {
  GuestOver18(String name, int age, IdAndToken indicator, this.shots)
      : super(name: name, age: age, indicator: indicator);
  int shots;

  @override
  void drink() {
    shots++;
  }

  @override
  void status() {
    if (shots < 3) {
      drink();
      print('CHEERS $name\nyou took $shots till now');
    } else if (shots < 5) {
      drink();
      print(
          '------\nWARNING\n------\nyou took $shots shots $name you took more than 3');
    } else {
      print(
          '------\nWARNING\n------\nyou took $shots shots $name you can not have more');
    }
  }

  @override
  String endParty() {
    return 'member $name took $shots \n========';
  }
}

class GuestUnder18 extends PartyMembers {
  GuestUnder18(String name, int age, IdAndToken indicator)
      : super(name: name, age: age, indicator: indicator);

  @override
  String toString() {
    return """hi $name you are not allowed to drink!!!
                because you are $age years old!!!
               Sorry :(
               you have to wait for ${18 - age} more years""";
  }
}
