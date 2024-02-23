import 'package:flutter/material.dart';

class DropdownProvider extends ChangeNotifier {
  String? _selectedLanguage;

  String? get selectedLanguage => _selectedLanguage;

  void setSelectedLanguage(String language) {
    _selectedLanguage = language;
    notifyListeners();
  }
  bool _isVisible = false;

  bool get isVisible => _isVisible;

  void toggleVisibility() {
    _isVisible = !_isVisible;
    notifyListeners();
  }
}