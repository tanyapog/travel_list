import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';

Flushbar customErrorFlushbar({required String message}) =>
  Flushbar(
    message: message,
    icon: Icon(Icons.warning, size: 28.0, color: Colors.red[300]),
    shouldIconPulse: false, // it's nice animation but it breaks tests
    leftBarIndicatorColor: Colors.red[300],
    duration: const Duration(seconds: 5),
  );
