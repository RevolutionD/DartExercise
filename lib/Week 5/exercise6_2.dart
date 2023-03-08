// 1. Write a dart program to create an enum class for gender [male, female, others] and print all values.
import 'dart:io';

import 'package:basiclearningdart/basiclearningdart.dart';

enum Gender {
  male,
  female,
  other,
}

void ex1PrintAllEmunValue() {
  print(Gender.values);
}

// 2. Write a dart program to create a class Animal with properties [id, name, color]. Create another class called Cat and extends it from Animal. Add new properties sound in String. 3. Create an object of a Cat and print all details.
class Animal {
  int id;
  String name;
  String color;

  Animal(this.id, this.name, this.color);
}

class Cat extends Animal {
  String sound;

  Cat(int id, String name, String color, this.sound) : super(id, name, color);

  void printDetails() {
    print('ID: $id');
    print('Name: $name');
    print('Color: $color');
    print('Sound: $sound');
  }
}

void ex2PrintCatObj() {
  Cat cat = Cat(1, 'Cat 1', 'Black', 'Meow');
  cat.printDetails();
}
// 3. Write a dart program to create a class Camera with private properties [id, brand, color, prize]. Create a getter and setter to get and set values. Also, create 3 objects of it and print all details.

class Camera {
  int _id;
  String _brand;
  String _color;
  int _prize;

  Camera(this._id, this._brand, this._color, this._prize);

  int get id => _id;

  set id(int value) {
    _id = value;
  }

  String get brand => _brand;

  set brand(String value) {
    _brand = value;
  }

  String get color => _color;

  set color(String value) {
    _color = value;
  }

  int get prize => _prize;

  set prize(int value) {
    _prize = value;
  }

  void printDetails() {
    print('ID: $_id');
    print('Brand: $_brand');
    print('Color: $_color');
    print('Price: $_prize');
  }
}

void ex3PrintCameraObj() {
  Camera camera1 = Camera(1, 'Canon', 'Black', 100000);
  Camera camera2 = Camera(2, 'Nikon', 'White', 200000);
  Camera camera3 = Camera(3, 'Sony', 'Red', 300000);

  List<Camera> cameras = [camera1, camera2, camera3];

  for (Camera camera in cameras) {
    camera.printDetails();
    print('----------------');
  }
}

void practice6_2() {
  while (true) {
    print("Which function do you want to run?");
    print("1. Enum for Gender");
    print("2. Class for Cat");
    print("3. Class for Camera");

    int choice = int.parse(stdin.readLineSync()!);

    clearConsole();

    switch (choice) {
      case 1:
        ex1PrintAllEmunValue();
        break;
      case 2:
        ex2PrintCatObj();
        break;
      case 3:
        ex3PrintCameraObj();
        break;
      default:
        print("Invalid choice");
    }

    print('\nDo you want to continue practice 6-2? (y/n)');
    String answer = stdin.readLineSync()!;
    if (answer == 'n') {
      break;
    }
  }
}
