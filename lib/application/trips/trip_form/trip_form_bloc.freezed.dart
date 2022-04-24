// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'trip_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TripFormEventTearOff {
  const _$TripFormEventTearOff();

  _Initialized initialized(Option<Trip> initialTripOption) {
    return _Initialized(
      initialTripOption,
    );
  }

  _NameChanged nameChanged(String nameStr) {
    return _NameChanged(
      nameStr,
    );
  }

  _DescriptionChanged descriptionChanged(String descriptionStr) {
    return _DescriptionChanged(
      descriptionStr,
    );
  }

  _DateStartChanged dateStartChanged(DateTime dateStart) {
    return _DateStartChanged(
      dateStart,
    );
  }

  _DateEndChanged dateEndChanged(DateTime dateEnd) {
    return _DateEndChanged(
      dateEnd,
    );
  }

  _CompletedPressed completedPressed() {
    return const _CompletedPressed();
  }

  _Saved saved() {
    return const _Saved();
  }
}

/// @nodoc
const $TripFormEvent = _$TripFormEventTearOff();

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
    TResult Function(Option<Trip> initialTripOption)? initialized,
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String descriptionStr)? descriptionChanged,
    TResult Function(DateTime dateStart)? dateStartChanged,
    TResult Function(DateTime dateEnd)? dateEndChanged,
    TResult Function()? completedPressed,
    TResult Function()? saved,
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
    TResult Function(_Initialized value)? initialized,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_DateStartChanged value)? dateStartChanged,
    TResult Function(_DateEndChanged value)? dateEndChanged,
    TResult Function(_CompletedPressed value)? completedPressed,
    TResult Function(_Saved value)? saved,
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
      _$TripFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$TripFormEventCopyWithImpl<$Res>
    implements $TripFormEventCopyWith<$Res> {
  _$TripFormEventCopyWithImpl(this._value, this._then);

  final TripFormEvent _value;
  // ignore: unused_field
  final $Res Function(TripFormEvent) _then;
}

/// @nodoc
abstract class _$InitializedCopyWith<$Res> {
  factory _$InitializedCopyWith(
          _Initialized value, $Res Function(_Initialized) then) =
      __$InitializedCopyWithImpl<$Res>;
  $Res call({Option<Trip> initialTripOption});
}

/// @nodoc
class __$InitializedCopyWithImpl<$Res> extends _$TripFormEventCopyWithImpl<$Res>
    implements _$InitializedCopyWith<$Res> {
  __$InitializedCopyWithImpl(
      _Initialized _value, $Res Function(_Initialized) _then)
      : super(_value, (v) => _then(v as _Initialized));

  @override
  _Initialized get _value => super._value as _Initialized;

  @override
  $Res call({
    Object? initialTripOption = freezed,
  }) {
    return _then(_Initialized(
      initialTripOption == freezed
          ? _value.initialTripOption
          : initialTripOption // ignore: cast_nullable_to_non_nullable
              as Option<Trip>,
    ));
  }
}

/// @nodoc

class _$_Initialized implements _Initialized {
  const _$_Initialized(this.initialTripOption);

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
            other is _Initialized &&
            const DeepCollectionEquality()
                .equals(other.initialTripOption, initialTripOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(initialTripOption));

  @JsonKey(ignore: true)
  @override
  _$InitializedCopyWith<_Initialized> get copyWith =>
      __$InitializedCopyWithImpl<_Initialized>(this, _$identity);

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
    TResult Function(Option<Trip> initialTripOption)? initialized,
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String descriptionStr)? descriptionChanged,
    TResult Function(DateTime dateStart)? dateStartChanged,
    TResult Function(DateTime dateEnd)? dateEndChanged,
    TResult Function()? completedPressed,
    TResult Function()? saved,
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
    TResult Function(_Initialized value)? initialized,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_DateStartChanged value)? dateStartChanged,
    TResult Function(_DateEndChanged value)? dateEndChanged,
    TResult Function(_CompletedPressed value)? completedPressed,
    TResult Function(_Saved value)? saved,
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
  const factory _Initialized(Option<Trip> initialTripOption) = _$_Initialized;

  Option<Trip> get initialTripOption;
  @JsonKey(ignore: true)
  _$InitializedCopyWith<_Initialized> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$NameChangedCopyWith<$Res> {
  factory _$NameChangedCopyWith(
          _NameChanged value, $Res Function(_NameChanged) then) =
      __$NameChangedCopyWithImpl<$Res>;
  $Res call({String nameStr});
}

