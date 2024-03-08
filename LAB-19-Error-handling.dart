import 'dart:io';

void main() {
  stdout.write("Enter a number: ");
  try {
    double number = double.parse(stdin.readLineSync()!);
    int integerNumber = number.toInt();
    print("You entered: $integerNumber");
  } catch (e) {
    print("Invalid input. Please enter a valid number.");
  }
}
