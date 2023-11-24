// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trip_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TripFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Trip> initialTripOption) initialized,
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String descriptionStr) descriptionChanged,
    required TResult Function(DateTime dateStart) dateStartChanged,
    required TResult Function(DateTime dateEnd) dateEndChanged,
    required TResult Function() completedPressed,
    required TResult Function() saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<Trip> initialTripOption)? initialized,
    TResult? Function(String nameStr)? nameChanged,
    TResult? Function(String descriptionStr)? descriptionChanged,
    TResult? Function(DateTime dateStart)? dateStartChanged,
    TResult? Function(DateTime dateEnd)? dateEndChanged,
    TResult? Function()? completedPressed,
    TResult? Function()? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Trip> initialTripOption)? initialized,
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String descriptionStr)? descriptionChanged,
    TResult Function(DateTime dateStart)? dateStartChanged,
    TResult Function(DateTime dateEnd)? dateEndChanged,
    TResult Function()? completedPressed,
    TResult Function()? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_DescriptionChanged value) descriptionChanged,
    required TResult Function(_DateStartChanged value) dateStartChanged,
    required TResult Function(_DateEndChanged value) dateEndChanged,
    required TResult Function(_CompletedPressed value) completedPressed,
    required TResult Function(_Saved value) saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_DescriptionChanged value)? descriptionChanged,
    TResult? Function(_DateStartChanged value)? dateStartChanged,
    TResult? Function(_DateEndChanged value)? dateEndChanged,
    TResult? Function(_CompletedPressed value)? completedPressed,
    TResult? Function(_Saved value)? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_DateStartChanged value)? dateStartChanged,
    TResult Function(_DateEndChanged value)? dateEndChanged,
    TResult Function(_CompletedPressed value)? completedPressed,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TripFormEventCopyWith<$Res> {
  factory $TripFormEventCopyWith(
          TripFormEvent value, $Res Function(TripFormEvent) then) =
      _$TripFormEventCopyWithImpl<$Res, TripFormEvent>;
}

/// @nodoc
class _$TripFormEventCopyWithImpl<$Res, $Val extends TripFormEvent>
    implements $TripFormEventCopyWith<$Res> {
  _$TripFormEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitializedImplCopyWith<$Res> {
  factory _$$InitializedImplCopyWith(
          _$InitializedImpl value, $Res Function(_$InitializedImpl) then) =
      __$$InitializedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Option<Trip> initialTripOption});
}

/// @nodoc
class __$$InitializedImplCopyWithImpl<$Res>
    extends _$TripFormEventCopyWithImpl<$Res, _$InitializedImpl>
    implements _$$InitializedImplCopyWith<$Res> {
  __$$InitializedImplCopyWithImpl(
      _$InitializedImpl _value, $Res Function(_$InitializedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? initialTripOption = null,
  }) {
    return _then(_$InitializedImpl(
      null == initialTripOption
          ? _value.initialTripOption
          : initialTripOption // ignore: cast_nullable_to_non_nullable
              as Option<Trip>,
    ));
  }
}

/// @nodoc

class _$InitializedImpl implements _Initialized {
  const _$InitializedImpl(this.initialTripOption);

  @override
  final Option<Trip> initialTripOption;

