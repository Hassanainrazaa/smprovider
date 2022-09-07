import 'package:flutter/material.dart';

class IncrementProvider extends ChangeNotifier {
  int _Counter = 1;

  int get GetCounter => _Counter;

  IncCounter() {
    _Counter++;
    notifyListeners();
  }

  DecCounter() {
    _Counter--;
    if (_Counter == 0) {
      _Counter = 1;
    }
    notifyListeners();
  }
}