/// @nodoc
class __$NameChangedCopyWithImpl<$Res> extends _$TripFormEventCopyWithImpl<$Res>
    implements _$NameChangedCopyWith<$Res> {
  __$NameChangedCopyWithImpl(
      _NameChanged _value, $Res Function(_NameChanged) _then)
      : super(_value, (v) => _then(v as _NameChanged));

  @override
  _NameChanged get _value => super._value as _NameChanged;

  @override
  $Res call({
    Object? nameStr = freezed,
  }) {
    return _then(_NameChanged(
      nameStr == freezed
          ? _value.nameStr
          : nameStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_NameChanged implements _NameChanged {
  const _$_NameChanged(this.nameStr);

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
            other is _NameChanged &&
            const DeepCollectionEquality().equals(other.nameStr, nameStr));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(nameStr));

  @JsonKey(ignore: true)
  @override
  _$NameChangedCopyWith<_NameChanged> get copyWith =>
      __$NameChangedCopyWithImpl<_NameChanged>(this, _$identity);

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
    TResult Function(Option<Trip> initialTripOption)? initialized,
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String descriptionStr)? descriptionChanged,
    TResult Function(DateTime dateStart)? dateStartChanged,
    TResult Function(DateTime dateEnd)? dateEndChanged,
    TResult Function()? completedPressed,
    TResult Function()? saved,
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
    TResult Function(_Initialized value)? initialized,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_DateStartChanged value)? dateStartChanged,
    TResult Function(_DateEndChanged value)? dateEndChanged,
    TResult Function(_CompletedPressed value)? completedPressed,
    TResult Function(_Saved value)? saved,
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
  const factory _NameChanged(String nameStr) = _$_NameChanged;

  String get nameStr;
  @JsonKey(ignore: true)
  _$NameChangedCopyWith<_NameChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DescriptionChangedCopyWith<$Res> {
  factory _$DescriptionChangedCopyWith(
          _DescriptionChanged value, $Res Function(_DescriptionChanged) then) =
      __$DescriptionChangedCopyWithImpl<$Res>;
  $Res call({String descriptionStr});
}

/// @nodoc
class __$DescriptionChangedCopyWithImpl<$Res>
    extends _$TripFormEventCopyWithImpl<$Res>
    implements _$DescriptionChangedCopyWith<$Res> {
  __$DescriptionChangedCopyWithImpl(
      _DescriptionChanged _value, $Res Function(_DescriptionChanged) _then)
      : super(_value, (v) => _then(v as _DescriptionChanged));

  @override
  _DescriptionChanged get _value => super._value as _DescriptionChanged;

  @override
  $Res call({
    Object? descriptionStr = freezed,
  }) {
    return _then(_DescriptionChanged(
      descriptionStr == freezed
          ? _value.descriptionStr
          : descriptionStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_DescriptionChanged implements _DescriptionChanged {
  const _$_DescriptionChanged(this.descriptionStr);

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
            other is _DescriptionChanged &&
            const DeepCollectionEquality()
                .equals(other.descriptionStr, descriptionStr));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(descriptionStr));

  @JsonKey(ignore: true)
  @override
  _$DescriptionChangedCopyWith<_DescriptionChanged> get copyWith =>
      __$DescriptionChangedCopyWithImpl<_DescriptionChanged>(this, _$identity);

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
    TResult Function(Option<Trip> initialTripOption)? initialized,
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String descriptionStr)? descriptionChanged,
    TResult Function(DateTime dateStart)? dateStartChanged,
    TResult Function(DateTime dateEnd)? dateEndChanged,
    TResult Function()? completedPressed,
    TResult Function()? saved,
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
    TResult Function(_Initialized value)? initialized,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_DateStartChanged value)? dateStartChanged,
    TResult Function(_DateEndChanged value)? dateEndChanged,
    TResult Function(_CompletedPressed value)? completedPressed,
    TResult Function(_Saved value)? saved,
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
  const factory _DescriptionChanged(String descriptionStr) =
      _$_DescriptionChanged;

  String get descriptionStr;
  @JsonKey(ignore: true)
  _$DescriptionChangedCopyWith<_DescriptionChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DateStartChangedCopyWith<$Res> {
  factory _$DateStartChangedCopyWith(
          _DateStartChanged value, $Res Function(_DateStartChanged) then) =
      __$DateStartChangedCopyWithImpl<$Res>;
  $Res call({DateTime dateStart});
}

/// @nodoc
class __$DateStartChangedCopyWithImpl<$Res>
    extends _$TripFormEventCopyWithImpl<$Res>
    implements _$DateStartChangedCopyWith<$Res> {
  __$DateStartChangedCopyWithImpl(
      _DateStartChanged _value, $Res Function(_DateStartChanged) _then)
      : super(_value, (v) => _then(v as _DateStartChanged));

  @override
  _DateStartChanged get _value => super._value as _DateStartChanged;

  @override
  $Res call({
    Object? dateStart = freezed,
  }) {
    return _then(_DateStartChanged(
      dateStart == freezed
          ? _value.dateStart
          : dateStart // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_DateStartChanged implements _DateStartChanged {
  const _$_DateStartChanged(this.dateStart);

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
            other is _DateStartChanged &&
            const DeepCollectionEquality().equals(other.dateStart, dateStart));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(dateStart));

  @JsonKey(ignore: true)
  @override
  _$DateStartChangedCopyWith<_DateStartChanged> get copyWith =>
      __$DateStartChangedCopyWithImpl<_DateStartChanged>(this, _$identity);

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
    TResult Function(Option<Trip> initialTripOption)? initialized,
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String descriptionStr)? descriptionChanged,
    TResult Function(DateTime dateStart)? dateStartChanged,
    TResult Function(DateTime dateEnd)? dateEndChanged,
    TResult Function()? completedPressed,
    TResult Function()? saved,
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
    TResult Function(_Initialized value)? initialized,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_DateStartChanged value)? dateStartChanged,
    TResult Function(_DateEndChanged value)? dateEndChanged,
    TResult Function(_CompletedPressed value)? completedPressed,
    TResult Function(_Saved value)? saved,
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
  const factory _DateStartChanged(DateTime dateStart) = _$_DateStartChanged;

  DateTime get dateStart;
  @JsonKey(ignore: true)
  _$DateStartChangedCopyWith<_DateStartChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DateEndChangedCopyWith<$Res> {
  factory _$DateEndChangedCopyWith(
          _DateEndChanged value, $Res Function(_DateEndChanged) then) =
      __$DateEndChangedCopyWithImpl<$Res>;
  $Res call({DateTime dateEnd});
}

/// @nodoc
class __$DateEndChangedCopyWithImpl<$Res>
    extends _$TripFormEventCopyWithImpl<$Res>
    implements _$DateEndChangedCopyWith<$Res> {
  __$DateEndChangedCopyWithImpl(
      _DateEndChanged _value, $Res Function(_DateEndChanged) _then)
      : super(_value, (v) => _then(v as _DateEndChanged));

  @override
  _DateEndChanged get _value => super._value as _DateEndChanged;

  @override
  $Res call({
    Object? dateEnd = freezed,
  }) {
    return _then(_DateEndChanged(
      dateEnd == freezed
          ? _value.dateEnd
          : dateEnd // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_DateEndChanged implements _DateEndChanged {
  const _$_DateEndChanged(this.dateEnd);

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
            other is _DateEndChanged &&
            const DeepCollectionEquality().equals(other.dateEnd, dateEnd));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(dateEnd));

  @JsonKey(ignore: true)
  @override
  _$DateEndChangedCopyWith<_DateEndChanged> get copyWith =>
      __$DateEndChangedCopyWithImpl<_DateEndChanged>(this, _$identity);

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
    TResult Function(Option<Trip> initialTripOption)? initialized,
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String descriptionStr)? descriptionChanged,
    TResult Function(DateTime dateStart)? dateStartChanged,
    TResult Function(DateTime dateEnd)? dateEndChanged,
    TResult Function()? completedPressed,
    TResult Function()? saved,
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
    TResult Function(_Initialized value)? initialized,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_DateStartChanged value)? dateStartChanged,
    TResult Function(_DateEndChanged value)? dateEndChanged,
    TResult Function(_CompletedPressed value)? completedPressed,
    TResult Function(_Saved value)? saved,
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
  const factory _DateEndChanged(DateTime dateEnd) = _$_DateEndChanged;

  DateTime get dateEnd;
  @JsonKey(ignore: true)
  _$DateEndChangedCopyWith<_DateEndChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CompletedPressedCopyWith<$Res> {
  factory _$CompletedPressedCopyWith(
          _CompletedPressed value, $Res Function(_CompletedPressed) then) =
      __$CompletedPressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$CompletedPressedCopyWithImpl<$Res>
    extends _$TripFormEventCopyWithImpl<$Res>
    implements _$CompletedPressedCopyWith<$Res> {
  __$CompletedPressedCopyWithImpl(
      _CompletedPressed _value, $Res Function(_CompletedPressed) _then)
      : super(_value, (v) => _then(v as _CompletedPressed));

  @override
  _CompletedPressed get _value => super._value as _CompletedPressed;
}

/// @nodoc

class _$_CompletedPressed implements _CompletedPressed {
  const _$_CompletedPressed();

  @override
  String toString() {
    return 'TripFormEvent.completedPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _CompletedPressed);
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
    TResult Function(Option<Trip> initialTripOption)? initialized,
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String descriptionStr)? descriptionChanged,
    TResult Function(DateTime dateStart)? dateStartChanged,
    TResult Function(DateTime dateEnd)? dateEndChanged,
    TResult Function()? completedPressed,
    TResult Function()? saved,
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
    TResult Function(_Initialized value)? initialized,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_DateStartChanged value)? dateStartChanged,
    TResult Function(_DateEndChanged value)? dateEndChanged,
    TResult Function(_CompletedPressed value)? completedPressed,
    TResult Function(_Saved value)? saved,
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
  const factory _CompletedPressed() = _$_CompletedPressed;
}

/// @nodoc
abstract class _$SavedCopyWith<$Res> {
  factory _$SavedCopyWith(_Saved value, $Res Function(_Saved) then) =
      __$SavedCopyWithImpl<$Res>;
}

/// @nodoc
class __$SavedCopyWithImpl<$Res> extends _$TripFormEventCopyWithImpl<$Res>
    implements _$SavedCopyWith<$Res> {
  __$SavedCopyWithImpl(_Saved _value, $Res Function(_Saved) _then)
      : super(_value, (v) => _then(v as _Saved));

  @override
  _Saved get _value => super._value as _Saved;
}

/// @nodoc

class _$_Saved implements _Saved {
  const _$_Saved();

  @override
  String toString() {
    return 'TripFormEvent.saved()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Saved);
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
    TResult Function(Option<Trip> initialTripOption)? initialized,
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String descriptionStr)? descriptionChanged,
    TResult Function(DateTime dateStart)? dateStartChanged,
    TResult Function(DateTime dateEnd)? dateEndChanged,
    TResult Function()? completedPressed,
    TResult Function()? saved,
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
    TResult Function(_Initialized value)? initialized,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_DateStartChanged value)? dateStartChanged,
    TResult Function(_DateEndChanged value)? dateEndChanged,
    TResult Function(_CompletedPressed value)? completedPressed,
    TResult Function(_Saved value)? saved,
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
  const factory _Saved() = _$_Saved;
}

/// @nodoc
class _$TripFormStateTearOff {
  const _$TripFormStateTearOff();

  _TripFormState call(
      {required Trip trip,
      required bool showErrorMessages,
      required bool isEditing,
      required bool isSaving,
      DateTime? minDateEnd,
      required Option<Either<TripFailure, Unit>> saveFailureOrSuccessOption}) {
    return _TripFormState(
      trip: trip,
      showErrorMessages: showErrorMessages,
      isEditing: isEditing,
      isSaving: isSaving,
      minDateEnd: minDateEnd,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption,
    );
  }
}

/// @nodoc
const $TripFormState = _$TripFormStateTearOff();

/// @nodoc
mixin _$TripFormState {
  Trip get trip => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  bool get isEditing => throw _privateConstructorUsedError;
  bool get isSaving => throw _privateConstructorUsedError;
  DateTime? get minDateEnd => throw _privateConstructorUsedError;
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
      _$TripFormStateCopyWithImpl<$Res>;
  $Res call(
      {Trip trip,
      bool showErrorMessages,
      bool isEditing,
      bool isSaving,
      DateTime? minDateEnd,
      Option<Either<TripFailure, Unit>> saveFailureOrSuccessOption});

  $TripCopyWith<$Res> get trip;
}

/// @nodoc
class _$TripFormStateCopyWithImpl<$Res>
    implements $TripFormStateCopyWith<$Res> {
  _$TripFormStateCopyWithImpl(this._value, this._then);

  final TripFormState _value;
  // ignore: unused_field
  final $Res Function(TripFormState) _then;

  @override
  $Res call({
    Object? trip = freezed,
    Object? showErrorMessages = freezed,
    Object? isEditing = freezed,
    Object? isSaving = freezed,
    Object? minDateEnd = freezed,
    Object? saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      trip: trip == freezed
          ? _value.trip
          : trip // ignore: cast_nullable_to_non_nullable
              as Trip,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isEditing: isEditing == freezed
          ? _value.isEditing
          : isEditing // ignore: cast_nullable_to_non_nullable
              as bool,
      isSaving: isSaving == freezed
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      minDateEnd: minDateEnd == freezed
          ? _value.minDateEnd
          : minDateEnd // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<TripFailure, Unit>>,
    ));
  }

  @override
  $TripCopyWith<$Res> get trip {
    return $TripCopyWith<$Res>(_value.trip, (value) {
      return _then(_value.copyWith(trip: value));
    });
  }
}

