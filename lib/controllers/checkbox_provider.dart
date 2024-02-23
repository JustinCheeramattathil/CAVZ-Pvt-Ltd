import 'package:flutter/material.dart';
/* This class handles the logic of custom dropdown button.
Actually the state handling of the  dropdown class is handled by a provider class */
class CheckboxProvider extends ChangeNotifier {
 bool _isCheckedTerms = false;
  bool _isCheckedMarketing = false;

  bool get isCheckedTerms => _isCheckedTerms;
  bool get isCheckedMarketing => _isCheckedMarketing;

//Terms& condition checkbox state handling
  void toggleTerms(bool newValue) {
    _isCheckedTerms = newValue;
    notifyListeners();
  }

//Marketing checkbox state handling
  void toggleMarketing(bool newValue) {
    _isCheckedMarketing = newValue;
    notifyListeners();
  }
}