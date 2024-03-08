import 'dart:async';
import 'dart:math';

Future<String> fetchQuote() async {
  await Future.delayed(Duration(seconds: 2)); // Simulating a network call delay
  List<String> quotes = [
   "Strength does not come from physical capacity. It comes from an indomitable will. - Mahatma Gandhi",
"A calm mind always wins. - Ellen Glasgow",
"Success is doing small things well. - Napoleon Hill",
"Never give up because skulls are completed. - Zig Ziglar",
"Learning is not the last goal in life. Life is the ultimate goal of learning. - David Pollock",
  ];
  return quotes[Random().nextInt(quotes.length)];
}

void main() async {
  print("Fetching quote...");
  String quote = await fetchQuote();
  print("Here is your quote: $quote");
}
