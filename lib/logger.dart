import 'package:flutter/foundation.dart';

void debugLog(String message) {
  if(kDebugMode) {
    print(message);
  }
}