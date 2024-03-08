import 'dart:io';

void main() {
  print("Enter your numerical grade:");
  int numericalGrade = int.parse(stdin.readLineSync()!);

  String letterGrade;
  if (numericalGrade >= 83) {
    letterGrade = 'A';
  } else if (numericalGrade >= 70) {
    letterGrade = 'B';
  } else if (numericalGrade >= 60) {
    letterGrade = 'C';
  } else if (numericalGrade >= 50) {
    letterGrade = 'D';
  } else {
    letterGrade = 'F';
  }

  print("Your letter grade is: $letterGrade");
}
