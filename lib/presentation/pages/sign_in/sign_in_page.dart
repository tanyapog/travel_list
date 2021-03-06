import 'package:auto_route/auto_route.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:travel_list/application/auth/auth_bloc.dart';
import 'package:travel_list/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:travel_list/injection.dart';
import 'package:travel_list/presentation/routes/router.gr.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign In'),
      ),
      body: BlocProvider(
          create: (BuildContext context) => getIt<SignInFormBloc>(),
          child: SignInForm(),
      ),
    );
  }
}

class SignInForm extends StatelessWidget {
  // this key should be static, otherwise it makes keyboard disappearing when focusing on TextFormField
  static final GlobalKey<FormState> _globalSignInFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInFormBloc, SignInFormState>(
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
      builder: (context, state) {
        return Form(
          key: _globalSignInFormKey,
          child: Container(
            padding: const EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
                const SizedBox(height: 8,),
                const Text('Travel List', textAlign: TextAlign.center, style: TextStyle(fontSize: 30)),
                const SizedBox(height: 8,),
                TextFormField(
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.email),
                    labelText: 'Email',
                  ),
                  autocorrect: false,
                  onChanged: (value) => context.read<SignInFormBloc>().add(
                      SignInFormEvent.emailChanged(value)
                  ),
                  validator: (_) => state.email.invalid
                    ? 'Invalid Email'
                    : null,
                ),
                const SizedBox(height: 8),
                TextFormField(
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.lock),
                    labelText: 'Password',
                  ),
                  autocorrect: false,
                  obscureText: true,
                  onChanged: (value) => context.read<SignInFormBloc>().add(
                      SignInFormEvent.passwordChanged(value)
                  ),
                  validator: (_) => state.password.invalid
                    ? 'Password must be at least 8 characters and contain at least one letter and number'
                    : null,
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: FlatButton(
                        onPressed: () {
                          _globalSignInFormKey.currentState.validate();
                          context.read<SignInFormBloc>().add(
                            const SignInFormEvent.signInWithEmailAndPasswordPressed()
                          );
                        },
                        child: const Text('SIGN IN'),
                      ),
                    ),
                    Expanded(
                      child: FlatButton(
                        onPressed: () {
                          _globalSignInFormKey.currentState.validate();
                          context.read<SignInFormBloc>().add(
                            const SignInFormEvent.registerWithEmailAndPasswordPressed()
                          );
                        },
                        child: const Text('REGISTER'),
                      ),
                    ),
                  ],
                ),
                RaisedButton(
                  onPressed: () {
                    context.read<SignInFormBloc>().add(
                      const SignInFormEvent.signInWithGooglePressed()
                    );
                  },
                  color: Colors.lightBlue,
                  child: const Text('SIGN IN WITH GOOGLE',
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
                if (state.isSubmitting) ... [
                  const SizedBox(height: 8,),
                  const LinearProgressIndicator(),
                ]
              ],
            ),
          ),
        );
      },
    );
  }
}

