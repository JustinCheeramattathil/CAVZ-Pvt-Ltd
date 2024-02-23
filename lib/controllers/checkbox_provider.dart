import 'package:flutter/material.dart';

class CheckboxProvider extends ChangeNotifier {
 bool _isCheckedTerms = false;
  bool _isCheckedMarketing = false;

  bool get isCheckedTerms => _isCheckedTerms;
  bool get isCheckedMarketing => _isCheckedMarketing;

  void toggleTerms(bool newValue) {
    _isCheckedTerms = newValue;
    notifyListeners();
  }

  void toggleMarketing(bool newValue) {
    _isCheckedMarketing = newValue;
    notifyListeners();
  }
}