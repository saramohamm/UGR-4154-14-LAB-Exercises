class Student {
  String name;
  List<int> marks;

  Student(this.name, this.marks);

  double calculateAverageMark() {
    if (marks.isEmpty) {
      return 0.0;
    }
    return marks.reduce((a, b) => a + b) / marks.length;
  }
}

void main() {
  Student student = Student('Sara', [95, 80, 78]);
  print('Average mark for ${student.name}: ${student.calculateAverageMark()}');
}
