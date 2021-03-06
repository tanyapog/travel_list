import 'package:formz/formz.dart';

enum PasswordValidationFailure { invalid }

class Password extends FormzInput<String, PasswordValidationFailure> {

  const Password.pure([String value = '']) : super.pure(value);
  const Password.dirty([String value = '']) : super.dirty(value);

  // at least 8 characters and contain at least one letter and number
  static final _passwordRegex = RegExp(
    r'^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{6,}$'
  );

  @override
  PasswordValidationFailure validator(String value) {
    return _passwordRegex.hasMatch(value)
        ? null
        : PasswordValidationFailure.invalid;
  }
}