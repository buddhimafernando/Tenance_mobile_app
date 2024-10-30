import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _agreemantId = prefs.getString('ff_agreemantId') ?? _agreemantId;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

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
    prefs.setString('ff_agreemantId', value);
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

  List<double> _chartValues = [];
  List<double> get chartValues => _chartValues;
  set chartValues(List<double> value) {
    _chartValues = value;
  }

  void addToChartValues(double value) {
    chartValues.add(value);
  }

  void removeFromChartValues(double value) {
    chartValues.remove(value);
  }

  void removeAtIndexFromChartValues(int index) {
    chartValues.removeAt(index);
  }

  void updateChartValuesAtIndex(
    int index,
    double Function(double) updateFn,
  ) {
    chartValues[index] = updateFn(_chartValues[index]);
  }

  void insertAtIndexInChartValues(int index, double value) {
    chartValues.insert(index, value);
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
