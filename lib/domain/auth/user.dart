import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:travel_list/domain/auth/value_objects.dart';
import 'package:travel_list/domain/core/value_objects.dart';

part 'user.freezed.dart';

@freezed
class User with _$User {
  const factory User({
    required UniqueId id,
    required StringSingleLine name,
    required Email email,
  }) = _User;
}
