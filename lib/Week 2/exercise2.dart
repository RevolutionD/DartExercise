import 'dart:io';

void ex1CheckOddOrEvent() {
  print('Input a number:');
  int number = int.parse(stdin.readLineSync()!);
  String str = number % 2 == 0 ? 'Number $number is odd' : 'Number $number is even';
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
    print('Number is positive');
  } else {
    print('Number is zero');
  }
}

void ex4PrintName100Times() {
  final myName = 'Bien';

  for (var index = 0; index < 100; index++) {
    print('$myName time $index');
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
}

void ex9PrintNumber() {
  print('Print number to 100 except 41:');
  for (var i = 0; i <= 100; i++) {
    if (i != 41) print(i);
  }
}
