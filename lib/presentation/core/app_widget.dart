import 'package:flutter/material.dart';
import 'package:travel_list/presentation/screens/sign_in/sign_in_screen.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Travel List',
      home: SignInScreen(),
      theme: ThemeData.light().copyWith(
        primaryColor: Colors.white,
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
        )
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}