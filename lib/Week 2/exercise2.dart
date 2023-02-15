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
  int num1;
}
