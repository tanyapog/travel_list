import 'package:dartz/dartz.dart';
import 'package:travel_list/domain/core/failures.dart';

Either<ValueFailure<String>, String> validateEmail(String input) {
  const String emailRegex = r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";
  return RegExp(emailRegex).hasMatch(input)
    ? right(input)
    : left(ValueFailure.invalidEmail(failedValue: input));
}

// todo change to careful check and use wile registration only
Either<ValueFailure<String>, String> validatePassword(String input) =>
  input.length >= 6
    ? right(input)
    : left(ValueFailure.shortPassword(failedValue: input));

Either<ValueFailure<String>, String> validateStringNotEmpty(String input) =>
  input.isNotEmpty
    ? right(input)
    : left(ValueFailure.empty(failedValue: input));

Either<ValueFailure<String>, String> validateSingleLine(String input) =>
  input.contains('\n')
    ? left(ValueFailure.multiline(failedValue: input))
    : right(input);

Either<ValueFailure<String>, String> validateMaxStringLength(String input, int maxLength) =>
  input.length <= maxLength
    ? right(input)
    : left(ValueFailure.exceedingLength(failedValue: input, max: maxLength));
