import 'package:flutter/material.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  DateTime? _availableTime;
  DateTime? get availableTime => _availableTime;
  set availableTime(DateTime? value) {
    _availableTime = value;
  }

  String _email = '';
  String get email => _email;
  set email(String value) {
    _email = value;
  }
}
