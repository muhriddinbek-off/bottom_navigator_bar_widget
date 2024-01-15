import 'package:flutter/material.dart';

class ProviderModel extends ChangeNotifier {
  int count = 0;
  incrument() {
    count++;
    notifyListeners();
  }
}
