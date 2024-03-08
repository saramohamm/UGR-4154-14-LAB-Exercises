import 'dart:io';

void checkEvenOrOdd(int number) {
  if (number % 2 == 0) {
    print("$number is even");
  } else {
    print("$number is odd");
  }
}

void main() {
  print("Enter a number:");
  var number = int.parse(stdin.readLineSync()!);
  checkEvenOrOdd(number);
}