  @override
  String toString() {
    return 'TripFormEvent.initialized(initialTripOption: $initialTripOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitializedImpl &&
            (identical(other.initialTripOption, initialTripOption) ||
                other.initialTripOption == initialTripOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, initialTripOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitializedImplCopyWith<_$InitializedImpl> get copyWith =>
      __$$InitializedImplCopyWithImpl<_$InitializedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Trip> initialTripOption) initialized,
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String descriptionStr) descriptionChanged,
    required TResult Function(DateTime dateStart) dateStartChanged,
    required TResult Function(DateTime dateEnd) dateEndChanged,
    required TResult Function() completedPressed,
    required TResult Function() saved,
  }) {
    return initialized(initialTripOption);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<Trip> initialTripOption)? initialized,
    TResult? Function(String nameStr)? nameChanged,
    TResult? Function(String descriptionStr)? descriptionChanged,
    TResult? Function(DateTime dateStart)? dateStartChanged,
    TResult? Function(DateTime dateEnd)? dateEndChanged,
    TResult? Function()? completedPressed,
    TResult? Function()? saved,
  }) {
    return initialized?.call(initialTripOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Trip> initialTripOption)? initialized,
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String descriptionStr)? descriptionChanged,
    TResult Function(DateTime dateStart)? dateStartChanged,
    TResult Function(DateTime dateEnd)? dateEndChanged,
    TResult Function()? completedPressed,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(initialTripOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_DescriptionChanged value) descriptionChanged,
    required TResult Function(_DateStartChanged value) dateStartChanged,
    required TResult Function(_DateEndChanged value) dateEndChanged,
    required TResult Function(_CompletedPressed value) completedPressed,
    required TResult Function(_Saved value) saved,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_DescriptionChanged value)? descriptionChanged,
    TResult? Function(_DateStartChanged value)? dateStartChanged,
    TResult? Function(_DateEndChanged value)? dateEndChanged,
    TResult? Function(_CompletedPressed value)? completedPressed,
    TResult? Function(_Saved value)? saved,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_DateStartChanged value)? dateStartChanged,
    TResult Function(_DateEndChanged value)? dateEndChanged,
    TResult Function(_CompletedPressed value)? completedPressed,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements TripFormEvent {
  const factory _Initialized(final Option<Trip> initialTripOption) =
      _$InitializedImpl;

  Option<Trip> get initialTripOption;
  @JsonKey(ignore: true)
  _$$InitializedImplCopyWith<_$InitializedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NameChangedImplCopyWith<$Res> {
  factory _$$NameChangedImplCopyWith(
          _$NameChangedImpl value, $Res Function(_$NameChangedImpl) then) =
      __$$NameChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String nameStr});
}

/// @nodoc
class __$$NameChangedImplCopyWithImpl<$Res>
    extends _$TripFormEventCopyWithImpl<$Res, _$NameChangedImpl>
    implements _$$NameChangedImplCopyWith<$Res> {
  __$$NameChangedImplCopyWithImpl(
      _$NameChangedImpl _value, $Res Function(_$NameChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nameStr = null,
  }) {
    return _then(_$NameChangedImpl(
      null == nameStr
          ? _value.nameStr
          : nameStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NameChangedImpl implements _NameChanged {
  const _$NameChangedImpl(this.nameStr);

  @override
  final String nameStr;

  @override
  String toString() {
    return 'TripFormEvent.nameChanged(nameStr: $nameStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NameChangedImpl &&
            (identical(other.nameStr, nameStr) || other.nameStr == nameStr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, nameStr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NameChangedImplCopyWith<_$NameChangedImpl> get copyWith =>
      __$$NameChangedImplCopyWithImpl<_$NameChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Trip> initialTripOption) initialized,
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String descriptionStr) descriptionChanged,
    required TResult Function(DateTime dateStart) dateStartChanged,
    required TResult Function(DateTime dateEnd) dateEndChanged,
    required TResult Function() completedPressed,
    required TResult Function() saved,
  }) {
    return nameChanged(nameStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<Trip> initialTripOption)? initialized,
    TResult? Function(String nameStr)? nameChanged,
    TResult? Function(String descriptionStr)? descriptionChanged,
    TResult? Function(DateTime dateStart)? dateStartChanged,
    TResult? Function(DateTime dateEnd)? dateEndChanged,
    TResult? Function()? completedPressed,
    TResult? Function()? saved,
  }) {
    return nameChanged?.call(nameStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Trip> initialTripOption)? initialized,
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String descriptionStr)? descriptionChanged,
    TResult Function(DateTime dateStart)? dateStartChanged,
    TResult Function(DateTime dateEnd)? dateEndChanged,
    TResult Function()? completedPressed,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(nameStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_DescriptionChanged value) descriptionChanged,
    required TResult Function(_DateStartChanged value) dateStartChanged,
    required TResult Function(_DateEndChanged value) dateEndChanged,
    required TResult Function(_CompletedPressed value) completedPressed,
    required TResult Function(_Saved value) saved,
  }) {
    return nameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_DescriptionChanged value)? descriptionChanged,
    TResult? Function(_DateStartChanged value)? dateStartChanged,
    TResult? Function(_DateEndChanged value)? dateEndChanged,
    TResult? Function(_CompletedPressed value)? completedPressed,
    TResult? Function(_Saved value)? saved,
  }) {
    return nameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_DateStartChanged value)? dateStartChanged,
    TResult Function(_DateEndChanged value)? dateEndChanged,
    TResult Function(_CompletedPressed value)? completedPressed,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(this);
    }
    return orElse();
  }
}

