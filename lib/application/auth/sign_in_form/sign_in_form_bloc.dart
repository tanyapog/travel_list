import 'dart:async';
import 'package:bloc/bloc.dart';
import './bloc.dart';

class SignInFormBloc extends Bloc<SignInFormEvent, SignInFormState> {
  @override
  SignInFormState get initialState => InitialSignInFormState();

  @override
  Stream<SignInFormState> mapEventToState(
    SignInFormEvent event,
  ) async* {
    // TODO: Add Logic
  }
}
