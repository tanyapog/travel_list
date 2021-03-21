import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_list/application/auth/sign_in_form/sign_in_form_bloc.dart';

class SignInButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          context.read<SignInFormBloc>().add(
              const SignInFormEvent.signInWithEmailAndPasswordPressed()
          );
        },
        child: const Text('SIGN IN'),
      ),
    );
  }
}

class RegisterButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          context.read<SignInFormBloc>().add(
              const SignInFormEvent.registerWithEmailAndPasswordPressed()
          );
        },
        child: const Text('REGISTER'),
      ),
    );
  }
}

class SignInWithGoogleButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: RaisedButton(
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
        ),
        BlocBuilder<SignInFormBloc, SignInFormState>(
          buildWhen: (previous, current) => previous.isSubmitting != current.isSubmitting,
          builder: (context, state) {
            return Visibility(
              visible: state.isSubmitting == true,
              child: Column(
                children: const [
                  SizedBox(height: 8,),
                  LinearProgressIndicator(),
                ],
              ),
            );
          },
        ),
      ],
    );
  }
}

