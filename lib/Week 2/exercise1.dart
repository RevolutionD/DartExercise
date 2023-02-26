import 'dart:io';

import 'package:basiclearningdart/Week%202/exercise2.dart';

import '../basiclearningdart.dart';

void exercise1PrintMyName() {
  print('My name is Do Hong Bien');
}

void exercise2PrintWithSingerAndDoubleQuotes() {
  print("Hello I am \"John Doe\" in singer quotes");
  print('Hello I\'am "John Doe" in double quotes'); // Singer Quotes in dart dont need \ in front of "
}

void exercise3SetConstantForInt() {
  final int a = 7;
}

void exercise4FindSimpleInterest() {
  print('Input p, t, r:');
  double p = double.parse(stdin.readLineSync()!);
  double t = double.parse(stdin.readLineSync()!);
  double r = double.parse(stdin.readLineSync()!);
  double formula = (p * t * r) / 100;
  print("Simple Interest is $formula");
}

void exercise5FindSquareNumber() {
  print("Input number to calculate square root:");
  double userInput = double.parse(stdin.readLineSync()!);
  print("Square of number is: ${userInput * userInput}");
}

void exercise6PrintFullName() {
  print('Input first name:');
  String firstName = stdin.readLineSync()!;
  print('Input last name:');
  String lastName = stdin.readLineSync()!;
  print('Your full name: $firstName $lastName');
}

void exercise7FindQuotientAndReminder() {
  print('Input number 1:');
  int num1 = int.parse(stdin.readLineSync()!);
  print('Input number 2:');
  int num2 = int.parse(stdin.readLineSync()!);

  print('Quotient of $num1/$num2 = ${(num1 / num2).toStringAsFixed(3)}');
  print('Remider of $num1%$num2 = ${num1 % num2}');
}

void exercise8SwapNumber() {
  print('Input number 1:');
  IntNum num1 = IntNum(int.parse(stdin.readLineSync()!));
  print('Input number 2:');
  IntNum num2 = IntNum(int.parse(stdin.readLineSync()!));

  print('Before swap:');

  print('num 1 = ${num1.value}');
  print('num 2 = ${num2.value}');

  swap(num1, num2);

  print('After swap:');
  print('num 1 = ${num1.value}');
  print('num 2 = ${num2.value}');
}

class IntNum {
  int value;
  IntNum(this.value);
}

void swap(IntNum num1, IntNum num2) {
  var tmp = num1.value;
  num1.value = num2.value;
  num2.value = tmp;
}

void exercise9RemoveAllWhiteSpace() {
  print('Input string:');
  String str = stdin.readLineSync()!;
  str = str.replaceAll(' ', '');
  print('Output string');
  print(str);
}

void exercise10ConvertStringToInt({int? userInput}) {
  String str;

  if (userInput == null) {
    print('Input int:');
    str = stdin.readLineSync()!;
  } else {
    str = userInput.toString();
  }

  print(str);
}

void exercise11SplitAmout({double? totalBill, int? numberOfPeople}) {
  double bill;
  int people;
  if (totalBill == null || numberOfPeople == null) {
    print('Input total bill:');
    bill = double.parse(stdin.readLineSync()!);
    print('Input number of people:');
    people = int.parse(stdin.readLineSync()!);
  } else {
    bill = totalBill;
    people = numberOfPeople;
  }

  print('Each people need to pay: ${bill / people}');
}

practice1() {
  while (true) {
    print("\nChoose a function to run:");
    print("1. Print Name");
    print("2. Print Quotes");
    print("3. Print Constant");
    print("4. Calculate Simple Interest");
    print("5. Print Square");
    print("6. Print Full Name");
    print("7. Find Quotient and Remainder");
    print("8. Swap Numbers");
    print("9. Remove Whitespaces");
    print("10. Convert String to Int");
    print("11. Calculate Split Amount");

    int choice = int.parse(stdin.readLineSync()!);
    clearConsole();

    switch (choice) {
      case 1:
        exercise1PrintMyName();
        break;
      case 2:
        exercise2PrintWithSingerAndDoubleQuotes();
        break;
      case 3:
        exercise3SetConstantForInt();
        break;
      case 4:
        exercise4FindSimpleInterest();
        break;
      case 5:
        exercise5FindSquareNumber();
        break;
      case 6:
        ex6GenerateMultiplicationTableOf5();
        break;
      case 7:
        ex7GenerateMultiplicationTable1to9();
        break;
      case 8:
        ex8SimpleCalculator();
        break;
      case 9:
        ex9PrintNumber();
        break;
      case 10:
        exercise10ConvertStringToInt();
        break;
      case 11:
        exercise11SplitAmout();
        break;
      default:
        print("Invalid choice.");
    }

    clearConsole();
    print('\nDo you want to continue practice 1? (y/n)');
    String isTerminate = stdin.readLineSync()!;
    if (isTerminate == 'n') {
      break;
    }
    clearConsole();
  }
}
