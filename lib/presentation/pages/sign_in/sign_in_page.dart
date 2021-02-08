import 'package:auto_route/auto_route.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
              context.bloc<AuthBloc>().add(const AuthEvent.authCheckRequested());
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
                  onChanged: (value) => context
                    .bloc<SignInFormBloc>()
                    .add(SignInFormEvent.emailChanged(value)),
                  //  We use directly context.bloc.state instead of state of the builder
                  //  because the state of builder will be always one character older than the last value which was inputed into the bloc.
                  //  That's because the UI did not have yet the chance to rebuild the builder with delayed value of the bloc
                  validator: (_) => context.bloc<SignInFormBloc>().state.email.value.fold(
                    (failure) => failure .maybeMap(
                      invalidEmail: (_) => 'Invalid Email',
                      // the only failure of [ValueFailure] we need to process in this field is invalidEmail,
                      // so in case of others we do nothing
                      orElse: () => null,
                    ),
                    (_) => null,
                  ),
                ),
                const SizedBox(height: 8),
                TextFormField(
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.lock),
                    labelText: 'Password',
                  ),
                  autocorrect: false,
                  obscureText: true,
                  onChanged: (value) => context
                    .bloc<SignInFormBloc>()
                    .add(SignInFormEvent.passwordChanged(value)),
                  validator: (_) => context.bloc<SignInFormBloc>().state.password.value.fold(
                    (failure) => failure.maybeMap(
                      shortPassword: (_) => 'Short Password',
                      orElse: () => null,
                    ),
                    (_) => null,
                  ),
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: FlatButton(
                        onPressed: () {
                          _globalSignInFormKey.currentState.validate();
                          context.bloc<SignInFormBloc>().add(
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
                          context.bloc<SignInFormBloc>().add(
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
                    context.bloc<SignInFormBloc>().add(
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

