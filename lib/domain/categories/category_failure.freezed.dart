// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CategoryFailure {
  String get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PlatformException e, String message)
        insufficientPermission,
    required TResult Function(PlatformException e, String message)
        unableToUpdate,
    required TResult Function(PlatformException e, String message)
        platformSpecific,
    required TResult Function(Exception e, String message) unexpected,
    required TResult Function(dynamic obj, String message) unableToProcess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PlatformException e, String message)?
        insufficientPermission,
    TResult? Function(PlatformException e, String message)? unableToUpdate,
    TResult? Function(PlatformException e, String message)? platformSpecific,
    TResult? Function(Exception e, String message)? unexpected,
    TResult? Function(dynamic obj, String message)? unableToProcess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PlatformException e, String message)?
        insufficientPermission,
    TResult Function(PlatformException e, String message)? unableToUpdate,
    TResult Function(PlatformException e, String message)? platformSpecific,
    TResult Function(Exception e, String message)? unexpected,
    TResult Function(dynamic obj, String message)? unableToProcess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InsufficientPermission value)
        insufficientPermission,
    required TResult Function(_UnableToUpdate value) unableToUpdate,
    required TResult Function(_PlatformSpecific value) platformSpecific,
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(_UnableToProcess value) unableToProcess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InsufficientPermission value)? insufficientPermission,
    TResult? Function(_UnableToUpdate value)? unableToUpdate,
    TResult? Function(_PlatformSpecific value)? platformSpecific,
    TResult? Function(_Unexpected value)? unexpected,
    TResult? Function(_UnableToProcess value)? unableToProcess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InsufficientPermission value)? insufficientPermission,
    TResult Function(_UnableToUpdate value)? unableToUpdate,
    TResult Function(_PlatformSpecific value)? platformSpecific,
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_UnableToProcess value)? unableToProcess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CategoryFailureCopyWith<CategoryFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryFailureCopyWith<$Res> {
  factory $CategoryFailureCopyWith(
          CategoryFailure value, $Res Function(CategoryFailure) then) =
      _$CategoryFailureCopyWithImpl<$Res, CategoryFailure>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$CategoryFailureCopyWithImpl<$Res, $Val extends CategoryFailure>
    implements $CategoryFailureCopyWith<$Res> {
  _$CategoryFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InsufficientPermissionImplCopyWith<$Res>
    implements $CategoryFailureCopyWith<$Res> {
  factory _$$InsufficientPermissionImplCopyWith(
          _$InsufficientPermissionImpl value,
          $Res Function(_$InsufficientPermissionImpl) then) =
      __$$InsufficientPermissionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PlatformException e, String message});
}

