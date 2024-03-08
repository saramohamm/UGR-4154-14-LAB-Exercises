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

void main() {
  Person person1 = Person('sara', 21, '4kilo');
  Person person2 = Person('mame', 45, '5kilo');

  print('Person 1: $person1');
  print('Person 2: $person2');

  // Modifying attributes
  person1.age = 22;
  person2.name = 'mohammed';

  print('Updated Person 1: $person1');
  print('Updated Person 2: $person2');
}
