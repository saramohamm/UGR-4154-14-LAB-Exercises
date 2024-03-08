import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> fetchWeatherData() async {
  String apiKey = "YOUR_API_KEY";
  String city = "Addis Ababa";
  String url = "https://api.openweathermap.org/data/2.5/weather?q=$city&appid=$apiKey";

  var response = await http.get(Uri.parse(url));
  if (response.statusCode == 200) {
    var data = jsonDecode(response.body);
    double temperature = data['main']['temp'] - 273.15;
    String weather = data['weather'][0]['main'];
    print("Current temperature in $city: ${temperature.toStringAsFixed(2)}°C");
    print("Weather conditions: $weather");
  } else {
    print("Failed to fetch weather data. Status code: ${response.statusCode}");
  }
}

void main() async {
  await fetchWeatherData();
}