abstract class _NameChanged implements TripFormEvent {
  const factory _NameChanged(final String nameStr) = _$NameChangedImpl;

  String get nameStr;
  @JsonKey(ignore: true)
  _$$NameChangedImplCopyWith<_$NameChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DescriptionChangedImplCopyWith<$Res> {
  factory _$$DescriptionChangedImplCopyWith(_$DescriptionChangedImpl value,
          $Res Function(_$DescriptionChangedImpl) then) =
      __$$DescriptionChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String descriptionStr});
}

/// @nodoc
class __$$DescriptionChangedImplCopyWithImpl<$Res>
    extends _$TripFormEventCopyWithImpl<$Res, _$DescriptionChangedImpl>
    implements _$$DescriptionChangedImplCopyWith<$Res> {
  __$$DescriptionChangedImplCopyWithImpl(_$DescriptionChangedImpl _value,
      $Res Function(_$DescriptionChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? descriptionStr = null,
  }) {
    return _then(_$DescriptionChangedImpl(
      null == descriptionStr
          ? _value.descriptionStr
          : descriptionStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DescriptionChangedImpl implements _DescriptionChanged {
  const _$DescriptionChangedImpl(this.descriptionStr);

  @override
  final String descriptionStr;

  @override
  String toString() {
    return 'TripFormEvent.descriptionChanged(descriptionStr: $descriptionStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DescriptionChangedImpl &&
            (identical(other.descriptionStr, descriptionStr) ||
                other.descriptionStr == descriptionStr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, descriptionStr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DescriptionChangedImplCopyWith<_$DescriptionChangedImpl> get copyWith =>
      __$$DescriptionChangedImplCopyWithImpl<_$DescriptionChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Trip> initialTripOption) initialized,
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String descriptionStr) descriptionChanged,
    required TResult Function(DateTime dateStart) dateStartChanged,
    required TResult Function(DateTime dateEnd) dateEndChanged,
    required TResult Function() completedPressed,
    required TResult Function() saved,
  }) {
    return descriptionChanged(descriptionStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<Trip> initialTripOption)? initialized,
    TResult? Function(String nameStr)? nameChanged,
    TResult? Function(String descriptionStr)? descriptionChanged,
    TResult? Function(DateTime dateStart)? dateStartChanged,
    TResult? Function(DateTime dateEnd)? dateEndChanged,
    TResult? Function()? completedPressed,
    TResult? Function()? saved,
  }) {
    return descriptionChanged?.call(descriptionStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Trip> initialTripOption)? initialized,
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String descriptionStr)? descriptionChanged,
    TResult Function(DateTime dateStart)? dateStartChanged,
    TResult Function(DateTime dateEnd)? dateEndChanged,
    TResult Function()? completedPressed,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (descriptionChanged != null) {
      return descriptionChanged(descriptionStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_DescriptionChanged value) descriptionChanged,
    required TResult Function(_DateStartChanged value) dateStartChanged,
    required TResult Function(_DateEndChanged value) dateEndChanged,
    required TResult Function(_CompletedPressed value) completedPressed,
    required TResult Function(_Saved value) saved,
  }) {
    return descriptionChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_DescriptionChanged value)? descriptionChanged,
    TResult? Function(_DateStartChanged value)? dateStartChanged,
    TResult? Function(_DateEndChanged value)? dateEndChanged,
    TResult? Function(_CompletedPressed value)? completedPressed,
    TResult? Function(_Saved value)? saved,
  }) {
    return descriptionChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_DateStartChanged value)? dateStartChanged,
    TResult Function(_DateEndChanged value)? dateEndChanged,
    TResult Function(_CompletedPressed value)? completedPressed,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (descriptionChanged != null) {
      return descriptionChanged(this);
    }
    return orElse();
  }
}

