import 'dart:io';

void main() {
  print('Enter first number:');
  double num1 = double.parse(stdin.readLineSync()!);

  print('Enter an operator (+, -, *, /):');
  String operator = stdin.readLineSync()!;

  print('Enter second number:');
  double num2 = double.parse(stdin.readLineSync()!);

  switch (operator) {
    case '+':
      print('Result: ${num1 + num2}');
      break;
    case '-':
      print('Result: ${num1 - num2}');
      break;
    case '*':
      print('Result: ${num1 * num2}');
      break;
    case '/':
      if (num2 != 0) {
        print('Result: ${num1 / num2}');
      } else {
        print('Division by zero is not allowed.');
      }
      break;
    default:
      print('Invalid operator.');
  }
}
