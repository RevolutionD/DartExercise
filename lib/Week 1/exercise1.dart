// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:io';

void exercise1PrintMyName() {
  print('My name is Do Hong Bien');
}

void exercise2PrintWithSingerAndDoubleQuotes() {
  print("Hello I am \"John Doe\" in singer quotes");
  print('Hello I\'am "John Doe" in double quotes'); // Singer Quotes in dart dont need \ in front of "
}

void exercise3SetConstantForInt() {
  const int a = 7;
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
  int num1 = int.parse(stdin.readLineSync()!);
  print('Input number 2:');
  int num2 = int.parse(stdin.readLineSync()!);

  var tmp = num1;
  num1 = num2;
  num2 = tmp;

  print('num 1 = $num1');
  print('num 2 = $num2');
}

class Test<T> {
  T value;
  Test({required this.value});
}

void swap(Test a, Test b) {
  Test tmp = a;
  a = b;
  b = tmp;
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
