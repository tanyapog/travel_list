import 'package:auto_route/auto_route.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:travel_list/application/auth/auth_bloc.dart';
import 'package:travel_list/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:travel_list/injection.dart';
import 'package:travel_list/presentation/pages/sign_in/widgets/email_input.dart';
import 'package:travel_list/presentation/pages/sign_in/widgets/password_input.dart';
import 'package:travel_list/presentation/pages/sign_in/widgets/sign_in_buttons.dart';
import 'package:travel_list/presentation/routes/router.gr.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign In'),
      ),
      body: BlocProvider(
          create: (_) => getIt<SignInFormBloc>(),
          child: SignInForm(),
      ),
    );
  }
}

class SignInForm extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignInFormBloc, SignInFormState>(
      listenWhen: (previous, current) =>
        previous.authFailureOrSuccessOption != current.authFailureOrSuccessOption,
      listener: (context, state) {
        state.authFailureOrSuccessOption.fold(
          () {}, // case of none
          (either) => either.fold(
            (failure) { // Authorisation failed
              FlushbarHelper.createError(message: failure.map(
                cancelledByUser: (_) => 'Cancelled',
                serverError: (_) => 'Server Error',
                emailAlreadyInUse: (_) => 'Email already in use',
                invalidEmailAndPasswordCombination: (_) =>
                  'Invalid email and password combination',)).show(context);
            },
            (_) { // Authorisation succeed, show to user the list of trips
              context.read<AuthBloc>().add(const AuthEvent.authCheckRequested());
              ExtendedNavigator.of(context).replace(Routes.tripsOverviewPage);
            }
          ),
        );
      },
      child: ListView(
        padding: const EdgeInsets.all(10),
        children: <Widget>[
          const SizedBox(height: 8,),
          const Text('Travel List', textAlign: TextAlign.center, style: TextStyle(fontSize: 30)),
          const SizedBox(height: 8,),
          EmailInput(),
          const SizedBox(height: 8),
          PasswordInput(),
          Row(
            children: <Widget>[
              SignInButton(),
              RegisterButton(),
            ],
          ),
          SignInWithGoogleButton(),
        ],
      ),
    );
  }
}

