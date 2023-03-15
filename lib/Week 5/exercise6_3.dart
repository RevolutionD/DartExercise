// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:io';

import 'package:basiclearningdart/basiclearningdart.dart';

abstract class Shape {
  double area();
}

class Triangle extends Shape {
  double width;
  double height;

  Triangle(this.width, this.height);

  @override
  double area() {
    return 0.5 * width * height;
  }
}

class Rectangle extends Shape {
  double width;
  double height;

  Rectangle(this.width, this.height);

  @override
  double area() {
    return width * height;
  }
}

class Mother {
  void display() {
    print("I am the mother.");
  }
}

class Daughter extends Mother {
  @override
  void display() {
    print("I am the daughter.");
  }
}

class Animal {
  String? name;
  int? age;

  void setValues(String name, int age) {
    this.name = name;
    this.age = age;
  }
}

class Zebra extends Animal {
  void display() {
    print("I am a zebra named $name, $age years old, and I come from Africa.");
  }
}

class Dolphin extends Animal {
  void display() {
    print("I am a dolphin named $name, $age years old, and I come from the ocean.");
  }
}

void practice6_3() {
  while (true) {
    print("Choose a function to run:");
    print("1. Calculate the area of a triangle and a rectangle.");
    print("2. Display a message from a daughter class.");
    print("3. Display information about a zebra or a dolphin.");

    String? choice = stdin.readLineSync();
    clearConsole();
    switch (choice) {
      case '1':
        Triangle triangle = Triangle(3, 4);
        Rectangle rectangle = Rectangle(5, 6);
        print("Area of triangle: ${triangle.area()}");
        print("Area of rectangle: ${rectangle.area()}");
        break;
      case '2':
        Daughter daughter = Daughter();
        daughter.display();
        break;
      case '3':
        Zebra zebra = Zebra();
        zebra.setValues("Stripes", 5);
        zebra.display();

        Dolphin dolphin = Dolphin();
        dolphin.setValues("Flipper", 7);
        dolphin.display();
        break;
      case '4':
        return;
      default:
        print("Invalid choice. Please enter a number between 1 and 4.");
        break;
    }

    print("\nDo you want to continue practice 6-3? (y/n)");
    String? answer = stdin.readLineSync();
    clearConsole();
    if (answer == 'n') {
      break;
    }
  }
}
