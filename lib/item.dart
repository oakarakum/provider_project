import 'package:flutter/widgets.dart';

class Item with ChangeNotifier {
  int _cartCount;

  Item(this._cartCount);
  int get cartCounts => _cartCount;

  set cartCount(int value) {
    _cartCount = value;
  }

  void increase() {
    _cartCount++;
    notifyListeners();
  }

  void decrease() {
    _cartCount--;
    notifyListeners(); //Değişikliği dinliyor
  }

  void reset() {
    _cartCount = 0;
    notifyListeners();
  }
}
