import 'package:flutter/material.dart';
import 'package:travel_list/screens/root_app_wrapper/root_app_wrapper.dart';

class AppWidget extends StatelessWidget {
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