/// @nodoc
class __$$InsufficientPermissionImplCopyWithImpl<$Res>
    extends _$CategoryFailureCopyWithImpl<$Res, _$InsufficientPermissionImpl>
    implements _$$InsufficientPermissionImplCopyWith<$Res> {
  __$$InsufficientPermissionImplCopyWithImpl(
      _$InsufficientPermissionImpl _value,
      $Res Function(_$InsufficientPermissionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? e = null,
    Object? message = null,
  }) {
    return _then(_$InsufficientPermissionImpl(
      null == e
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as PlatformException,
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InsufficientPermissionImpl implements _InsufficientPermission {
  const _$InsufficientPermissionImpl(this.e, this.message);

  @override
  final PlatformException e;
  @override
  final String message;

  @override
  String toString() {
    return 'CategoryFailure.insufficientPermission(e: $e, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InsufficientPermissionImpl &&
            (identical(other.e, e) || other.e == e) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, e, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InsufficientPermissionImplCopyWith<_$InsufficientPermissionImpl>
      get copyWith => __$$InsufficientPermissionImplCopyWithImpl<
          _$InsufficientPermissionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PlatformException e, String message)
        insufficientPermission,
    required TResult Function(PlatformException e, String message)
        unableToUpdate,
    required TResult Function(PlatformException e, String message)
        platformSpecific,
    required TResult Function(Exception e, String message) unexpected,
    required TResult Function(dynamic obj, String message) unableToProcess,
  }) {
    return insufficientPermission(e, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PlatformException e, String message)?
        insufficientPermission,
    TResult? Function(PlatformException e, String message)? unableToUpdate,
    TResult? Function(PlatformException e, String message)? platformSpecific,
    TResult? Function(Exception e, String message)? unexpected,
    TResult? Function(dynamic obj, String message)? unableToProcess,
  }) {
    return insufficientPermission?.call(e, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PlatformException e, String message)?
        insufficientPermission,
    TResult Function(PlatformException e, String message)? unableToUpdate,
    TResult Function(PlatformException e, String message)? platformSpecific,
    TResult Function(Exception e, String message)? unexpected,
    TResult Function(dynamic obj, String message)? unableToProcess,
    required TResult orElse(),
  }) {
    if (insufficientPermission != null) {
      return insufficientPermission(e, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InsufficientPermission value)
        insufficientPermission,
    required TResult Function(_UnableToUpdate value) unableToUpdate,
    required TResult Function(_PlatformSpecific value) platformSpecific,
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(_UnableToProcess value) unableToProcess,
  }) {
    return insufficientPermission(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InsufficientPermission value)? insufficientPermission,
    TResult? Function(_UnableToUpdate value)? unableToUpdate,
    TResult? Function(_PlatformSpecific value)? platformSpecific,
    TResult? Function(_Unexpected value)? unexpected,
    TResult? Function(_UnableToProcess value)? unableToProcess,
  }) {
    return insufficientPermission?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InsufficientPermission value)? insufficientPermission,
    TResult Function(_UnableToUpdate value)? unableToUpdate,
    TResult Function(_PlatformSpecific value)? platformSpecific,
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_UnableToProcess value)? unableToProcess,
    required TResult orElse(),
  }) {
    if (insufficientPermission != null) {
      return insufficientPermission(this);
    }
    return orElse();
  }
}

abstract class _InsufficientPermission implements CategoryFailure {
  const factory _InsufficientPermission(
          final PlatformException e, final String message) =
      _$InsufficientPermissionImpl;

  PlatformException get e;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$InsufficientPermissionImplCopyWith<_$InsufficientPermissionImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnableToUpdateImplCopyWith<$Res>
    implements $CategoryFailureCopyWith<$Res> {
  factory _$$UnableToUpdateImplCopyWith(_$UnableToUpdateImpl value,
          $Res Function(_$UnableToUpdateImpl) then) =
      __$$UnableToUpdateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PlatformException e, String message});
}

/// @nodoc
class __$$UnableToUpdateImplCopyWithImpl<$Res>
    extends _$CategoryFailureCopyWithImpl<$Res, _$UnableToUpdateImpl>
    implements _$$UnableToUpdateImplCopyWith<$Res> {
  __$$UnableToUpdateImplCopyWithImpl(
      _$UnableToUpdateImpl _value, $Res Function(_$UnableToUpdateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? e = null,
    Object? message = null,
  }) {
    return _then(_$UnableToUpdateImpl(
      null == e
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as PlatformException,
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UnableToUpdateImpl implements _UnableToUpdate {
  const _$UnableToUpdateImpl(this.e, this.message);

  @override
  final PlatformException e;
  @override
  final String message;

  @override
  String toString() {
    return 'CategoryFailure.unableToUpdate(e: $e, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnableToUpdateImpl &&
            (identical(other.e, e) || other.e == e) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, e, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UnableToUpdateImplCopyWith<_$UnableToUpdateImpl> get copyWith =>
      __$$UnableToUpdateImplCopyWithImpl<_$UnableToUpdateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PlatformException e, String message)
        insufficientPermission,
    required TResult Function(PlatformException e, String message)
        unableToUpdate,
    required TResult Function(PlatformException e, String message)
        platformSpecific,
    required TResult Function(Exception e, String message) unexpected,
    required TResult Function(dynamic obj, String message) unableToProcess,
  }) {
    return unableToUpdate(e, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PlatformException e, String message)?
        insufficientPermission,
    TResult? Function(PlatformException e, String message)? unableToUpdate,
    TResult? Function(PlatformException e, String message)? platformSpecific,
    TResult? Function(Exception e, String message)? unexpected,
    TResult? Function(dynamic obj, String message)? unableToProcess,
  }) {
    return unableToUpdate?.call(e, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PlatformException e, String message)?
        insufficientPermission,
    TResult Function(PlatformException e, String message)? unableToUpdate,
    TResult Function(PlatformException e, String message)? platformSpecific,
    TResult Function(Exception e, String message)? unexpected,
    TResult Function(dynamic obj, String message)? unableToProcess,
    required TResult orElse(),
  }) {
    if (unableToUpdate != null) {
      return unableToUpdate(e, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InsufficientPermission value)
        insufficientPermission,
    required TResult Function(_UnableToUpdate value) unableToUpdate,
    required TResult Function(_PlatformSpecific value) platformSpecific,
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(_UnableToProcess value) unableToProcess,
  }) {
    return unableToUpdate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InsufficientPermission value)? insufficientPermission,
    TResult? Function(_UnableToUpdate value)? unableToUpdate,
    TResult? Function(_PlatformSpecific value)? platformSpecific,
    TResult? Function(_Unexpected value)? unexpected,
    TResult? Function(_UnableToProcess value)? unableToProcess,
  }) {
    return unableToUpdate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InsufficientPermission value)? insufficientPermission,
    TResult Function(_UnableToUpdate value)? unableToUpdate,
    TResult Function(_PlatformSpecific value)? platformSpecific,
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_UnableToProcess value)? unableToProcess,
    required TResult orElse(),
  }) {
    if (unableToUpdate != null) {
      return unableToUpdate(this);
    }
    return orElse();
  }
}

