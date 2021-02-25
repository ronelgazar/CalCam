import 'package:flutter/cupertino.dart';

class Logger {
  static void log(String methodName, String message) {
    debugPrint("{$methodName} {$message}");
  }
}