import 'package:flutter_riverpod/flutter_riverpod.dart';

final counterProvider = StateProvider((ref) => 0);

void incrementCounter(ProviderReference ref) {
  ref.read(counterProvider).state++;
}

class ProviderReference {
  read(StateProvider<int> counterProvider) {}
}

void decrementCounter(ProviderReference ref) {
  ref.read(counterProvider).state--;
}
