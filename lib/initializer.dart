import 'package:flutter/services.dart';

class Initializer {
  static Future<void> init() async {
    try {
      _initScreenPreference();
    } catch (err) {
      rethrow;
    }
  }

  static void _initScreenPreference() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }
}
