// 1. Write a dart program to create a class Laptop with properties [id, name, ram] and create 3 objects of it and print all details.
import 'dart:io';

import 'package:basiclearningdart/basiclearningdart.dart';

class Laptop {
  int id;
  String name;
  int ram;

  Laptop(this.id, this.name, this.ram);
}

void ex1() {
  List<Laptop> laptops = [
    Laptop(1, 'Dell', 8),
    Laptop(2, 'HP', 16),
    Laptop(3, 'Lenovo', 32),
  ];

  for (Laptop laptop in laptops) {
    print('ID: ${laptop.id}');
    print('Name: ${laptop.name}');
    print('RAM: ${laptop.ram}');
    print('----------------');
  }
}

// 2. Write a dart program to create a class House with properties [id, name, prize]. Create a constructor of it and create 3 objects of it. Add them to the list and print all details.
class House {
  int id;
  String name;
  int prize;

  House(this.id, this.name, this.prize);
}

void ex2() {
  List<House> houses = [
    House(1, 'House 1', 100000),
    House(2, 'House 2', 200000),
    House(3, 'House 3', 300000),
  ];

  for (House house in houses) {
    print('ID: ${house.id}');
    print('Name: ${house.name}');
    print('Prize: ${house.prize}');
    print('----------------');
  }
}

void practice6_1() {
  while (true) {
    print("Which function do you want to run?");
    print("1. Class for Laptop");
    print("2. Class for House");

    int choice = int.parse(stdin.readLineSync()!);
    clearConsole();

    switch (choice) {
      case 1:
        ex1();
        break;
      case 2:
        ex2();
        break;
      default:
        print("Invalid choice");
    }

    print("Do you want to continue practice 6-1? (y/n)");
    String? answer = stdin.readLineSync();
    if (answer == 'n') {
      break;
    }
  }
}
