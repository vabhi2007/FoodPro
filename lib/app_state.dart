import 'package:flutter/material.dart';

class AppState extends ChangeNotifier {
  int _selectedIndex = 0;

  int get selectedIndex => _selectedIndex;

  void setSelectedIndex(int index) {
    _selectedIndex = index;
    notifyListeners(); // Notify listeners to rebuild widgets that depend on this state
  }
}
