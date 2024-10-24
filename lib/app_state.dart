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

  DateTime? _availableTime = DateTime.fromMillisecondsSinceEpoch(1729671780000);
  DateTime? get availableTime => _availableTime;
  set availableTime(DateTime? value) {
    _availableTime = value;
  }

  String _email = '';
  String get email => _email;
  set email(String value) {
    _email = value;
  }

  String _userName = '';
  String get userName => _userName;
  set userName(String value) {
    _userName = value;
  }

  String _agreemantId = '';
  String get agreemantId => _agreemantId;
  set agreemantId(String value) {
    _agreemantId = value;
  }

  String _tenantId = '';
  String get tenantId => _tenantId;
  set tenantId(String value) {
    _tenantId = value;
  }

  String _mobileNumber = '';
  String get mobileNumber => _mobileNumber;
  set mobileNumber(String value) {
    _mobileNumber = value;
  }
}
