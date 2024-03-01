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

  String _route = 'zithub';
  String get route => _route;
  set route(String value) {
    _route = value;
  }

  String _email = '';
  String get email => _email;
  set email(String value) {
    _email = value;
  }
}
