import 'package:flutter/foundation.dart';

class FavoriteItem extends ChangeNotifier {
  String? t;

  setTime(String time) {
    t = time;
    notifyListeners();
  }

  String? get GetDateTime => t;
}
