import 'package:dartz/dartz.dart';
import 'package:travel_list/domain/core/failures.dart';
import 'package:travel_list/domain/core/value_objects.dart';
import 'package:travel_list/domain/core/value_validatores.dart';

class Email extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Email(String input) {
    return Email._(validateEmail(input));
  }

  const Email._(this.value);
}

class Password extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Password(String input) {
    return Password._(validatePassword(input));
  }

  const Password._(this.value);
}
