import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_list/application/auth/auth_bloc.dart';
import 'package:travel_list/injection.dart';
import 'package:travel_list/presentation/routes/router.gr.dart' as app_router;

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
        getIt<AuthBloc>()..add(const AuthEvent.authCheckRequested()),
      child: MaterialApp(
        title: 'Travel List',
        builder: ExtendedNavigator.builder(router: app_router.Router(),),
        theme: ThemeData.light().copyWith(
          primaryColor: Colors.lime,
          floatingActionButtonTheme: const FloatingActionButtonThemeData(
            backgroundColor: Colors.deepOrange
          ),
          inputDecorationTheme: InputDecorationTheme(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(3)),
          )
        ),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
