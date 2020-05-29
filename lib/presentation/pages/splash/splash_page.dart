import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_list/application/auth/auth_bloc.dart';
import 'package:travel_list/presentation/routes/router.gr.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.map(
          initial: (_) {print("------ splash auth state initial");},
          authenticated: (value) {
            print("------ splash auth state authenticated");
            ExtendedNavigator.of(context).pushReplacementNamed(
              Routes.tripsOverviewPage);
          },
          unauthenticated: (_) {
            print("------ splash auth state unauthenticated");
            ExtendedNavigator.of(context).pushReplacementNamed(
              Routes.signInPage);
          }
        );
      },
      child: const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
