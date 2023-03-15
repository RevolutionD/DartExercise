import 'dart:io';

import 'package:basiclearningdart/Week%202/exercise1.dart';
import 'package:basiclearningdart/Week%202/exercise2.dart';
import 'package:basiclearningdart/Week%203/exercise3.dart';
import 'package:basiclearningdart/Week%204/exercise4.dart';
import 'package:basiclearningdart/Week%204/exercise5.dart';
import 'package:basiclearningdart/Week%205/exercise6_1.dart';
import 'package:basiclearningdart/Week%205/exercise6_2.dart';
import 'package:basiclearningdart/Week%205/exercise6_3.dart';
import 'package:basiclearningdart/basiclearningdart.dart';

void main(List<String> arguments) {
  while (true) {
    print("Choose an option: ");
    print("1. Practice 1");
    print("2. Practice 2");
    print("3. Practice 3");
    print("4. Practice 4");
    print("5. Practice 5");
    print("6. Practice 6-1");
    print("7. Practice 6-2");
    print("8. Practice 6-3");
    int option = int.parse(stdin.readLineSync()!);
    clearConsole();

    switch (option) {
      case 1:
        practice1();
        break;
      case 2:
        practice2();
        break;
      case 3:
        practice3();
        break;
      case 4:
        practice4();
        break;
      case 5:
        practice5();
        break;
      case 6:
        practice6_1();
        break;
      case 7:
        practice6_2();
        break;
      case 8:
        practice6_3();
        break;
      default:
        print("Invalid option");
        break;
    }

    print("Do you want to continue program? (y/n)");
    String answer = stdin.readLineSync()!;
    if (answer == 'n') {
      break;
    }
    clearConsole();
  }
}
