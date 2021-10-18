import 'package:flutter/material.dart';

FlatButton greyButton({
  required void Function() onPressed,
  required String title})
{
  return FlatButton(
    color: Colors.blueGrey.shade50,
    onPressed: onPressed,
    child: Text(title),
  );
}

FlatButton amberButton({
  required void Function() onPressed,
  required String title})
{
  return FlatButton(
    color: Colors.amber,
    onPressed: onPressed,
    child: Text(title),
  );
}