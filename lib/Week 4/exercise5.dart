import 'dart:io';

import '../basiclearningdart.dart';

void ex1AddNameToHelloFile() {
  File file = File('hello.txt');
  file.writeAsStringSync('Your name\n');
}

void ex2AppendFriendsNameToHelloFile() {
  File file = File('hello.txt');
  file.writeAsStringSync('Friend\'s name\n', mode: FileMode.append);
}

void ex3GetCurrentWorkingDirectory() {
  Directory current = Directory.current;
  print('Current working directory: ${current.path}');
}

void ex4CopyHelloFileToHelloCopyFile() {
  File original = File('hello.txt');
  File copy = File('hello_copy.txt');
  original.copySync(copy.path);
}

void ex5Create100FilesUsingLoop() {
  for (int i = 0; i < 100; i++) {
    File file = File('file$i.txt');
    file.createSync();
  }
}

void ex6DeleteHelloCopyFile() {
  File file = File('hello_copy.txt');
  if (file.existsSync()) {
    file.deleteSync();
  }
}

void ex7StoreAndReadStudentInformation() {
  List<List<dynamic>> rows = [
    ['Name', 'Age', 'Address'],
    ['Alice', 20, '123 Main St'],
    ['Bob', 21, '456 Oak St'],
    ['Charlie', 22, '789 Pine St'],
  ];

  File csvFile = File('students.csv');
  String csvString = rows.map((row) => row.join(',')).join('\n');
  csvFile.writeAsStringSync(csvString);

  List<String> lines = csvFile.readAsLinesSync();
  List<List<dynamic>> data = lines.map((line) => line.split(',')).toList();

  for (int i = 0; i < data.length; i++) {
    print('Name: ${data[i][0]}, Age: ${data[i][1]}, Address: ${data[i][2]}');
  }
}

void practice5() {
  while (true) {
    print('Enter the number of the function you want to run:');
    print('1. Add your name to "hello.txt" file');
    print('2. Append your friends name to a file that already has your name');
    print('3. Get the current working directory');
    print('4. Copy the "hello.txt" file to "hello_copy.txt" file');
    print('5. Create 100 files using loop');
    print('6. Delete the file "hello_copy.txt"');
    print('7. Store and read student information in a CSV file');

    String input = stdin.readLineSync()!;

    clearConsole();
    switch (input) {
      case '1':
        ex1AddNameToHelloFile();
        break;
      case '2':
        ex2AppendFriendsNameToHelloFile();
        break;
      case '3':
        ex3GetCurrentWorkingDirectory();
        break;
      case '4':
        ex4CopyHelloFileToHelloCopyFile();
        break;
      case '5':
        ex5Create100FilesUsingLoop();
        break;
      case '6':
        ex6DeleteHelloCopyFile();
        break;
      case '7':
        ex7StoreAndReadStudentInformation();
        break;
      default:
        print('Invalid input.');
        break;
    }
    print('\nDo you want to continue practice 5? (y/n)');
    String answer = stdin.readLineSync()!;
    if (answer == 'n') {
      break;
    }
    clearConsole();
  }
}
