import 'dart:io';
import 'dart:math';

import 'classes.dart';
import 'main.dart';

void addMemberToList() {
  String name;
  int age;
  int shots = 0;
  print('(h)ost or (g)uest?');
  String hostOrGuest = stdin.readLineSync();
  if (hostOrGuest == 'h' || hostOrGuest == 'g') {
    stdout.write('Enter name:');
    name = stdin.readLineSync();
    bool correctAge = false;
    while (correctAge == false) {
      try {
        stdout.write('Enter age:');
        age = int.parse(stdin.readLineSync());
        correctAge = true;
      } catch (e) {
        print('Entry age is no valid!!!');
      }
    }
    if (hostOrGuest == 'h') {
      IdAndToken newIndicator = generatePermission();
      Host newHost = Host(name, age, newIndicator, shots);
      listOfHosts.add(newHost);
      print(newHost.toString());
    } else if (hostOrGuest == 'g') {
      if (age > 18) {
        IdAndToken newIndicator = generatePermission();
        GuestOver18 newGuestOver18 =
            GuestOver18(name, age, newIndicator, shots);
        listOfOver18Guests.add(newGuestOver18);
        print(newGuestOver18.toString());
      } else {
        IdAndToken newIndicator = generatePermission();
        GuestUnder18 newGuestUnder18 = GuestUnder18(name, age, newIndicator);
        listOfUnder18Guests.add(newGuestUnder18);
        print(newGuestUnder18.toString());
      }
    }
  } else {
    print('Wrong Entry!!!');
  }
}

//search id to check
int search(int id) {
  for (var members in listOfHosts + listOfOver18Guests + listOfOver18Guests) {
    if (members.indicator.id == id) {
      return members.indicator.id;
    }
  }
  return -1;
}

//Token generator
int generateToken() {
  int token = 10 + Random().nextInt(91);
  return token;
}

// creating substance of id and token
IdAndToken generatePermission() {
  IdAndToken newIT = IdAndToken(idCounter, generateToken());
  idCounter++;
  return newIT;
}
