part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  // event to notify the bloc that it needs to check if the user is currently authenticated or not
  const factory AuthEvent.authCheckRequested() = AuthCheckRequested;
  // event to notify the bloc that the user has successfully logged out
  const factory AuthEvent.signedOut() = SignedOut;
}