abstract class _DescriptionChanged implements TripFormEvent {
  const factory _DescriptionChanged(final String descriptionStr) =
      _$DescriptionChangedImpl;

  String get descriptionStr;
  @JsonKey(ignore: true)
  _$$DescriptionChangedImplCopyWith<_$DescriptionChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DateStartChangedImplCopyWith<$Res> {
  factory _$$DateStartChangedImplCopyWith(_$DateStartChangedImpl value,
          $Res Function(_$DateStartChangedImpl) then) =
      __$$DateStartChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime dateStart});
}

/// @nodoc
class __$$DateStartChangedImplCopyWithImpl<$Res>
    extends _$TripFormEventCopyWithImpl<$Res, _$DateStartChangedImpl>
    implements _$$DateStartChangedImplCopyWith<$Res> {
  __$$DateStartChangedImplCopyWithImpl(_$DateStartChangedImpl _value,
      $Res Function(_$DateStartChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dateStart = null,
  }) {
    return _then(_$DateStartChangedImpl(
      null == dateStart
          ? _value.dateStart
          : dateStart // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$DateStartChangedImpl implements _DateStartChanged {
  const _$DateStartChangedImpl(this.dateStart);

  @override
  final DateTime dateStart;

  @override
  String toString() {
    return 'TripFormEvent.dateStartChanged(dateStart: $dateStart)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DateStartChangedImpl &&
            (identical(other.dateStart, dateStart) ||
                other.dateStart == dateStart));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dateStart);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DateStartChangedImplCopyWith<_$DateStartChangedImpl> get copyWith =>
      __$$DateStartChangedImplCopyWithImpl<_$DateStartChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Trip> initialTripOption) initialized,
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String descriptionStr) descriptionChanged,
    required TResult Function(DateTime dateStart) dateStartChanged,
    required TResult Function(DateTime dateEnd) dateEndChanged,
    required TResult Function() completedPressed,
    required TResult Function() saved,
  }) {
    return dateStartChanged(dateStart);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<Trip> initialTripOption)? initialized,
    TResult? Function(String nameStr)? nameChanged,
    TResult? Function(String descriptionStr)? descriptionChanged,
    TResult? Function(DateTime dateStart)? dateStartChanged,
    TResult? Function(DateTime dateEnd)? dateEndChanged,
    TResult? Function()? completedPressed,
    TResult? Function()? saved,
  }) {
    return dateStartChanged?.call(dateStart);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Trip> initialTripOption)? initialized,
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String descriptionStr)? descriptionChanged,
    TResult Function(DateTime dateStart)? dateStartChanged,
    TResult Function(DateTime dateEnd)? dateEndChanged,
    TResult Function()? completedPressed,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (dateStartChanged != null) {
      return dateStartChanged(dateStart);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_DescriptionChanged value) descriptionChanged,
    required TResult Function(_DateStartChanged value) dateStartChanged,
    required TResult Function(_DateEndChanged value) dateEndChanged,
    required TResult Function(_CompletedPressed value) completedPressed,
    required TResult Function(_Saved value) saved,
  }) {
    return dateStartChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_DescriptionChanged value)? descriptionChanged,
    TResult? Function(_DateStartChanged value)? dateStartChanged,
    TResult? Function(_DateEndChanged value)? dateEndChanged,
    TResult? Function(_CompletedPressed value)? completedPressed,
    TResult? Function(_Saved value)? saved,
  }) {
    return dateStartChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_DateStartChanged value)? dateStartChanged,
    TResult Function(_DateEndChanged value)? dateEndChanged,
    TResult Function(_CompletedPressed value)? completedPressed,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (dateStartChanged != null) {
      return dateStartChanged(this);
    }
    return orElse();
  }
}

