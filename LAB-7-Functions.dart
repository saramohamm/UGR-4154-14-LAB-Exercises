import 'dart:io';

void main() {
  print("Enter your numerical grade:");
  int numericalGrade = int.parse(stdin.readLineSync()!);

  String letterGrade;
  switch (numericalGrade ~/ 10) {
    case 10:
    case 9:
      letterGrade = 'A';
      break;
    case 8:
      letterGrade = 'B';
      break;
    case 7:
      letterGrade = 'C';
      break;
    case 6:
      letterGrade = 'D';
      break;
    default:
      letterGrade = 'F';
  }

  print("Your letter grade is: $letterGrade");
}
