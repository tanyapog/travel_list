import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_list/application/auth/sign_in_form/sign_in_form_bloc.dart';

class EmailInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignInFormBloc, SignInFormState>(
        buildWhen: (previous, current) => previous.email.value != current.email.value,
        builder: (context, state) {
          return TextFormField(
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
          );
        }
    );
  }
}
