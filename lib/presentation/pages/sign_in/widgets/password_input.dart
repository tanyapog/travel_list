import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_list/application/auth/sign_in_form/sign_in_form_bloc.dart';

class PasswordInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignInFormBloc, SignInFormState>(
        buildWhen: (previous, current) => previous.password.value != current.password.value,
        builder: (context, state) {
          return TextFormField(
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
          );
        }
    );
  }
}
