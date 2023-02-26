import 'dart:io';
import 'dart:math';

import 'package:basiclearningdart/basiclearningdart.dart';

void ex1PrintName() {
  print("My name is Do Hong Bien");
}

void ex2PrintEvenNumbersBetween(int start, int end) {
  print("Even numbers between $start and $end:");
  for (int i = start; i <= end; i++) {
    if (i % 2 == 0) {
      stdout.write('$i ');
    }
  }
}

void ex3GenerateRandomPassword(int length) {
  var random = Random.secure();
  var password = List.generate(length, (index) {
    switch (random.nextInt(3)) {
      case 0:
        return String.fromCharCode(random.nextInt(26) + 65); // uppercase letters
      case 1:
        return String.fromCharCode(random.nextInt(26) + 97); // lowercase letters
      default:
        return random.nextInt(10).toString(); // digits
    }
  }).join();
  print("Generated password: $password");
}

void ex4CalculateCircleArea(double radius) {
  double area = pi * pow(radius, 2);
  print("Area of circle with radius $radius is: $area");
}

void ex5CalculateHypotenuse(double a, double b) {
  double c = sqrt(pow(a, 2) + pow(b, 2));
  print("Hypotenuse of a right triangle with sides $a and $b is: $c");
}

void ex6ReverseString(String text) {
  String reversed = "";
  for (int i = text.length - 1; i >= 0; i--) {
    reversed += text[i];
  }
  // text.split('').reversed.join();
  print("Reversed string: $reversed");
}

void ex7CalculatePower(int base, int exponent) {
  num result = pow(base, exponent);
  print("$base^$exponent = $result");
}

void practice3() {
  while (true) {
    print("\nChoose a function to run:");
    print("1. Print name");
    print("2. Print even numbers between intervals");
    print("3. Generate random password");
    print("4. Calculate area of a circle");
    print("5. Calculate hypotenuse of a right triangle");
    print("6. Reverse a string");
    print("7. Calculate power of a number");

    int choice = int.parse(stdin.readLineSync()!);
    clearConsole();

    switch (choice) {
      case 1:
        ex1PrintName();
        break;
      case 2:
        print("Enter start value:");
        int start = int.parse(stdin.readLineSync()!);
        print("Enter end value:");
        int end = int.parse(stdin.readLineSync()!);
        ex2PrintEvenNumbersBetween(start, end);
        break;
      case 3:
        print("Enter length of password:");
        int length = int.parse(stdin.readLineSync()!);
        ex3GenerateRandomPassword(length);
        break;
      case 4:
        print("Enter radius of circle:");
        double radius = double.parse(stdin.readLineSync()!);
        ex4CalculateCircleArea(radius);
        break;
      case 5:
        print("Enter value of side a:");
        double a = double.parse(stdin.readLineSync()!);
        print("Enter value of side b:");
        double b = double.parse(stdin.readLineSync()!);
        ex5CalculateHypotenuse(a, b);
        break;
      case 6:
        print("Enter a string:");
        String text = stdin.readLineSync()!;
        ex6ReverseString(text);
        break;
      case 7:
        print("Enter the base number:");
        int base = int.parse(stdin.readLineSync()!);
        print("Enter the exponent:");
        int exponent = int.parse(stdin.readLineSync()!);
        ex7CalculatePower(base, exponent);
        break;
      default:
        print("Invalid choice!");
    }

    print('\nDo you want to continue practice 3? (y/n)');
    String answer = stdin.readLineSync()!;
    if (answer == 'n') {
      break;
    }
    clearConsole();
  }
}
