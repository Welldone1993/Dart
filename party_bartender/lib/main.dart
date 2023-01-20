import 'dart:io';

import 'butterfly.dart';
import 'methods.dart';
import 'classes.dart';
//dart sdk is without null safety 2.10.0

List<PartyMembers> listOfHosts = [];
List<PartyMembers> listOfOver18Guests = [];
List<PartyMembers> listOfUnder18Guests = [];
int idCounter = 1;

void main() async {
  //intro
  await printButterfly();
  await rules();

  //add people
  bool endAdding = false;
  while (endAdding == false) {
    print('1:Add more people.\nEnter 0 to Start party');
    int addOrNot = int.tryParse(stdin.readLineSync());
    if (addOrNot == 1) {
      addMemberToList();
    } else if (addOrNot == 0) {
      endAdding = true;
    } else {
      print('Wrong entry');
    }
  }

  //enter id and token to check
  bool endParty = false;
  while (endParty == false) {
    int idChecker = -1;
    stdout.write('Enter 0 to End party or Give me Id:');
    try {
      idChecker = int.parse(stdin.readLineSync());
      if (idChecker == 0) {
        endParty = true;
        break;
      }
      idChecker = search(idChecker);
    } catch (e) {
      print('there is not valid id');
      continue;
    }
    stdout.write('Give me Token:');
    try {
      int tokenForCheck = int.parse(stdin.readLineSync());
      for (var host in listOfHosts) {
        if (idChecker == host.indicator.id) {
          if (tokenForCheck == host.indicator.token) {
            host.status();
            break;
          } else {
            print('you gave WRONG Token host ${host.name}!!!!');
            break;
          }
        }
      }
      for (var guest in listOfOver18Guests) {
        if (idChecker == guest.indicator.id) {
          if (tokenForCheck == guest.indicator.token) {
            guest.status();
            break;
          } else {
            print('you gave WRONG Token guest ${guest.name}!!!!');
            break;
          }
        }
      }
      for (var guest in listOfUnder18Guests) {
        if (idChecker == guest.indicator.id) {
          if (tokenForCheck == guest.indicator.token) {
            print(guest.toString());
            break;
          } else {
            print("""you gave WRONG Token!!!!
            but even you give correct Token
            you cant drink ${guest.name} because you are ${guest.age}""");
            break;
          }
        }
      }
    } catch (e) {
      print('Wrong token, try again');
    }
    if (idChecker == -1) {
      print('Incorrect id!');
    }
  }

  //printing result of party
  for (var member in (listOfHosts + listOfOver18Guests)) {
    print(member.endParty());
  }
}
