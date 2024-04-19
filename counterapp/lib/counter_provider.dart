import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  int _counter = 0;

  int get counter => _counter;

  void increment() {
    _counter++;
    notifyListeners();
  }

  void decrement() {
    if (_counter > 0) {
      _counter--;
      notifyListeners();
    }
  }

  int calculateTotalPrice() {
    // Assuming the price per item is 5
    return _counter * 5;
  }
}
