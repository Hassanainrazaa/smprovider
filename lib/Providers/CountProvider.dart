import 'package:flutter/material.dart';

class CountProvider with ChangeNotifier {
  int _count = 58;
  int get count => _count;

  void SetCount() {
    _count++;
    notifyListeners();
  }
}
