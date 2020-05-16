import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:travel_list/domain/auth/value_objects.dart';
import 'package:travel_list/domain/core/entity.dart';
import 'package:travel_list/domain/core/value_objects.dart';

part 'user.freezed.dart';

@freezed
abstract class User with _$User implements IEntity {
  const factory User({
    @required UniqueId id,
    @required String name,
    @required Email email,
  }) = _User;
}