/// @nodoc
abstract class _$TripFormStateCopyWith<$Res>
    implements $TripFormStateCopyWith<$Res> {
  factory _$TripFormStateCopyWith(
          _TripFormState value, $Res Function(_TripFormState) then) =
      __$TripFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Trip trip,
      bool showErrorMessages,
      bool isEditing,
      bool isSaving,
      DateTime? minDateEnd,
      Option<Either<TripFailure, Unit>> saveFailureOrSuccessOption});

  @override
  $TripCopyWith<$Res> get trip;
}

/// @nodoc
class __$TripFormStateCopyWithImpl<$Res>
    extends _$TripFormStateCopyWithImpl<$Res>
    implements _$TripFormStateCopyWith<$Res> {
  __$TripFormStateCopyWithImpl(
      _TripFormState _value, $Res Function(_TripFormState) _then)
      : super(_value, (v) => _then(v as _TripFormState));

  @override
  _TripFormState get _value => super._value as _TripFormState;

  @override
  $Res call({
    Object? trip = freezed,
    Object? showErrorMessages = freezed,
    Object? isEditing = freezed,
    Object? isSaving = freezed,
    Object? minDateEnd = freezed,
    Object? saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_TripFormState(
      trip: trip == freezed
          ? _value.trip
          : trip // ignore: cast_nullable_to_non_nullable
              as Trip,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isEditing: isEditing == freezed
          ? _value.isEditing
          : isEditing // ignore: cast_nullable_to_non_nullable
              as bool,
      isSaving: isSaving == freezed
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      minDateEnd: minDateEnd == freezed
          ? _value.minDateEnd
          : minDateEnd // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<TripFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_TripFormState implements _TripFormState {
  const _$_TripFormState(
      {required this.trip,
      required this.showErrorMessages,
      required this.isEditing,
      required this.isSaving,
      this.minDateEnd,
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
  final DateTime? minDateEnd;
  @override
  final Option<Either<TripFailure, Unit>> saveFailureOrSuccessOption;

  @override
  String toString() {
    return 'TripFormState(trip: $trip, showErrorMessages: $showErrorMessages, isEditing: $isEditing, isSaving: $isSaving, minDateEnd: $minDateEnd, saveFailureOrSuccessOption: $saveFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TripFormState &&
            const DeepCollectionEquality().equals(other.trip, trip) &&
            const DeepCollectionEquality()
                .equals(other.showErrorMessages, showErrorMessages) &&
            const DeepCollectionEquality().equals(other.isEditing, isEditing) &&
            const DeepCollectionEquality().equals(other.isSaving, isSaving) &&
            const DeepCollectionEquality()
                .equals(other.minDateEnd, minDateEnd) &&
            const DeepCollectionEquality().equals(
                other.saveFailureOrSuccessOption, saveFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(trip),
      const DeepCollectionEquality().hash(showErrorMessages),
      const DeepCollectionEquality().hash(isEditing),
      const DeepCollectionEquality().hash(isSaving),
      const DeepCollectionEquality().hash(minDateEnd),
      const DeepCollectionEquality().hash(saveFailureOrSuccessOption));

  @JsonKey(ignore: true)
  @override
  _$TripFormStateCopyWith<_TripFormState> get copyWith =>
      __$TripFormStateCopyWithImpl<_TripFormState>(this, _$identity);
}

abstract class _TripFormState implements TripFormState {
  const factory _TripFormState(
      {required Trip trip,
      required bool showErrorMessages,
      required bool isEditing,
      required bool isSaving,
      DateTime? minDateEnd,
      required Option<Either<TripFailure, Unit>>
          saveFailureOrSuccessOption}) = _$_TripFormState;

  @override
  Trip get trip;
  @override
  bool get showErrorMessages;
  @override
  bool get isEditing;
  @override
  bool get isSaving;
  @override
  DateTime? get minDateEnd;
  @override
  Option<Either<TripFailure, Unit>> get saveFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$TripFormStateCopyWith<_TripFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
