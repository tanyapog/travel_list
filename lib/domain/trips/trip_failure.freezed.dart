// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'trip_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$TripFailureTearOff {
  const _$TripFailureTearOff();

  _Unexpected unexpected() {
    return const _Unexpected();
  }

  _InsufficientPermission insufficientPermission() {
    return const _InsufficientPermission();
  }
}

// ignore: unused_element
const $TripFailure = _$TripFailureTearOff();

mixin _$TripFailure {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result unexpected(),
    @required Result insufficientPermission(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result unexpected(),
    Result insufficientPermission(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result unexpected(_Unexpected value),
    @required Result insufficientPermission(_InsufficientPermission value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result unexpected(_Unexpected value),
    Result insufficientPermission(_InsufficientPermission value),
    @required Result orElse(),
  });
}

abstract class $TripFailureCopyWith<$Res> {
  factory $TripFailureCopyWith(
          TripFailure value, $Res Function(TripFailure) then) =
      _$TripFailureCopyWithImpl<$Res>;
}

class _$TripFailureCopyWithImpl<$Res> implements $TripFailureCopyWith<$Res> {
  _$TripFailureCopyWithImpl(this._value, this._then);

  final TripFailure _value;
  // ignore: unused_field
  final $Res Function(TripFailure) _then;
}

abstract class _$UnexpectedCopyWith<$Res> {
  factory _$UnexpectedCopyWith(
          _Unexpected value, $Res Function(_Unexpected) then) =
      __$UnexpectedCopyWithImpl<$Res>;
}

class __$UnexpectedCopyWithImpl<$Res> extends _$TripFailureCopyWithImpl<$Res>
    implements _$UnexpectedCopyWith<$Res> {
  __$UnexpectedCopyWithImpl(
      _Unexpected _value, $Res Function(_Unexpected) _then)
      : super(_value, (v) => _then(v as _Unexpected));

  @override
  _Unexpected get _value => super._value as _Unexpected;
}

class _$_Unexpected implements _Unexpected {
  const _$_Unexpected();

  @override
  String toString() {
    return 'TripFailure.unexpected()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Unexpected);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result unexpected(),
    @required Result insufficientPermission(),
  }) {
    assert(unexpected != null);
    assert(insufficientPermission != null);
    return unexpected();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result unexpected(),
    Result insufficientPermission(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unexpected != null) {
      return unexpected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result unexpected(_Unexpected value),
    @required Result insufficientPermission(_InsufficientPermission value),
  }) {
    assert(unexpected != null);
    assert(insufficientPermission != null);
    return unexpected(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result unexpected(_Unexpected value),
    Result insufficientPermission(_InsufficientPermission value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unexpected != null) {
      return unexpected(this);
    }
    return orElse();
  }
}

abstract class _Unexpected implements TripFailure {
  const factory _Unexpected() = _$_Unexpected;
}

abstract class _$InsufficientPermissionCopyWith<$Res> {
  factory _$InsufficientPermissionCopyWith(_InsufficientPermission value,
          $Res Function(_InsufficientPermission) then) =
      __$InsufficientPermissionCopyWithImpl<$Res>;
}

class __$InsufficientPermissionCopyWithImpl<$Res>
    extends _$TripFailureCopyWithImpl<$Res>
    implements _$InsufficientPermissionCopyWith<$Res> {
  __$InsufficientPermissionCopyWithImpl(_InsufficientPermission _value,
      $Res Function(_InsufficientPermission) _then)
      : super(_value, (v) => _then(v as _InsufficientPermission));

  @override
  _InsufficientPermission get _value => super._value as _InsufficientPermission;
}

class _$_InsufficientPermission implements _InsufficientPermission {
  const _$_InsufficientPermission();

  @override
  String toString() {
    return 'TripFailure.insufficientPermission()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _InsufficientPermission);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result unexpected(),
    @required Result insufficientPermission(),
  }) {
    assert(unexpected != null);
    assert(insufficientPermission != null);
    return insufficientPermission();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result unexpected(),
    Result insufficientPermission(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (insufficientPermission != null) {
      return insufficientPermission();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result unexpected(_Unexpected value),
    @required Result insufficientPermission(_InsufficientPermission value),
  }) {
    assert(unexpected != null);
    assert(insufficientPermission != null);
    return insufficientPermission(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result unexpected(_Unexpected value),
    Result insufficientPermission(_InsufficientPermission value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (insufficientPermission != null) {
      return insufficientPermission(this);
    }
    return orElse();
  }
}

abstract class _InsufficientPermission implements TripFailure {
  const factory _InsufficientPermission() = _$_InsufficientPermission;
}
