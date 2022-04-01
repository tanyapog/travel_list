import 'package:flutter/material.dart';

TextButton greyButton({
  required void Function() onPressed,
  required String title,}) =>
  TextButton(
    style: TextButton.styleFrom(backgroundColor: Colors.blueGrey.shade50,),
    onPressed: onPressed,
    child: Text(title),
  );

TextButton amberButton({
  required void Function() onPressed,
  required String title,}) =>
  TextButton(
    style: TextButton.styleFrom(backgroundColor: Colors.amber,),
    onPressed: onPressed,
    child: Text(title),
  );