abstract class _DateStartChanged implements TripFormEvent {
  const factory _DateStartChanged(final DateTime dateStart) =
      _$DateStartChangedImpl;

  DateTime get dateStart;
  @JsonKey(ignore: true)
  _$$DateStartChangedImplCopyWith<_$DateStartChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DateEndChangedImplCopyWith<$Res> {
  factory _$$DateEndChangedImplCopyWith(_$DateEndChangedImpl value,
          $Res Function(_$DateEndChangedImpl) then) =
      __$$DateEndChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime dateEnd});
}

/// @nodoc
class __$$DateEndChangedImplCopyWithImpl<$Res>
    extends _$TripFormEventCopyWithImpl<$Res, _$DateEndChangedImpl>
    implements _$$DateEndChangedImplCopyWith<$Res> {
  __$$DateEndChangedImplCopyWithImpl(
      _$DateEndChangedImpl _value, $Res Function(_$DateEndChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dateEnd = null,
  }) {
    return _then(_$DateEndChangedImpl(
      null == dateEnd
          ? _value.dateEnd
          : dateEnd // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$DateEndChangedImpl implements _DateEndChanged {
  const _$DateEndChangedImpl(this.dateEnd);

  @override
  final DateTime dateEnd;

  @override
  String toString() {
    return 'TripFormEvent.dateEndChanged(dateEnd: $dateEnd)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DateEndChangedImpl &&
            (identical(other.dateEnd, dateEnd) || other.dateEnd == dateEnd));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dateEnd);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DateEndChangedImplCopyWith<_$DateEndChangedImpl> get copyWith =>
      __$$DateEndChangedImplCopyWithImpl<_$DateEndChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Trip> initialTripOption) initialized,
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String descriptionStr) descriptionChanged,
    required TResult Function(DateTime dateStart) dateStartChanged,
    required TResult Function(DateTime dateEnd) dateEndChanged,
    required TResult Function() completedPressed,
    required TResult Function() saved,
  }) {
    return dateEndChanged(dateEnd);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<Trip> initialTripOption)? initialized,
    TResult? Function(String nameStr)? nameChanged,
    TResult? Function(String descriptionStr)? descriptionChanged,
    TResult? Function(DateTime dateStart)? dateStartChanged,
    TResult? Function(DateTime dateEnd)? dateEndChanged,
    TResult? Function()? completedPressed,
    TResult? Function()? saved,
  }) {
    return dateEndChanged?.call(dateEnd);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Trip> initialTripOption)? initialized,
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String descriptionStr)? descriptionChanged,
    TResult Function(DateTime dateStart)? dateStartChanged,
    TResult Function(DateTime dateEnd)? dateEndChanged,
    TResult Function()? completedPressed,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (dateEndChanged != null) {
      return dateEndChanged(dateEnd);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_DescriptionChanged value) descriptionChanged,
    required TResult Function(_DateStartChanged value) dateStartChanged,
    required TResult Function(_DateEndChanged value) dateEndChanged,
    required TResult Function(_CompletedPressed value) completedPressed,
    required TResult Function(_Saved value) saved,
  }) {
    return dateEndChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_DescriptionChanged value)? descriptionChanged,
    TResult? Function(_DateStartChanged value)? dateStartChanged,
    TResult? Function(_DateEndChanged value)? dateEndChanged,
    TResult? Function(_CompletedPressed value)? completedPressed,
    TResult? Function(_Saved value)? saved,
  }) {
    return dateEndChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_DateStartChanged value)? dateStartChanged,
    TResult Function(_DateEndChanged value)? dateEndChanged,
    TResult Function(_CompletedPressed value)? completedPressed,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (dateEndChanged != null) {
      return dateEndChanged(this);
    }
    return orElse();
  }
}

