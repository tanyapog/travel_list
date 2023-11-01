import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_list/application/auth/auth_bloc.dart';
import 'package:travel_list/injection.dart';
import 'package:travel_list/presentation/routes/router.dart' as app_router;

class AppWidget extends StatelessWidget {
  final _appRouter = app_router.Router();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
        getIt<AuthBloc>()..add(const AuthEvent.authCheckRequested()),
      child: MaterialApp.router(
        title: 'Travel List',
        routerDelegate: _appRouter.delegate(),
        routeInformationParser: _appRouter.defaultRouteParser(),
        theme: ThemeData.light().copyWith(
          primaryColor: Colors.lime,
          floatingActionButtonTheme: const FloatingActionButtonThemeData(
            backgroundColor: Colors.deepOrange,
          ),
          inputDecorationTheme: InputDecorationTheme(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(3)),
          ),
        ),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
