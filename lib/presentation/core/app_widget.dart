import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:travel_list/presentation/pages/sign_in/sign_in_page.dart';
import 'package:travel_list/presentation/routes/router.gr.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Travel List',
      home: SignInPage(),
      builder: ExtendedNavigator<Router>(router: Router(),),
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