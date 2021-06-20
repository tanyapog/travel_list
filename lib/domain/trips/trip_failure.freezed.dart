// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'trip_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$TripFailureTearOff {
  const _$TripFailureTearOff();

// ignore: unused_element
  _InsufficientPermission insufficientPermission(
      PlatformException e, String message) {
    return _InsufficientPermission(
      e,
      message,
    );
  }

// ignore: unused_element
  _UnableToUpdate unableToUpdate(PlatformException e, String message) {
    return _UnableToUpdate(
      e,
      message,
    );
  }

// ignore: unused_element
  _PlatformSpecific platformSpecific(PlatformException e, String message) {
    return _PlatformSpecific(
      e,
      message,
    );
  }

// ignore: unused_element
  _Unexpected unexpected(Exception e, String message) {
    return _Unexpected(
      e,
      message,
    );
  }

// ignore: unused_element
  _UnableToProcess unableToProcess(dynamic obj, String message) {
    return _UnableToProcess(
      obj,
      message,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $TripFailure = _$TripFailureTearOff();

/// @nodoc
mixin _$TripFailure {
  String get message;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult insufficientPermission(PlatformException e, String message),
    @required TResult unableToUpdate(PlatformException e, String message),
    @required TResult platformSpecific(PlatformException e, String message),
    @required TResult unexpected(Exception e, String message),
    @required TResult unableToProcess(dynamic obj, String message),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult insufficientPermission(PlatformException e, String message),
    TResult unableToUpdate(PlatformException e, String message),
    TResult platformSpecific(PlatformException e, String message),
    TResult unexpected(Exception e, String message),
    TResult unableToProcess(dynamic obj, String message),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult insufficientPermission(_InsufficientPermission value),
    @required TResult unableToUpdate(_UnableToUpdate value),
    @required TResult platformSpecific(_PlatformSpecific value),
    @required TResult unexpected(_Unexpected value),
    @required TResult unableToProcess(_UnableToProcess value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult insufficientPermission(_InsufficientPermission value),
    TResult unableToUpdate(_UnableToUpdate value),
    TResult platformSpecific(_PlatformSpecific value),
    TResult unexpected(_Unexpected value),
    TResult unableToProcess(_UnableToProcess value),
    @required TResult orElse(),
  });

  @JsonKey(ignore: true)
  $TripFailureCopyWith<TripFailure> get copyWith;
}

/// @nodoc
abstract class $TripFailureCopyWith<$Res> {
  factory $TripFailureCopyWith(
          TripFailure value, $Res Function(TripFailure) then) =
      _$TripFailureCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$TripFailureCopyWithImpl<$Res> implements $TripFailureCopyWith<$Res> {
  _$TripFailureCopyWithImpl(this._value, this._then);

  final TripFailure _value;
  // ignore: unused_field
  final $Res Function(TripFailure) _then;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(_value.copyWith(
      message: message == freezed ? _value.message : message as String,
    ));
  }
}

/// @nodoc
abstract class _$InsufficientPermissionCopyWith<$Res>
    implements $TripFailureCopyWith<$Res> {
  factory _$InsufficientPermissionCopyWith(_InsufficientPermission value,
          $Res Function(_InsufficientPermission) then) =
      __$InsufficientPermissionCopyWithImpl<$Res>;
  @override
  $Res call({PlatformException e, String message});
}

/// @nodoc
class __$InsufficientPermissionCopyWithImpl<$Res>
    extends _$TripFailureCopyWithImpl<$Res>
    implements _$InsufficientPermissionCopyWith<$Res> {
  __$InsufficientPermissionCopyWithImpl(_InsufficientPermission _value,
      $Res Function(_InsufficientPermission) _then)
      : super(_value, (v) => _then(v as _InsufficientPermission));

  @override
  _InsufficientPermission get _value => super._value as _InsufficientPermission;

  @override
  $Res call({
    Object e = freezed,
    Object message = freezed,
  }) {
    return _then(_InsufficientPermission(
      e == freezed ? _value.e : e as PlatformException,
      message == freezed ? _value.message : message as String,
    ));
  }
}

/// @nodoc
class _$_InsufficientPermission implements _InsufficientPermission {
  const _$_InsufficientPermission(this.e, this.message)
      : assert(e != null),
        assert(message != null);

  @override
  final PlatformException e;
  @override
  final String message;

  @override
  String toString() {
    return 'TripFailure.insufficientPermission(e: $e, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InsufficientPermission &&
            (identical(other.e, e) ||
                const DeepCollectionEquality().equals(other.e, e)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(e) ^
      const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  _$InsufficientPermissionCopyWith<_InsufficientPermission> get copyWith =>
      __$InsufficientPermissionCopyWithImpl<_InsufficientPermission>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult insufficientPermission(PlatformException e, String message),
    @required TResult unableToUpdate(PlatformException e, String message),
    @required TResult platformSpecific(PlatformException e, String message),
    @required TResult unexpected(Exception e, String message),
    @required TResult unableToProcess(dynamic obj, String message),
  }) {
    assert(insufficientPermission != null);
    assert(unableToUpdate != null);
    assert(platformSpecific != null);
    assert(unexpected != null);
    assert(unableToProcess != null);
    return insufficientPermission(e, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult insufficientPermission(PlatformException e, String message),
    TResult unableToUpdate(PlatformException e, String message),
    TResult platformSpecific(PlatformException e, String message),
    TResult unexpected(Exception e, String message),
    TResult unableToProcess(dynamic obj, String message),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (insufficientPermission != null) {
      return insufficientPermission(e, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult insufficientPermission(_InsufficientPermission value),
    @required TResult unableToUpdate(_UnableToUpdate value),
    @required TResult platformSpecific(_PlatformSpecific value),
    @required TResult unexpected(_Unexpected value),
    @required TResult unableToProcess(_UnableToProcess value),
  }) {
    assert(insufficientPermission != null);
    assert(unableToUpdate != null);
    assert(platformSpecific != null);
    assert(unexpected != null);
    assert(unableToProcess != null);
    return insufficientPermission(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult insufficientPermission(_InsufficientPermission value),
    TResult unableToUpdate(_UnableToUpdate value),
    TResult platformSpecific(_PlatformSpecific value),
    TResult unexpected(_Unexpected value),
    TResult unableToProcess(_UnableToProcess value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (insufficientPermission != null) {
      return insufficientPermission(this);
    }
    return orElse();
  }
}

abstract class _InsufficientPermission implements TripFailure {
  const factory _InsufficientPermission(PlatformException e, String message) =
      _$_InsufficientPermission;

  PlatformException get e;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$InsufficientPermissionCopyWith<_InsufficientPermission> get copyWith;
}

/// @nodoc
abstract class _$UnableToUpdateCopyWith<$Res>
    implements $TripFailureCopyWith<$Res> {
  factory _$UnableToUpdateCopyWith(
          _UnableToUpdate value, $Res Function(_UnableToUpdate) then) =
      __$UnableToUpdateCopyWithImpl<$Res>;
  @override
  $Res call({PlatformException e, String message});
}

/// @nodoc
class __$UnableToUpdateCopyWithImpl<$Res>
    extends _$TripFailureCopyWithImpl<$Res>
    implements _$UnableToUpdateCopyWith<$Res> {
  __$UnableToUpdateCopyWithImpl(
      _UnableToUpdate _value, $Res Function(_UnableToUpdate) _then)
      : super(_value, (v) => _then(v as _UnableToUpdate));

  @override
  _UnableToUpdate get _value => super._value as _UnableToUpdate;

  @override
  $Res call({
    Object e = freezed,
    Object message = freezed,
  }) {
    return _then(_UnableToUpdate(
      e == freezed ? _value.e : e as PlatformException,
      message == freezed ? _value.message : message as String,
    ));
  }
}

/// @nodoc
class _$_UnableToUpdate implements _UnableToUpdate {
  const _$_UnableToUpdate(this.e, this.message)
      : assert(e != null),
        assert(message != null);

  @override
  final PlatformException e;
  @override
  final String message;

  @override
  String toString() {
    return 'TripFailure.unableToUpdate(e: $e, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UnableToUpdate &&
            (identical(other.e, e) ||
                const DeepCollectionEquality().equals(other.e, e)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(e) ^
      const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  _$UnableToUpdateCopyWith<_UnableToUpdate> get copyWith =>
      __$UnableToUpdateCopyWithImpl<_UnableToUpdate>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult insufficientPermission(PlatformException e, String message),
    @required TResult unableToUpdate(PlatformException e, String message),
    @required TResult platformSpecific(PlatformException e, String message),
    @required TResult unexpected(Exception e, String message),
    @required TResult unableToProcess(dynamic obj, String message),
  }) {
    assert(insufficientPermission != null);
    assert(unableToUpdate != null);
    assert(platformSpecific != null);
    assert(unexpected != null);
    assert(unableToProcess != null);
    return unableToUpdate(e, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult insufficientPermission(PlatformException e, String message),
    TResult unableToUpdate(PlatformException e, String message),
    TResult platformSpecific(PlatformException e, String message),
    TResult unexpected(Exception e, String message),
    TResult unableToProcess(dynamic obj, String message),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (unableToUpdate != null) {
      return unableToUpdate(e, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult insufficientPermission(_InsufficientPermission value),
    @required TResult unableToUpdate(_UnableToUpdate value),
    @required TResult platformSpecific(_PlatformSpecific value),
    @required TResult unexpected(_Unexpected value),
    @required TResult unableToProcess(_UnableToProcess value),
  }) {
    assert(insufficientPermission != null);
    assert(unableToUpdate != null);
    assert(platformSpecific != null);
    assert(unexpected != null);
    assert(unableToProcess != null);
    return unableToUpdate(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult insufficientPermission(_InsufficientPermission value),
    TResult unableToUpdate(_UnableToUpdate value),
    TResult platformSpecific(_PlatformSpecific value),
    TResult unexpected(_Unexpected value),
    TResult unableToProcess(_UnableToProcess value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (unableToUpdate != null) {
      return unableToUpdate(this);
    }
    return orElse();
  }
}

abstract class _UnableToUpdate implements TripFailure {
  const factory _UnableToUpdate(PlatformException e, String message) =
      _$_UnableToUpdate;

  PlatformException get e;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$UnableToUpdateCopyWith<_UnableToUpdate> get copyWith;
}

/// @nodoc
abstract class _$PlatformSpecificCopyWith<$Res>
    implements $TripFailureCopyWith<$Res> {
  factory _$PlatformSpecificCopyWith(
          _PlatformSpecific value, $Res Function(_PlatformSpecific) then) =
      __$PlatformSpecificCopyWithImpl<$Res>;
  @override
  $Res call({PlatformException e, String message});
}

/// @nodoc
class __$PlatformSpecificCopyWithImpl<$Res>
    extends _$TripFailureCopyWithImpl<$Res>
    implements _$PlatformSpecificCopyWith<$Res> {
  __$PlatformSpecificCopyWithImpl(
      _PlatformSpecific _value, $Res Function(_PlatformSpecific) _then)
      : super(_value, (v) => _then(v as _PlatformSpecific));

  @override
  _PlatformSpecific get _value => super._value as _PlatformSpecific;

  @override
  $Res call({
    Object e = freezed,
    Object message = freezed,
  }) {
    return _then(_PlatformSpecific(
      e == freezed ? _value.e : e as PlatformException,
      message == freezed ? _value.message : message as String,
    ));
  }
}

/// @nodoc
class _$_PlatformSpecific implements _PlatformSpecific {
  const _$_PlatformSpecific(this.e, this.message)
      : assert(e != null),
        assert(message != null);

  @override
  final PlatformException e;
  @override
  final String message;

  @override
  String toString() {
    return 'TripFailure.platformSpecific(e: $e, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PlatformSpecific &&
            (identical(other.e, e) ||
                const DeepCollectionEquality().equals(other.e, e)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(e) ^
      const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  _$PlatformSpecificCopyWith<_PlatformSpecific> get copyWith =>
      __$PlatformSpecificCopyWithImpl<_PlatformSpecific>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult insufficientPermission(PlatformException e, String message),
    @required TResult unableToUpdate(PlatformException e, String message),
    @required TResult platformSpecific(PlatformException e, String message),
    @required TResult unexpected(Exception e, String message),
    @required TResult unableToProcess(dynamic obj, String message),
  }) {
    assert(insufficientPermission != null);
    assert(unableToUpdate != null);
    assert(platformSpecific != null);
    assert(unexpected != null);
    assert(unableToProcess != null);
    return platformSpecific(e, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult insufficientPermission(PlatformException e, String message),
    TResult unableToUpdate(PlatformException e, String message),
    TResult platformSpecific(PlatformException e, String message),
    TResult unexpected(Exception e, String message),
    TResult unableToProcess(dynamic obj, String message),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (platformSpecific != null) {
      return platformSpecific(e, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult insufficientPermission(_InsufficientPermission value),
    @required TResult unableToUpdate(_UnableToUpdate value),
    @required TResult platformSpecific(_PlatformSpecific value),
    @required TResult unexpected(_Unexpected value),
    @required TResult unableToProcess(_UnableToProcess value),
  }) {
    assert(insufficientPermission != null);
    assert(unableToUpdate != null);
    assert(platformSpecific != null);
    assert(unexpected != null);
    assert(unableToProcess != null);
    return platformSpecific(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult insufficientPermission(_InsufficientPermission value),
    TResult unableToUpdate(_UnableToUpdate value),
    TResult platformSpecific(_PlatformSpecific value),
    TResult unexpected(_Unexpected value),
    TResult unableToProcess(_UnableToProcess value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (platformSpecific != null) {
      return platformSpecific(this);
    }
    return orElse();
  }
}

abstract class _PlatformSpecific implements TripFailure {
  const factory _PlatformSpecific(PlatformException e, String message) =
      _$_PlatformSpecific;

  PlatformException get e;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$PlatformSpecificCopyWith<_PlatformSpecific> get copyWith;
}

/// @nodoc
abstract class _$UnexpectedCopyWith<$Res>
    implements $TripFailureCopyWith<$Res> {
  factory _$UnexpectedCopyWith(
          _Unexpected value, $Res Function(_Unexpected) then) =
      __$UnexpectedCopyWithImpl<$Res>;
  @override
  $Res call({Exception e, String message});
}

/// @nodoc
class __$UnexpectedCopyWithImpl<$Res> extends _$TripFailureCopyWithImpl<$Res>
    implements _$UnexpectedCopyWith<$Res> {
  __$UnexpectedCopyWithImpl(
      _Unexpected _value, $Res Function(_Unexpected) _then)
      : super(_value, (v) => _then(v as _Unexpected));

  @override
  _Unexpected get _value => super._value as _Unexpected;

  @override
  $Res call({
    Object e = freezed,
    Object message = freezed,
  }) {
    return _then(_Unexpected(
      e == freezed ? _value.e : e as Exception,
      message == freezed ? _value.message : message as String,
    ));
  }
}

/// @nodoc
class _$_Unexpected implements _Unexpected {
  const _$_Unexpected(this.e, this.message)
      : assert(e != null),
        assert(message != null);

  @override
  final Exception e;
  @override
  final String message;

  @override
  String toString() {
    return 'TripFailure.unexpected(e: $e, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Unexpected &&
            (identical(other.e, e) ||
                const DeepCollectionEquality().equals(other.e, e)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(e) ^
      const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  _$UnexpectedCopyWith<_Unexpected> get copyWith =>
      __$UnexpectedCopyWithImpl<_Unexpected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult insufficientPermission(PlatformException e, String message),
    @required TResult unableToUpdate(PlatformException e, String message),
    @required TResult platformSpecific(PlatformException e, String message),
    @required TResult unexpected(Exception e, String message),
    @required TResult unableToProcess(dynamic obj, String message),
  }) {
    assert(insufficientPermission != null);
    assert(unableToUpdate != null);
    assert(platformSpecific != null);
    assert(unexpected != null);
    assert(unableToProcess != null);
    return unexpected(e, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult insufficientPermission(PlatformException e, String message),
    TResult unableToUpdate(PlatformException e, String message),
    TResult platformSpecific(PlatformException e, String message),
    TResult unexpected(Exception e, String message),
    TResult unableToProcess(dynamic obj, String message),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (unexpected != null) {
      return unexpected(e, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult insufficientPermission(_InsufficientPermission value),
    @required TResult unableToUpdate(_UnableToUpdate value),
    @required TResult platformSpecific(_PlatformSpecific value),
    @required TResult unexpected(_Unexpected value),
    @required TResult unableToProcess(_UnableToProcess value),
  }) {
    assert(insufficientPermission != null);
    assert(unableToUpdate != null);
    assert(platformSpecific != null);
    assert(unexpected != null);
    assert(unableToProcess != null);
    return unexpected(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult insufficientPermission(_InsufficientPermission value),
    TResult unableToUpdate(_UnableToUpdate value),
    TResult platformSpecific(_PlatformSpecific value),
    TResult unexpected(_Unexpected value),
    TResult unableToProcess(_UnableToProcess value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (unexpected != null) {
      return unexpected(this);
    }
    return orElse();
  }
}

abstract class _Unexpected implements TripFailure {
  const factory _Unexpected(Exception e, String message) = _$_Unexpected;

  Exception get e;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$UnexpectedCopyWith<_Unexpected> get copyWith;
}

/// @nodoc
abstract class _$UnableToProcessCopyWith<$Res>
    implements $TripFailureCopyWith<$Res> {
  factory _$UnableToProcessCopyWith(
          _UnableToProcess value, $Res Function(_UnableToProcess) then) =
      __$UnableToProcessCopyWithImpl<$Res>;
  @override
  $Res call({dynamic obj, String message});
}

/// @nodoc
class __$UnableToProcessCopyWithImpl<$Res>
    extends _$TripFailureCopyWithImpl<$Res>
    implements _$UnableToProcessCopyWith<$Res> {
  __$UnableToProcessCopyWithImpl(
      _UnableToProcess _value, $Res Function(_UnableToProcess) _then)
      : super(_value, (v) => _then(v as _UnableToProcess));

  @override
  _UnableToProcess get _value => super._value as _UnableToProcess;

  @override
  $Res call({
    Object obj = freezed,
    Object message = freezed,
  }) {
    return _then(_UnableToProcess(
      obj == freezed ? _value.obj : obj as dynamic,
      message == freezed ? _value.message : message as String,
    ));
  }
}

/// @nodoc
class _$_UnableToProcess implements _UnableToProcess {
  const _$_UnableToProcess(this.obj, this.message)
      : assert(obj != null),
        assert(message != null);

  @override
  final dynamic obj;
  @override
  final String message;

  @override
  String toString() {
    return 'TripFailure.unableToProcess(obj: $obj, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UnableToProcess &&
            (identical(other.obj, obj) ||
                const DeepCollectionEquality().equals(other.obj, obj)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(obj) ^
      const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  _$UnableToProcessCopyWith<_UnableToProcess> get copyWith =>
      __$UnableToProcessCopyWithImpl<_UnableToProcess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult insufficientPermission(PlatformException e, String message),
    @required TResult unableToUpdate(PlatformException e, String message),
    @required TResult platformSpecific(PlatformException e, String message),
    @required TResult unexpected(Exception e, String message),
    @required TResult unableToProcess(dynamic obj, String message),
  }) {
    assert(insufficientPermission != null);
    assert(unableToUpdate != null);
    assert(platformSpecific != null);
    assert(unexpected != null);
    assert(unableToProcess != null);
    return unableToProcess(obj, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult insufficientPermission(PlatformException e, String message),
    TResult unableToUpdate(PlatformException e, String message),
    TResult platformSpecific(PlatformException e, String message),
    TResult unexpected(Exception e, String message),
    TResult unableToProcess(dynamic obj, String message),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (unableToProcess != null) {
      return unableToProcess(obj, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult insufficientPermission(_InsufficientPermission value),
    @required TResult unableToUpdate(_UnableToUpdate value),
    @required TResult platformSpecific(_PlatformSpecific value),
    @required TResult unexpected(_Unexpected value),
    @required TResult unableToProcess(_UnableToProcess value),
  }) {
    assert(insufficientPermission != null);
    assert(unableToUpdate != null);
    assert(platformSpecific != null);
    assert(unexpected != null);
    assert(unableToProcess != null);
    return unableToProcess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult insufficientPermission(_InsufficientPermission value),
    TResult unableToUpdate(_UnableToUpdate value),
    TResult platformSpecific(_PlatformSpecific value),
    TResult unexpected(_Unexpected value),
    TResult unableToProcess(_UnableToProcess value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (unableToProcess != null) {
      return unableToProcess(this);
    }
    return orElse();
  }
}

abstract class _UnableToProcess implements TripFailure {
  const factory _UnableToProcess(dynamic obj, String message) =
      _$_UnableToProcess;

  dynamic get obj;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$UnableToProcessCopyWith<_UnableToProcess> get copyWith;
}
