import 'package:flutter/material.dart';

Dialog customDialog({required Widget child}) =>
  Dialog(
    elevation: 0.0,
    backgroundColor: Colors.transparent,
    child: Container(
        padding: const EdgeInsets.all(16),
        decoration: dialogBoxDecoration,
        child: child,
    ),
  );

BoxDecoration dialogBoxDecoration =
  BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(8.0),
    boxShadow: const [
      BoxShadow(
        color: Colors.black26,
        blurRadius: 10.0,
        offset: Offset(0.0, 10.0),
      ),
    ],
  );
