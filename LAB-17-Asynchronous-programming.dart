import 'dart:async';

Future<List<String>> fetchDataFromDatabase() async {
  await Future.delayed(Duration(seconds: 2)); // Simulating a database call delay
  return ["Data 1", "Data 2", "Data 3"];
}

void main() async {
  print("Loading data...");
  List<String> data = await fetchDataFromDatabase();
  print("Data loaded: $data");
}