abstract class _DateEndChanged implements TripFormEvent {
  const factory _DateEndChanged(final DateTime dateEnd) = _$DateEndChangedImpl;

  DateTime get dateEnd;
  @JsonKey(ignore: true)
  _$$DateEndChangedImplCopyWith<_$DateEndChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CompletedPressedImplCopyWith<$Res> {
  factory _$$CompletedPressedImplCopyWith(_$CompletedPressedImpl value,
          $Res Function(_$CompletedPressedImpl) then) =
      __$$CompletedPressedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CompletedPressedImplCopyWithImpl<$Res>
    extends _$TripFormEventCopyWithImpl<$Res, _$CompletedPressedImpl>
    implements _$$CompletedPressedImplCopyWith<$Res> {
  __$$CompletedPressedImplCopyWithImpl(_$CompletedPressedImpl _value,
      $Res Function(_$CompletedPressedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CompletedPressedImpl implements _CompletedPressed {
  const _$CompletedPressedImpl();

  @override
  String toString() {
    return 'TripFormEvent.completedPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CompletedPressedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Trip> initialTripOption) initialized,
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String descriptionStr) descriptionChanged,
    required TResult Function(DateTime dateStart) dateStartChanged,
    required TResult Function(DateTime dateEnd) dateEndChanged,
    required TResult Function() completedPressed,
    required TResult Function() saved,
  }) {
    return completedPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<Trip> initialTripOption)? initialized,
    TResult? Function(String nameStr)? nameChanged,
    TResult? Function(String descriptionStr)? descriptionChanged,
    TResult? Function(DateTime dateStart)? dateStartChanged,
    TResult? Function(DateTime dateEnd)? dateEndChanged,
    TResult? Function()? completedPressed,
    TResult? Function()? saved,
  }) {
    return completedPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Trip> initialTripOption)? initialized,
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String descriptionStr)? descriptionChanged,
    TResult Function(DateTime dateStart)? dateStartChanged,
    TResult Function(DateTime dateEnd)? dateEndChanged,
    TResult Function()? completedPressed,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (completedPressed != null) {
      return completedPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_DescriptionChanged value) descriptionChanged,
    required TResult Function(_DateStartChanged value) dateStartChanged,
    required TResult Function(_DateEndChanged value) dateEndChanged,
    required TResult Function(_CompletedPressed value) completedPressed,
    required TResult Function(_Saved value) saved,
  }) {
    return completedPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_DescriptionChanged value)? descriptionChanged,
    TResult? Function(_DateStartChanged value)? dateStartChanged,
    TResult? Function(_DateEndChanged value)? dateEndChanged,
    TResult? Function(_CompletedPressed value)? completedPressed,
    TResult? Function(_Saved value)? saved,
  }) {
    return completedPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_DateStartChanged value)? dateStartChanged,
    TResult Function(_DateEndChanged value)? dateEndChanged,
    TResult Function(_CompletedPressed value)? completedPressed,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (completedPressed != null) {
      return completedPressed(this);
    }
    return orElse();
  }
}

abstract class _CompletedPressed implements TripFormEvent {
  const factory _CompletedPressed() = _$CompletedPressedImpl;
}

