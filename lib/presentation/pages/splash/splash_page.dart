import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_list/application/auth/auth_bloc.dart';
import 'package:travel_list/presentation/routes/router.gr.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) =>
        state.map(
          initial: (_) => null,
          authenticated: (_) => AutoRouter.of(context)
            .replace(const TripsOverviewRoute()),
          unauthenticated: (_) => AutoRouter.of(context)
            .replace(const SignInRoute()),
        ),
      child: const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
