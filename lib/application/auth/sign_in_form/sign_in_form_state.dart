part of 'sign_in_form_bloc.dart';

// https://resocoder.com/2020/03/20/flutter-firebase-ddd-course-4-modeling-the-sign-in-form-events-state/#State

@freezed
abstract class SignInFormState with _$SignInFormState {
  const factory SignInFormState({
    @required EmailAddress emailAddress,
    @required Password password,
    @required bool showErrorMessages,
    @required bool isSubmitting,
    // We have to reset the authFailureOrSuccessOption field whenever we emit a new state.
    // Because this field holds a "response" from the previous call to sign in/register using IAuthFacade.
    @required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption,
  }) = _SignInFormState;

  factory SignInFormState.initial() => SignInFormState(
    emailAddress: EmailAddress(''),
    password: Password(''),
    showErrorMessages: false,
    isSubmitting: false,
    authFailureOrSuccessOption: none(),
  );
}