/// @nodoc
abstract class _$$SavedImplCopyWith<$Res> {
  factory _$$SavedImplCopyWith(
          _$SavedImpl value, $Res Function(_$SavedImpl) then) =
      __$$SavedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SavedImplCopyWithImpl<$Res>
    extends _$TripFormEventCopyWithImpl<$Res, _$SavedImpl>
    implements _$$SavedImplCopyWith<$Res> {
  __$$SavedImplCopyWithImpl(
      _$SavedImpl _value, $Res Function(_$SavedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SavedImpl implements _Saved {
  const _$SavedImpl();

  @override
  String toString() {
    return 'TripFormEvent.saved()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SavedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Trip> initialTripOption) initialized,
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String descriptionStr) descriptionChanged,
    required TResult Function(DateTime dateStart) dateStartChanged,
    required TResult Function(DateTime dateEnd) dateEndChanged,
    required TResult Function() completedPressed,
    required TResult Function() saved,
  }) {
    return saved();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<Trip> initialTripOption)? initialized,
    TResult? Function(String nameStr)? nameChanged,
    TResult? Function(String descriptionStr)? descriptionChanged,
    TResult? Function(DateTime dateStart)? dateStartChanged,
    TResult? Function(DateTime dateEnd)? dateEndChanged,
    TResult? Function()? completedPressed,
    TResult? Function()? saved,
  }) {
    return saved?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Trip> initialTripOption)? initialized,
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String descriptionStr)? descriptionChanged,
    TResult Function(DateTime dateStart)? dateStartChanged,
    TResult Function(DateTime dateEnd)? dateEndChanged,
    TResult Function()? completedPressed,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_DescriptionChanged value) descriptionChanged,
    required TResult Function(_DateStartChanged value) dateStartChanged,
    required TResult Function(_DateEndChanged value) dateEndChanged,
    required TResult Function(_CompletedPressed value) completedPressed,
    required TResult Function(_Saved value) saved,
  }) {
    return saved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_DescriptionChanged value)? descriptionChanged,
    TResult? Function(_DateStartChanged value)? dateStartChanged,
    TResult? Function(_DateEndChanged value)? dateEndChanged,
    TResult? Function(_CompletedPressed value)? completedPressed,
    TResult? Function(_Saved value)? saved,
  }) {
    return saved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_DateStartChanged value)? dateStartChanged,
    TResult Function(_DateEndChanged value)? dateEndChanged,
    TResult Function(_CompletedPressed value)? completedPressed,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }
}

abstract class _Saved implements TripFormEvent {
  const factory _Saved() = _$SavedImpl;
}