abstract class _UnableToUpdate implements CategoryFailure {
  const factory _UnableToUpdate(
      final PlatformException e, final String message) = _$UnableToUpdateImpl;

  PlatformException get e;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$UnableToUpdateImplCopyWith<_$UnableToUpdateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PlatformSpecificImplCopyWith<$Res>
    implements $CategoryFailureCopyWith<$Res> {
  factory _$$PlatformSpecificImplCopyWith(_$PlatformSpecificImpl value,
          $Res Function(_$PlatformSpecificImpl) then) =
      __$$PlatformSpecificImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PlatformException e, String message});
}

/// @nodoc
class __$$PlatformSpecificImplCopyWithImpl<$Res>
    extends _$CategoryFailureCopyWithImpl<$Res, _$PlatformSpecificImpl>
    implements _$$PlatformSpecificImplCopyWith<$Res> {
  __$$PlatformSpecificImplCopyWithImpl(_$PlatformSpecificImpl _value,
      $Res Function(_$PlatformSpecificImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? e = null,
    Object? message = null,
  }) {
    return _then(_$PlatformSpecificImpl(
      null == e
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as PlatformException,
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PlatformSpecificImpl implements _PlatformSpecific {
  const _$PlatformSpecificImpl(this.e, this.message);

  @override
  final PlatformException e;
  @override
  final String message;

  @override
  String toString() {
    return 'CategoryFailure.platformSpecific(e: $e, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlatformSpecificImpl &&
            (identical(other.e, e) || other.e == e) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, e, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlatformSpecificImplCopyWith<_$PlatformSpecificImpl> get copyWith =>
      __$$PlatformSpecificImplCopyWithImpl<_$PlatformSpecificImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PlatformException e, String message)
        insufficientPermission,
    required TResult Function(PlatformException e, String message)
        unableToUpdate,
    required TResult Function(PlatformException e, String message)
        platformSpecific,
    required TResult Function(Exception e, String message) unexpected,
    required TResult Function(dynamic obj, String message) unableToProcess,
  }) {
    return platformSpecific(e, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PlatformException e, String message)?
        insufficientPermission,
    TResult? Function(PlatformException e, String message)? unableToUpdate,
    TResult? Function(PlatformException e, String message)? platformSpecific,
    TResult? Function(Exception e, String message)? unexpected,
    TResult? Function(dynamic obj, String message)? unableToProcess,
  }) {
    return platformSpecific?.call(e, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PlatformException e, String message)?
        insufficientPermission,
    TResult Function(PlatformException e, String message)? unableToUpdate,
    TResult Function(PlatformException e, String message)? platformSpecific,
    TResult Function(Exception e, String message)? unexpected,
    TResult Function(dynamic obj, String message)? unableToProcess,
    required TResult orElse(),
  }) {
    if (platformSpecific != null) {
      return platformSpecific(e, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InsufficientPermission value)
        insufficientPermission,
    required TResult Function(_UnableToUpdate value) unableToUpdate,
    required TResult Function(_PlatformSpecific value) platformSpecific,
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(_UnableToProcess value) unableToProcess,
  }) {
    return platformSpecific(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InsufficientPermission value)? insufficientPermission,
    TResult? Function(_UnableToUpdate value)? unableToUpdate,
    TResult? Function(_PlatformSpecific value)? platformSpecific,
    TResult? Function(_Unexpected value)? unexpected,
    TResult? Function(_UnableToProcess value)? unableToProcess,
  }) {
    return platformSpecific?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InsufficientPermission value)? insufficientPermission,
    TResult Function(_UnableToUpdate value)? unableToUpdate,
    TResult Function(_PlatformSpecific value)? platformSpecific,
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_UnableToProcess value)? unableToProcess,
    required TResult orElse(),
  }) {
    if (platformSpecific != null) {
      return platformSpecific(this);
    }
    return orElse();
  }
}

