import 'dart:math';

void main() {
  List<int> numbers = List.generate(10, (_) => Random().nextInt(10));
  print('Generated numbers: $numbers');

  Set<int> uniqueNumbers = numbers.toSet();
  print('Unique numbers: $uniqueNumbers');
}
