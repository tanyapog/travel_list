import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:travel_list/injection.dart';
import 'package:travel_list/screens/root_app_wrapper/root_app_wrapper.dart';

void main() {
  configureInjection(Environment.prod);
  runApp(TravelListApp());
}

class TravelListApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Travel List',
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: RootAppWrapper(),
    );
  }
}