abstract class _PlatformSpecific implements CategoryFailure {
  const factory _PlatformSpecific(
      final PlatformException e, final String message) = _$PlatformSpecificImpl;

  PlatformException get e;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$PlatformSpecificImplCopyWith<_$PlatformSpecificImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnexpectedImplCopyWith<$Res>
    implements $CategoryFailureCopyWith<$Res> {
  factory _$$UnexpectedImplCopyWith(
          _$UnexpectedImpl value, $Res Function(_$UnexpectedImpl) then) =
      __$$UnexpectedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Exception e, String message});
}

/// @nodoc
class __$$UnexpectedImplCopyWithImpl<$Res>
    extends _$CategoryFailureCopyWithImpl<$Res, _$UnexpectedImpl>
    implements _$$UnexpectedImplCopyWith<$Res> {
  __$$UnexpectedImplCopyWithImpl(
      _$UnexpectedImpl _value, $Res Function(_$UnexpectedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? e = null,
    Object? message = null,
  }) {
    return _then(_$UnexpectedImpl(
      null == e
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as Exception,
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UnexpectedImpl implements _Unexpected {
  const _$UnexpectedImpl(this.e, this.message);

  @override
  final Exception e;
  @override
  final String message;

  @override
  String toString() {
    return 'CategoryFailure.unexpected(e: $e, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnexpectedImpl &&
            (identical(other.e, e) || other.e == e) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, e, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UnexpectedImplCopyWith<_$UnexpectedImpl> get copyWith =>
      __$$UnexpectedImplCopyWithImpl<_$UnexpectedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PlatformException e, String message)
        insufficientPermission,
    required TResult Function(PlatformException e, String message)
        unableToUpdate,
    required TResult Function(PlatformException e, String message)
        platformSpecific,
    required TResult Function(Exception e, String message) unexpected,
    required TResult Function(dynamic obj, String message) unableToProcess,
  }) {
    return unexpected(e, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PlatformException e, String message)?
        insufficientPermission,
    TResult? Function(PlatformException e, String message)? unableToUpdate,
    TResult? Function(PlatformException e, String message)? platformSpecific,
    TResult? Function(Exception e, String message)? unexpected,
    TResult? Function(dynamic obj, String message)? unableToProcess,
  }) {
    return unexpected?.call(e, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PlatformException e, String message)?
        insufficientPermission,
    TResult Function(PlatformException e, String message)? unableToUpdate,
    TResult Function(PlatformException e, String message)? platformSpecific,
    TResult Function(Exception e, String message)? unexpected,
    TResult Function(dynamic obj, String message)? unableToProcess,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected(e, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InsufficientPermission value)
        insufficientPermission,
    required TResult Function(_UnableToUpdate value) unableToUpdate,
    required TResult Function(_PlatformSpecific value) platformSpecific,
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(_UnableToProcess value) unableToProcess,
  }) {
    return unexpected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InsufficientPermission value)? insufficientPermission,
    TResult? Function(_UnableToUpdate value)? unableToUpdate,
    TResult? Function(_PlatformSpecific value)? platformSpecific,
    TResult? Function(_Unexpected value)? unexpected,
    TResult? Function(_UnableToProcess value)? unableToProcess,
  }) {
    return unexpected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InsufficientPermission value)? insufficientPermission,
    TResult Function(_UnableToUpdate value)? unableToUpdate,
    TResult Function(_PlatformSpecific value)? platformSpecific,
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_UnableToProcess value)? unableToProcess,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected(this);
    }
    return orElse();
  }
}