/// @nodoc
mixin _$TripFormState {
  Trip get trip => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  bool get isEditing => throw _privateConstructorUsedError;
  bool get isSaving => throw _privateConstructorUsedError;
  Option<Either<TripFailure, Unit>> get saveFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TripFormStateCopyWith<TripFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TripFormStateCopyWith<$Res> {
  factory $TripFormStateCopyWith(
          TripFormState value, $Res Function(TripFormState) then) =
      _$TripFormStateCopyWithImpl<$Res, TripFormState>;
  @useResult
  $Res call(
      {Trip trip,
      bool showErrorMessages,
      bool isEditing,
      bool isSaving,
      Option<Either<TripFailure, Unit>> saveFailureOrSuccessOption});

  $TripCopyWith<$Res> get trip;
}

/// @nodoc
class _$TripFormStateCopyWithImpl<$Res, $Val extends TripFormState>
    implements $TripFormStateCopyWith<$Res> {
  _$TripFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trip = null,
    Object? showErrorMessages = null,
    Object? isEditing = null,
    Object? isSaving = null,
    Object? saveFailureOrSuccessOption = null,
  }) {
    return _then(_value.copyWith(
      trip: null == trip
          ? _value.trip
          : trip // ignore: cast_nullable_to_non_nullable
              as Trip,
      showErrorMessages: null == showErrorMessages
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isEditing: null == isEditing
          ? _value.isEditing
          : isEditing // ignore: cast_nullable_to_non_nullable
              as bool,
      isSaving: null == isSaving
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      saveFailureOrSuccessOption: null == saveFailureOrSuccessOption
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<TripFailure, Unit>>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TripCopyWith<$Res> get trip {
    return $TripCopyWith<$Res>(_value.trip, (value) {
      return _then(_value.copyWith(trip: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TripFormStateImplCopyWith<$Res>
    implements $TripFormStateCopyWith<$Res> {
  factory _$$TripFormStateImplCopyWith(
          _$TripFormStateImpl value, $Res Function(_$TripFormStateImpl) then) =
      __$$TripFormStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Trip trip,
      bool showErrorMessages,
      bool isEditing,
      bool isSaving,
      Option<Either<TripFailure, Unit>> saveFailureOrSuccessOption});

  @override
  $TripCopyWith<$Res> get trip;
}

/// @nodoc
class __$$TripFormStateImplCopyWithImpl<$Res>
    extends _$TripFormStateCopyWithImpl<$Res, _$TripFormStateImpl>
    implements _$$TripFormStateImplCopyWith<$Res> {
  __$$TripFormStateImplCopyWithImpl(
      _$TripFormStateImpl _value, $Res Function(_$TripFormStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trip = null,
    Object? showErrorMessages = null,
    Object? isEditing = null,
    Object? isSaving = null,
    Object? saveFailureOrSuccessOption = null,
  }) {
    return _then(_$TripFormStateImpl(
      trip: null == trip
          ? _value.trip
          : trip // ignore: cast_nullable_to_non_nullable
              as Trip,
      showErrorMessages: null == showErrorMessages
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isEditing: null == isEditing
          ? _value.isEditing
          : isEditing // ignore: cast_nullable_to_non_nullable
              as bool,
      isSaving: null == isSaving
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      saveFailureOrSuccessOption: null == saveFailureOrSuccessOption
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<TripFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$TripFormStateImpl implements _TripFormState {
  const _$TripFormStateImpl(
      {required this.trip,
      required this.showErrorMessages,
      required this.isEditing,
      required this.isSaving,
      required this.saveFailureOrSuccessOption});

  @override
  final Trip trip;
  @override
  final bool showErrorMessages;
  @override
  final bool isEditing;
  @override
  final bool isSaving;
  @override
  final Option<Either<TripFailure, Unit>> saveFailureOrSuccessOption;

  @override
  String toString() {
    return 'TripFormState(trip: $trip, showErrorMessages: $showErrorMessages, isEditing: $isEditing, isSaving: $isSaving, saveFailureOrSuccessOption: $saveFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TripFormStateImpl &&
            (identical(other.trip, trip) || other.trip == trip) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                other.showErrorMessages == showErrorMessages) &&
            (identical(other.isEditing, isEditing) ||
                other.isEditing == isEditing) &&
            (identical(other.isSaving, isSaving) ||
                other.isSaving == isSaving) &&
            (identical(other.saveFailureOrSuccessOption,
                    saveFailureOrSuccessOption) ||
                other.saveFailureOrSuccessOption ==
                    saveFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, trip, showErrorMessages,
      isEditing, isSaving, saveFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TripFormStateImplCopyWith<_$TripFormStateImpl> get copyWith =>
      __$$TripFormStateImplCopyWithImpl<_$TripFormStateImpl>(this, _$identity);
}

abstract class _TripFormState implements TripFormState {
  const factory _TripFormState(
      {required final Trip trip,
      required final bool showErrorMessages,
      required final bool isEditing,
      required final bool isSaving,
      required final Option<Either<TripFailure, Unit>>
          saveFailureOrSuccessOption}) = _$TripFormStateImpl;

  @override
  Trip get trip;
  @override
  bool get showErrorMessages;
  @override
  bool get isEditing;
  @override
  bool get isSaving;
  @override
  Option<Either<TripFailure, Unit>> get saveFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$$TripFormStateImplCopyWith<_$TripFormStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
