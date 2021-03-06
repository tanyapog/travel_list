import 'package:formz/formz.dart';

enum EmailValidationFailure { invalid }

class Email extends FormzInput<String, EmailValidationFailure> {

  const Email.pure([String value = '']) : super.pure(value);
  const Email.dirty([String value = '']) : super.dirty(value);

  static final _emailRegex = RegExp(
    r'^[a-zA-Z0-9.!#$%&’*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$',
  );

  @override
  EmailValidationFailure validator(String value) {
    return _emailRegex.hasMatch(value) ? null : EmailValidationFailure.invalid;
  }
}