abstract class _Unexpected implements CategoryFailure {
  const factory _Unexpected(final Exception e, final String message) =
      _$UnexpectedImpl;

  Exception get e;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$UnexpectedImplCopyWith<_$UnexpectedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnableToProcessImplCopyWith<$Res>
    implements $CategoryFailureCopyWith<$Res> {
  factory _$$UnableToProcessImplCopyWith(_$UnableToProcessImpl value,
          $Res Function(_$UnableToProcessImpl) then) =
      __$$UnableToProcessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({dynamic obj, String message});
}

/// @nodoc
class __$$UnableToProcessImplCopyWithImpl<$Res>
    extends _$CategoryFailureCopyWithImpl<$Res, _$UnableToProcessImpl>
    implements _$$UnableToProcessImplCopyWith<$Res> {
  __$$UnableToProcessImplCopyWithImpl(
      _$UnableToProcessImpl _value, $Res Function(_$UnableToProcessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? obj = freezed,
    Object? message = null,
  }) {
    return _then(_$UnableToProcessImpl(
      freezed == obj
          ? _value.obj
          : obj // ignore: cast_nullable_to_non_nullable
              as dynamic,
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UnableToProcessImpl implements _UnableToProcess {
  const _$UnableToProcessImpl(this.obj, this.message);

  @override
  final dynamic obj;
  @override
  final String message;

  @override
  String toString() {
    return 'CategoryFailure.unableToProcess(obj: $obj, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnableToProcessImpl &&
            const DeepCollectionEquality().equals(other.obj, obj) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(obj), message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UnableToProcessImplCopyWith<_$UnableToProcessImpl> get copyWith =>
      __$$UnableToProcessImplCopyWithImpl<_$UnableToProcessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PlatformException e, String message)
        insufficientPermission,
    required TResult Function(PlatformException e, String message)
        unableToUpdate,
    required TResult Function(PlatformException e, String message)
        platformSpecific,
    required TResult Function(Exception e, String message) unexpected,
    required TResult Function(dynamic obj, String message) unableToProcess,
  }) {
    return unableToProcess(obj, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PlatformException e, String message)?
        insufficientPermission,
    TResult? Function(PlatformException e, String message)? unableToUpdate,
    TResult? Function(PlatformException e, String message)? platformSpecific,
    TResult? Function(Exception e, String message)? unexpected,
    TResult? Function(dynamic obj, String message)? unableToProcess,
  }) {
    return unableToProcess?.call(obj, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PlatformException e, String message)?
        insufficientPermission,
    TResult Function(PlatformException e, String message)? unableToUpdate,
    TResult Function(PlatformException e, String message)? platformSpecific,
    TResult Function(Exception e, String message)? unexpected,
    TResult Function(dynamic obj, String message)? unableToProcess,
    required TResult orElse(),
  }) {
    if (unableToProcess != null) {
      return unableToProcess(obj, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InsufficientPermission value)
        insufficientPermission,
    required TResult Function(_UnableToUpdate value) unableToUpdate,
    required TResult Function(_PlatformSpecific value) platformSpecific,
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(_UnableToProcess value) unableToProcess,
  }) {
    return unableToProcess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InsufficientPermission value)? insufficientPermission,
    TResult? Function(_UnableToUpdate value)? unableToUpdate,
    TResult? Function(_PlatformSpecific value)? platformSpecific,
    TResult? Function(_Unexpected value)? unexpected,
    TResult? Function(_UnableToProcess value)? unableToProcess,
  }) {
    return unableToProcess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InsufficientPermission value)? insufficientPermission,
    TResult Function(_UnableToUpdate value)? unableToUpdate,
    TResult Function(_PlatformSpecific value)? platformSpecific,
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_UnableToProcess value)? unableToProcess,
    required TResult orElse(),
  }) {
    if (unableToProcess != null) {
      return unableToProcess(this);
    }
    return orElse();
  }
}

abstract class _UnableToProcess implements CategoryFailure {
  const factory _UnableToProcess(final dynamic obj, final String message) =
      _$UnableToProcessImpl;

  dynamic get obj;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$UnableToProcessImplCopyWith<_$UnableToProcessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
