import 'package:flutter/material.dart';
import 'package:travel_list/presentation/pages/sign_in/sign_in_page.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Travel List',
      home: SignInPage(),
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