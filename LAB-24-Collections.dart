void main() {
  Map<String, int> studentMarks = {
    'Sara': 82,
    'Hanim': 75,
    'Mohammed': 70,
  };

  studentMarks.putIfAbsent('Hiwot', () => 98);
  
  studentMarks.forEach((name, mark) {
    print('$name: $mark');
  });

  print('Does the map contain Sara? ${studentMarks.containsKey('Sara')}');
}
