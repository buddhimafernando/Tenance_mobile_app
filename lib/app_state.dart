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

  List<String> _requestTypes = [];
  List<String> get requestTypes => _requestTypes;
  set requestTypes(List<String> value) {
    _requestTypes = value;
  }

  void addToRequestTypes(String value) {
    requestTypes.add(value);
  }

  void removeFromRequestTypes(String value) {
    requestTypes.remove(value);
  }

  void removeAtIndexFromRequestTypes(int index) {
    requestTypes.removeAt(index);
  }

  void updateRequestTypesAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    requestTypes[index] = updateFn(_requestTypes[index]);
  }

  void insertAtIndexInRequestTypes(int index, String value) {
    requestTypes.insert(index, value);
  }

  List<int> _values = [50, 30, 20, 20];
  List<int> get values => _values;
  set values(List<int> value) {
    _values = value;
  }

  void addToValues(int value) {
    values.add(value);
  }

  void removeFromValues(int value) {
    values.remove(value);
  }

  void removeAtIndexFromValues(int index) {
    values.removeAt(index);
  }

  void updateValuesAtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    values[index] = updateFn(_values[index]);
  }

  void insertAtIndexInValues(int index, int value) {
    values.insert(index, value);
  }
}
