import 'dart:io';

import 'package:basiclearningdart/basiclearningdart.dart';

void ex1CheckOddOrEvent() {
  print('Input a number:');
  int number = int.parse(stdin.readLineSync()!);
  String str = number % 2 != 0 ? 'Number $number is odd' : 'Number $number is even';
  print(str);
}

void ex2CheckVowelOrConsnant() {
  final List<String> vowel = ['A', 'I', 'E', 'U', 'O'];
  print('Input charecter:');
  String char = stdin.readLineSync()!;
  print('Character is ${vowel.contains(char.toUpperCase()) ? 'Vowel' : 'Consnant'}');
}

void ex3() {
  print('Input number:');
  double num = double.parse(stdin.readLineSync()!);
  if (num > 0) {
    print('Number is positive');
  } else if (num < 0) {
    print('Number is negative');
  } else {
    print('Number is zero');
  }
}

void ex4PrintName100Times() {
  final myName = 'Bien';

  for (var index = 0; index < 100; index++) {
    print('$myName time ${index + 1}');
  }
}

void ex5Sum() {
  print('Input number1:');
  int num1 = int.parse(stdin.readLineSync()!);
  print('Input number2:');
  int num2 = int.parse(stdin.readLineSync()!);
  print('Sum of $num1 and $num2 is ${num1 + num2}');
}

void ex6GenerateMultiplicationTableOf5() {
  print('Multiplication table of 5');
  for (var index = 1; index <= 10; index++) {
    print('5 x $index = ${5 * index}');
  }
}

void ex7GenerateMultiplicationTable1to9() {
  print('Multiplication table 1 to 9');
  for (var i = 1; i <= 9; i++) {
    for (var j = 1; j <= 10; j++) {
      print('$i x $j = ${i * j}');
    }
    print('\n');
  }
}

void ex8SimpleCalculator() {
  print('Enter numbers:');
  String numbersInput = stdin.readLineSync()!;
  List<double> numbers = numbersInput.split(' ').map((e) => double.parse(e)).toList();
  print('Enter operator(+, -, *, /):');
  String operator = stdin.readLineSync()!;
  double result = 0;

  switch (operator) {
    case '+':
      result = numbers.reduce((value, element) => value + element);
      break;
    case '-':
      result = numbers.reduce((value, element) => value - element);
      break;
    case '*':
      result = numbers.reduce((value, element) => value * element);
      break;
    case '/':
      result = numbers.reduce((value, element) => value / element);
      break;
    default:
      print('Invalid operator');
      break;
  }
  print('Result: $result');
}

void ex9PrintNumber() {
  print('Print number to 100 except 41:');
  for (var i = 0; i < 100; i++) {
    if (i != 41) print(i + 1);
  }
}

practice2() {
  while (true) {
    print("\nChoose an option: ");
    print("1. Check if a number is odd or even");
    print("2. Check if a character is a vowel or consonant");
    print("3. Check if a number is positive, negative or zero");
    print("4. Print your name 100 times");
    print("5. Calculate the sum of natural numbers");
    print("6. Generate multiplication tables of 5");
    print("7. Generate multiplication tables of 1-9");
    print("8. Create a simple calculator");
    print("9. Print 1 to 100 but not 41");
    int option = int.parse(stdin.readLineSync()!);
    clearConsole();

    switch (option) {
      case 1:
        ex1CheckOddOrEvent();
        break;
      case 2:
        ex2CheckVowelOrConsnant();
        break;
      case 3:
        ex3();
        break;
      case 4:
        ex4PrintName100Times();
        break;
      case 5:
        ex5Sum();
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
      default:
        print("Invalid option");
        break;
    }

    clearConsole();

    print("\nDo you want to continue practice 2? (y/n)");
    String answer = stdin.readLineSync()!;
    if (answer == 'n') {
      break;
    }

    clearConsole();
  }
}
