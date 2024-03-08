void main() {
  List<String> hobbies = ['Reading', 'Gaming', 'Cooking'];
  print('Current hobbies: $hobbies');

  hobbies.add('Gardening');
  print('Added hobby: $hobbies');

  hobbies.remove('Reading');
  print('Removed hobby: $hobbies');

  hobbies.sort();
  print('Sorted hobbies: $hobbies');

  print('Is the list empty? ${hobbies.isEmpty}');
}
