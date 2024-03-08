import 'dart:io';

void main() {
  try {
    File file = File('CHAPTER1.txt');
    String contents = file.readAsStringSync();
    print("File contents: $contents");
  } catch (e) {
    if (e is FileSystemException) {
      print("Error reading file: File not found.");
    } else {
      print("Error reading file: $e");
    }
  }
}
