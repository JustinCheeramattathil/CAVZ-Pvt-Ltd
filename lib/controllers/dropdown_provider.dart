import 'package:flutter/material.dart';
/*This class handles when ever we click the dropdown button the dropdown list is appearing in the UI through the
help of this provier class  
*/
class DropdownProvider extends ChangeNotifier {
  String? _selectedLanguage;

  String? get selectedLanguage => _selectedLanguage;

//Setter method for changing the value
  void setSelectedLanguage(String language) {
    _selectedLanguage = language;
    notifyListeners();
  }
  bool _isVisible = false;

  bool get isVisible => _isVisible;

//Setter method for dropdown visibility
  void toggleVisibility() {
    _isVisible = !_isVisible;
    notifyListeners();
  }
}