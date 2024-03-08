class Person {
  String name;
  int age;
  String address;

  Person(this.name, this.age, this.address);

  @override
  String toString() {
    return 'Person{name: $name, age: $age, address: $address}';
  }
}

class Student extends Person {
  int rollNumber;
  List<int> marks;

  Student(String name, int age, String address, this.rollNumber, this.marks)
      : super(name, age, address);

  int calculateTotalMarks() {
    return marks.reduce((value, element) => value + element);
  }

  double calculateAverageMarks() {
    return calculateTotalMarks() / marks.length;
  }

  @override
  String toString() {
    return 'Student{'
        'name: $name, '
        'age: $age, '
        'address: $address, '
        'rollNumber: $rollNumber, '
        'marks: $marks}';
  }
}

void main() {
  Student student1 = Student('Sara', 20, '4kilot', 65, [85, 90, 85]);
  Student student2 = Student('Amen', 22, '6kilo', 19, [90, 95, 70]);

  print('Student 1: $student1');
  print('Student 2: $student2');

  // Calculate total marks and average
  print('Total marks for Student 1: ${student1.calculateTotalMarks()}');
  print('Average marks for Student 1: ${student1.calculateAverageMarks()}');
  print('Total marks for Student 2: ${student2.calculateTotalMarks()}');
  print('Average marks for Student 2: ${student2.calculateAverageMarks()}');
}
