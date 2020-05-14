import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_list/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:travel_list/injection.dart';

class SignInScreen extends StatelessWidget {
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
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInFormBloc, SignInFormState>(
      listener: (context, state) {
        state.authFailureOrSuccessOption.fold(
          () {}, // case of none
          (either) => either.fold(
            (failure) {
              FlushbarHelper.createError(message: failure.map(
                cancelledByUser: (_) => 'Cancelled',
                serverError: (_) => 'Server Error',
                emailAlreadyInUse: (_) => 'Email already in use',
                invalidEmailAndPasswordCombination: (_) =>
                  'Invalid email and password combination',)).show(context);
            },
            (r) {
              // TODO navigate
            }
          ),
        );
      },
      builder: (context, state) {
        return Form(
          autovalidate: state.showErrorMessages,
          child: Container(
            padding: const EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
                const SizedBox(height: 8,),
                const Text('Travel List', textAlign: TextAlign.center, style: TextStyle(fontSize: 30)),
                const SizedBox(height: 8,),
                TextFormField(
                  decoration: InputDecoration(
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
                  decoration: InputDecoration(
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
                  child: Text('SIGN IN WITH GOOGLE',
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

