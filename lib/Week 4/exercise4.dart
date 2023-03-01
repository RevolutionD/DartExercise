// ignore_for_file: avoid_function_literals_in_foreach_calls

import 'dart:io';

import 'package:basiclearningdart/basiclearningdart.dart';

void ex1PrintNames() {
  List<String> names = ['Jack', 'Still Jack', 'Still Jack Time 2'];
  print('Names: $names');
}

void ex2PrintFruits() {
  Set<String> fruits = {'Apple', 'Banana', 'Orange'};
  fruits.forEach((element) => print('Fruit: $element'));
}

void ex3CalculateTotal() {
  print('Enter a list of expenses separated by spaces:');
  String input = stdin.readLineSync()!;
  List<String> expenseStrings = input.split(' ');
  List<double> expenses = expenseStrings.map((e) => double.tryParse(e) ?? 0).toList();

  double total = expenses.reduce((a, b) => a + b);
  print('Total: \$${total.toStringAsFixed(2)}');
}

void ex4PrintDays() {
  List<String> days = [];
  days.add('Monday');
  days.add('Tuesday');
  days.add('Wednesday');
  days.add('Thursday');
  days.add('Friday');
  days.add('Saturday');
  days.add('Sunday');

  print('Days: $days');
}

void ex5FindFriendStartingWithA() {
  List<String> friends = ['Jack', 'Stll Jack bro', 'Not jack', 'jack but 4 time', 'Not Jack here', 'Done', 'AAAA'];

  String? friendStartingWithA = friends.firstWhere((friend) => friend.startsWith(RegExp(r'[Aa]')), orElse: () => '');
  if (friendStartingWithA.isEmpty) {
    print('No friend starting with "A".');
  } else {
    print('Friend starting with "A": $friendStartingWithA');
  }
}

void ex6UpdateCountryInMap() {
  Map<String, dynamic> person = {'name': 'Jack :)', 'address': 'The earth', 'age': 50, 'country': 'USA'};

  person['country'] = 'Still USA';

  print('Person: $person');
}

void ex7FindKeysWithLength4() {
  Map<String, String> contacts = {'Jack': '1234', 'Jack but key 2': '5678', 'This time not Jack': '9012', 'Dave': '3456'};

  List<String> keysWithLength4 = contacts.keys.where((key) => key.length == 4).toList();
  print('Keys with length 4: $keysWithLength4');
}

void ex8ToDoApp() {
  List<String> tasks = [];

  while (true) {
    print('Enter "add(a)" to add a task, "remove(r)" to remove a task, "view(v)" to view the list of tasks, or "exit()" to quit:');
    String command = stdin.readLineSync()!;
    switch (command) {
      case 'a':
      case 'add':
        print('Enter task:');
        String task = stdin.readLineSync()!;
        tasks.add(task);
        print('Task added.');
        break;
      case 'r':
      case 'remove':
        if (tasks.isEmpty) {
          print('No tasks to remove.');
          break;
        }

        print('Enter task to remove:');
        String task = stdin.readLineSync()!;
        bool removed = tasks.remove(task);
        if (removed) {
          print('Task removed.');
        } else {
          print('Task not found.');
        }
        break;
      case 'v':
      case 'view':
        if (tasks.isEmpty) {
          print('No tasks.');
        } else {
          print('Tasks:');
          for (int i = 0; i < tasks.length; i++) {
            print('${i + 1}. ${tasks[i]}');
          }
        }
        break;
      case 'e':
      case 'exit':
        return;
      default:
        print('Invalid command.');
        break;
    }
  }
}

void practice4() {
  while (true) {
    print('Enter the number of the function you want to run:');
    print('1. Print a list of names');
    print('2. Print a set of fruits');
    print('3. Calculate the total of a list of expenses');
    print('4. Print a list of days');
    print('5. Find a name that starts with "a"');
    print('6. Update a map of personal information');
    print('7. Find keys with length 4 in a map of phone numbers');
    print('8. Run a to-do list application');

    String input = stdin.readLineSync()!;
    clearConsole();

    switch (input) {
      case '1':
        ex1PrintNames();
        break;
      case '2':
        ex2PrintFruits();
        break;
      case '3':
        ex3CalculateTotal();
        break;
      case '4':
        ex4PrintDays();
        break;
      case '5':
        ex5FindFriendStartingWithA();
        break;
      case '6':
        ex6UpdateCountryInMap();
        break;
      case '7':
        ex7FindKeysWithLength4();
        break;
      case '8':
        ex8ToDoApp();
        break;
      default:
        print('Invalid input.');
        break;
    }
    print('\nDo you want to continue practice 4? (y/n)');
    String answer = stdin.readLineSync()!;
    if (answer == 'n') {
      break;
    }
    clearConsole();
  }
}
