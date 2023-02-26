import 'dart:io';

import 'package:basiclearningdart/Week%202/exercise1.dart';
import 'package:basiclearningdart/Week%202/exercise2.dart';
import 'package:basiclearningdart/Week%203/exercise3.dart';
import 'package:basiclearningdart/basiclearningdart.dart';

void main(List<String> arguments) {
  while (true) {
    print("Choose an option: ");
    print("1. Practice 1");
    print("2. Practice 2");
    print("3. Practice 3");
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
