import 'dart:async';

import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:travel_list/domain/auth/auth_failure.dart';
import 'package:travel_list/domain/auth/i_auth_facade.dart';
import 'package:travel_list/domain/auth/value_objects.dart';

part 'sign_in_form_bloc.freezed.dart';
part 'sign_in_form_event.dart';
part 'sign_in_form_state.dart';

// https://resocoder.com/2020/03/20/flutter-firebase-ddd-course-4-modeling-the-sign-in-form-events-state/#Bloc

@injectable
class SignInFormBloc extends Bloc<SignInFormEvent, SignInFormState> {
  final IAuthFacade _authFacade;

  SignInFormBloc(this._authFacade) : super(SignInFormState.initial()) {
    on<SignInFormEvent>(
      (event, emit) => event.map(
        emailChanged: (event) =>
          emit(state.copyWith(
            email: Email(event.emailStr),
            authFailureOrSuccessOption: none(),
          ),),
        passwordChanged: (event) =>
          emit(state.copyWith(
            password: Password(event.passwordStr),
            authFailureOrSuccessOption: none(),
          ),),
        registerWithEmailAndPasswordPressed: (event) async =>
          _performAuthAction(_authFacade.registerWithEmailAndPassword, emit),
        signInWithEmailAndPasswordPressed: (event) async =>
          _performAuthAction(_authFacade.signInWithEmailAndPassword, emit),
        signInWithGooglePressed: (event) async {
          emit(state.copyWith(
            isSubmitting: true,
            authFailureOrSuccessOption: none(),
          ),);
          final failureOrSuccess = await _authFacade.signInWithGoogle();
          emit(state.copyWith(
            isSubmitting: false,
            authFailureOrSuccessOption: some(failureOrSuccess),
          ),);
        },
      ),
      transformer: sequential(),
    );
  }

  // this bloc checks email and password for validity,
  // invoke needed forwardedCall and return corresponding SignInFormState
  Future<void> _performAuthAction(
    Future<Either<AuthFailure, Unit>> Function({
      required Email email,
      required Password password,
    }) forwardedCall,
    Emitter<SignInFormState> emit,
  ) async {
    final bool isEmailValid = state.email.isValid();
    final bool isPasswordValid = state.password.isValid();
    Either<AuthFailure, Unit>? failureOrSuccess;
    if (isEmailValid && isPasswordValid) {
      emit(state.copyWith(
        isSubmitting: true, // the form is in the process of being submitted
        authFailureOrSuccessOption: none(),
      ),);
      failureOrSuccess = await forwardedCall(
        email: state.email,
        password: state.password,
      );
    }
    emit(state.copyWith(
      isSubmitting: false,
      showErrorMessages: true,
      authFailureOrSuccessOption: optionOf(failureOrSuccess), // the optionOf turns null into none()
    ),);
  }
}
