import 'package:meta/meta.dart';
import 'package:dartz/dartz.dart';
import 'package:travel_list/domain/core/failures.dart';

@immutable
class EmailAddress {
  final Either<ValueFailure<String>, String> value;

  factory EmailAddress(String input) {
    assert(input != null);
    return EmailAddress._(validateEmailAddress(input));
  }

  const EmailAddress._(this.value);

  @override
  String toString() => 'EmailAddress($value)';

  @override
  bool operator == (Object other) {
    if (identical(this, other)) 
      return true;
    return other is EmailAddress && other.value == value;
  }

  @override
  int get hashCode => value.hashCode;
}

Either<ValueFailure<String>, String> validateEmailAddress(String input) {
  const String emailRegex = r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";
  if (RegExp(emailRegex).hasMatch(input))
    return right(input);
  else
    return left(ValueFailure.invalidEmail(failedValue: input));
}