import 'package:meta/meta.dart';
import 'package:dartz/dartz.dart';
import 'package:travel_list/domain/core/failures.dart';
import 'package:travel_list/domain/core/value_objects.dart';

@immutable
class EmailAddress extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory EmailAddress(String input) {
    assert(input != null);
    return EmailAddress._(validateEmailAddress(input));
  }

  const EmailAddress._(this.value);
}

Either<ValueFailure<String>, String> validateEmailAddress(String input) {
  const String emailRegex = r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";
  if (RegExp(emailRegex).hasMatch(input))
    return right(input);
  else
    return left(ValueFailure.invalidEmail(failedValue: input));
}