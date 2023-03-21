import 'dart:convert';
import 'dart:io';

import 'package:basiclearningdart/basiclearningdart.dart';
import 'package:intl/intl.dart';

class Student {
  int id;
  String firstName;
  String surName;
  String dateOfBirth;
  String gender;
  String address;
  String mobile;

  Student(this.id, this.firstName, this.surName, this.dateOfBirth, this.gender, this.address, this.mobile);

  int get age {
    final DateFormat formatter = DateFormat('dd/MM/yyyy');
    final DateTime now = DateTime.now();
    final DateTime dob = formatter.parse(dateOfBirth);
    return now.year - dob.year;
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'firstName': firstName,
      'surName': surName,
      'dateOfBirth': dateOfBirth,
      'gender': gender,
      'address': address,
      'mobile': mobile,
    };
  }

  String toCsv() {
    return '$id,$firstName,$surName,$dateOfBirth,$gender,$address,$mobile';
  }

  static Student fromCsv(String csv) {
    List<String> fields = csv.split(',');
    return Student(int.parse(fields[0]), fields[1], fields[2], fields[3], fields[4], fields[5], fields[6]);
  }
}

class StudentData {
  List<Student> students = [];

  void add(Student student) {
    students.add(student);
    save();
  }

  void clear() {
    students.clear();
    save();
  }

  void update(Student student) {
    int index = students.indexWhere((s) => s.id == student.id);
    if (index >= 0) {
      students[index] = student;
      save();
    }
  }

  void delete(int id) {
    students.removeWhere((s) => s.id == id);
    save();
  }

  List<Student> search(String query) {
    return students.where((s) => s.firstName.contains(query) || s.surName.contains(query)).toList();
  }

  void load() {
    try {
      Directory current = Directory.current;
      print(current.path);
      File file = File('student-data.csv');
      if (file.existsSync()) {
        List<String> lines = file.readAsLinesSync();
        students = lines.map((line) => Student.fromCsv(line)).toList();
      }
    } catch (e) {
      print('Error loading data: $e');
    }
  }

  void save() {
    try {
      File file = File('student-data.csv');
      Directory current = Directory.current;
      print(current.path);
      String csv = students.map((s) => s.toCsv()).join('\n');
      file.writeAsStringSync(csv, mode: FileMode.append, encoding: Encoding.getByName('utf-8')!);
    } catch (e) {
      print('Error saving data: $e');
    }
  }

  void display() {
    print('ID\tFirst Name\tLast Name\tDOB\t\tAge\tGender\tAddress\t\tMobile');
    print('--\t----------\t---------\t--------\t------\t-------\t-------\t\t------');
    for (var s in students) {
      print('${s.id}\t${s.firstName}\t\t${s.surName}\t\t${s.dateOfBirth}\t${s.age}\t${s.gender}\t${s.address}\t\t${s.mobile}');
    }
  }
}

void studentConsoleProject() {
  StudentData data = StudentData();
  data.load();

  while (true) {
    print('Enter command:');
    print('add - Add a new student');
    print('clear - Clear all students');
    print('search - Search for students');
    print('update - Update a student');
    print('delete - Delete a student');
    print('display - Display all students');
    print('exit - Exit the program');

    String command = stdin.readLineSync()!.toLowerCase();
    clearConsole();
    switch (command) {
      case 'add':
        print('Enter student information:');
        print('ID:');
        int id = int.parse(stdin.readLineSync()!);
        print('First Name:');
        String firstName = stdin.readLineSync()!;
        print('Last Name:');
        String surName = stdin.readLineSync()!;
        print('DOB:');
        String dateOfBirth = stdin.readLineSync()!;
        print('Gender:');
        String gender = stdin.readLineSync()!;
        print('Address:');
        String address = stdin.readLineSync()!;
        print('Mobile:');
        String mobile = stdin.readLineSync()!;
        data.add(Student(id, firstName, surName, dateOfBirth, gender, address, mobile));
        break;
      case 'clear':
        data.clear();
        break;
      case 'search':
        print('Enter search query:');
        String query = stdin.readLineSync()!;
        List<Student> results = data.search(query);
        if (results.isEmpty) {
          print('No results found.');
        } else {
          for (var s in results) {
            print('${s.firstName} ${s.surName} (${s.id})');
          }
        }
        break;
      case 'update':
        print('Enter student ID to update:');
        int id = int.parse(stdin.readLineSync()!);
        Student student = data.students.firstWhere((s) => s.id == id);
        if (student == null) {
          print('Student not found.');
        } else {
          print('Enter new student information:');
          print('First Name [${student.firstName}]:');
          String firstName = stdin.readLineSync()!;
          firstName = firstName.isEmpty ? student.firstName : firstName;
          print('Last Name [${student.surName}]:');
          String surName = stdin.readLineSync()!;
          surName = surName.isEmpty ? student.surName : surName;
          print('DOB [${student.dateOfBirth}]:');
          String dateOfBirth = stdin.readLineSync()!;
          dateOfBirth = dateOfBirth.isEmpty ? student.dateOfBirth : dateOfBirth;
          print('Gender [${student.gender}]:');
          String gender = stdin.readLineSync()!;
          gender = gender.isEmpty ? student.gender : gender;
          print('Address [${student.address}]:');
          String address = stdin.readLineSync()!;
          address = address.isEmpty ? student.address : address;
          print('Mobile [${student.mobile}]:');
          String mobile = stdin.readLineSync()!;
          mobile = mobile.isEmpty ? student.mobile : mobile;
          data.update(Student(id, firstName, surName, dateOfBirth, gender, address, mobile));
        }
        break;
      case 'delete':
        print('Enter student ID to delete:');
        int id = int.parse(stdin.readLineSync()!);
        data.delete(id);
        break;
      case 'display':
        data.display();
        break;
      case 'exit':
        return;
      default:
        print('Invalid command.');
    }
  }
}
