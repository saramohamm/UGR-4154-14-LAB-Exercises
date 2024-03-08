import 'dart:io';

void calculator(double num1, double num2, String operation) {
  switch (operation) {
    case '+':
      print("$num1 + $num2 = ${num1 + num2}");
      break;
    case '-':
      print("$num1 - $num2 = ${num1 - num2}");
      break;
    case '*':
      print("$num1 * $num2 = ${num1 * num2}");
      break;
    case '/':
      if (num2 != 0) {
        print("$num1 / $num2 = ${num1 / num2}");
      } else {
        print("Division by zero is not allowed");
      }
      break;
    default:
      print("Invalid operation");
  }
}

void main() {
  print("Enter the first number:");
  double num1 = double.parse(stdin.readLineSync()!);

  print("Enter the second number:");
  double num2 = double.parse(stdin.readLineSync()!);

  print("Enter the operation (+, -, *, /):");
  String operation = stdin.readLineSync()!;

  calculator(num1, num2, operation);
}
