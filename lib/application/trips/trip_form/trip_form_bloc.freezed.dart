// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'trip_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$TripFormEventTearOff {
  const _$TripFormEventTearOff();

// ignore: unused_element
  _Initialized initialized(Option<Trip> initialTripOption) {
    return _Initialized(
      initialTripOption,
    );
  }

// ignore: unused_element
  _NameChanged nameChanged(String nameStr) {
    return _NameChanged(
      nameStr,
    );
  }

// ignore: unused_element
  _DescriptionChanged descriptionChanged(String descriptionStr) {
    return _DescriptionChanged(
      descriptionStr,
    );
  }

// ignore: unused_element
  _CompletedPressed completedPressed() {
    return const _CompletedPressed();
  }

// ignore: unused_element
  _Saved saved() {
    return const _Saved();
  }
}

/// @nodoc
// ignore: unused_element
const $TripFormEvent = _$TripFormEventTearOff();

/// @nodoc
mixin _$TripFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Option<Trip> initialTripOption),
    @required TResult nameChanged(String nameStr),
    @required TResult descriptionChanged(String descriptionStr),
    @required TResult completedPressed(),
    @required TResult saved(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Option<Trip> initialTripOption),
    TResult nameChanged(String nameStr),
    TResult descriptionChanged(String descriptionStr),
    TResult completedPressed(),
    TResult saved(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult nameChanged(_NameChanged value),
    @required TResult descriptionChanged(_DescriptionChanged value),
    @required TResult completedPressed(_CompletedPressed value),
    @required TResult saved(_Saved value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult nameChanged(_NameChanged value),
    TResult descriptionChanged(_DescriptionChanged value),
    TResult completedPressed(_CompletedPressed value),
    TResult saved(_Saved value),
    @required TResult orElse(),
  });
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
    Object initialTripOption = freezed,
  }) {
    return _then(_Initialized(
      initialTripOption == freezed
          ? _value.initialTripOption
          : initialTripOption as Option<Trip>,
    ));
  }
}

/// @nodoc
class _$_Initialized implements _Initialized {
  const _$_Initialized(this.initialTripOption)
      : assert(initialTripOption != null);

  @override
  final Option<Trip> initialTripOption;

  @override
  String toString() {
    return 'TripFormEvent.initialized(initialTripOption: $initialTripOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Initialized &&
            (identical(other.initialTripOption, initialTripOption) ||
                const DeepCollectionEquality()
                    .equals(other.initialTripOption, initialTripOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(initialTripOption);

  @JsonKey(ignore: true)
  @override
  _$InitializedCopyWith<_Initialized> get copyWith =>
      __$InitializedCopyWithImpl<_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Option<Trip> initialTripOption),
    @required TResult nameChanged(String nameStr),
    @required TResult descriptionChanged(String descriptionStr),
    @required TResult completedPressed(),
    @required TResult saved(),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(completedPressed != null);
    assert(saved != null);
    return initialized(initialTripOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Option<Trip> initialTripOption),
    TResult nameChanged(String nameStr),
    TResult descriptionChanged(String descriptionStr),
    TResult completedPressed(),
    TResult saved(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized(initialTripOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult nameChanged(_NameChanged value),
    @required TResult descriptionChanged(_DescriptionChanged value),
    @required TResult completedPressed(_CompletedPressed value),
    @required TResult saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(completedPressed != null);
    assert(saved != null);
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult nameChanged(_NameChanged value),
    TResult descriptionChanged(_DescriptionChanged value),
    TResult completedPressed(_CompletedPressed value),
    TResult saved(_Saved value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
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
  _$InitializedCopyWith<_Initialized> get copyWith;
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
    Object nameStr = freezed,
  }) {
    return _then(_NameChanged(
      nameStr == freezed ? _value.nameStr : nameStr as String,
    ));
  }
}

/// @nodoc
class _$_NameChanged implements _NameChanged {
  const _$_NameChanged(this.nameStr) : assert(nameStr != null);

  @override
  final String nameStr;

  @override
  String toString() {
    return 'TripFormEvent.nameChanged(nameStr: $nameStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NameChanged &&
            (identical(other.nameStr, nameStr) ||
                const DeepCollectionEquality().equals(other.nameStr, nameStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(nameStr);

  @JsonKey(ignore: true)
  @override
  _$NameChangedCopyWith<_NameChanged> get copyWith =>
      __$NameChangedCopyWithImpl<_NameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Option<Trip> initialTripOption),
    @required TResult nameChanged(String nameStr),
    @required TResult descriptionChanged(String descriptionStr),
    @required TResult completedPressed(),
    @required TResult saved(),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(completedPressed != null);
    assert(saved != null);
    return nameChanged(nameStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Option<Trip> initialTripOption),
    TResult nameChanged(String nameStr),
    TResult descriptionChanged(String descriptionStr),
    TResult completedPressed(),
    TResult saved(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (nameChanged != null) {
      return nameChanged(nameStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult nameChanged(_NameChanged value),
    @required TResult descriptionChanged(_DescriptionChanged value),
    @required TResult completedPressed(_CompletedPressed value),
    @required TResult saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(completedPressed != null);
    assert(saved != null);
    return nameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult nameChanged(_NameChanged value),
    TResult descriptionChanged(_DescriptionChanged value),
    TResult completedPressed(_CompletedPressed value),
    TResult saved(_Saved value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
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
  _$NameChangedCopyWith<_NameChanged> get copyWith;
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
    Object descriptionStr = freezed,
  }) {
    return _then(_DescriptionChanged(
      descriptionStr == freezed
          ? _value.descriptionStr
          : descriptionStr as String,
    ));
  }
}

/// @nodoc
class _$_DescriptionChanged implements _DescriptionChanged {
  const _$_DescriptionChanged(this.descriptionStr)
      : assert(descriptionStr != null);

  @override
  final String descriptionStr;

  @override
  String toString() {
    return 'TripFormEvent.descriptionChanged(descriptionStr: $descriptionStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DescriptionChanged &&
            (identical(other.descriptionStr, descriptionStr) ||
                const DeepCollectionEquality()
                    .equals(other.descriptionStr, descriptionStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(descriptionStr);

  @JsonKey(ignore: true)
  @override
  _$DescriptionChangedCopyWith<_DescriptionChanged> get copyWith =>
      __$DescriptionChangedCopyWithImpl<_DescriptionChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Option<Trip> initialTripOption),
    @required TResult nameChanged(String nameStr),
    @required TResult descriptionChanged(String descriptionStr),
    @required TResult completedPressed(),
    @required TResult saved(),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(completedPressed != null);
    assert(saved != null);
    return descriptionChanged(descriptionStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Option<Trip> initialTripOption),
    TResult nameChanged(String nameStr),
    TResult descriptionChanged(String descriptionStr),
    TResult completedPressed(),
    TResult saved(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (descriptionChanged != null) {
      return descriptionChanged(descriptionStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult nameChanged(_NameChanged value),
    @required TResult descriptionChanged(_DescriptionChanged value),
    @required TResult completedPressed(_CompletedPressed value),
    @required TResult saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(completedPressed != null);
    assert(saved != null);
    return descriptionChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult nameChanged(_NameChanged value),
    TResult descriptionChanged(_DescriptionChanged value),
    TResult completedPressed(_CompletedPressed value),
    TResult saved(_Saved value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
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
  _$DescriptionChangedCopyWith<_DescriptionChanged> get copyWith;
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
    return identical(this, other) || (other is _CompletedPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Option<Trip> initialTripOption),
    @required TResult nameChanged(String nameStr),
    @required TResult descriptionChanged(String descriptionStr),
    @required TResult completedPressed(),
    @required TResult saved(),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(completedPressed != null);
    assert(saved != null);
    return completedPressed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Option<Trip> initialTripOption),
    TResult nameChanged(String nameStr),
    TResult descriptionChanged(String descriptionStr),
    TResult completedPressed(),
    TResult saved(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (completedPressed != null) {
      return completedPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult nameChanged(_NameChanged value),
    @required TResult descriptionChanged(_DescriptionChanged value),
    @required TResult completedPressed(_CompletedPressed value),
    @required TResult saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(completedPressed != null);
    assert(saved != null);
    return completedPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult nameChanged(_NameChanged value),
    TResult descriptionChanged(_DescriptionChanged value),
    TResult completedPressed(_CompletedPressed value),
    TResult saved(_Saved value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
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
    return identical(this, other) || (other is _Saved);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Option<Trip> initialTripOption),
    @required TResult nameChanged(String nameStr),
    @required TResult descriptionChanged(String descriptionStr),
    @required TResult completedPressed(),
    @required TResult saved(),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(completedPressed != null);
    assert(saved != null);
    return saved();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Option<Trip> initialTripOption),
    TResult nameChanged(String nameStr),
    TResult descriptionChanged(String descriptionStr),
    TResult completedPressed(),
    TResult saved(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (saved != null) {
      return saved();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult nameChanged(_NameChanged value),
    @required TResult descriptionChanged(_DescriptionChanged value),
    @required TResult completedPressed(_CompletedPressed value),
    @required TResult saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(completedPressed != null);
    assert(saved != null);
    return saved(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult nameChanged(_NameChanged value),
    TResult descriptionChanged(_DescriptionChanged value),
    TResult completedPressed(_CompletedPressed value),
    TResult saved(_Saved value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
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

// ignore: unused_element
  _TripFormState call(
      {@required Trip trip,
      @required bool showErrorMessages,
      @required bool isEditing,
      @required bool isSaving,
      @required Option<Either<TripFailure, Unit>> saveFailureOrSuccessOption}) {
    return _TripFormState(
      trip: trip,
      showErrorMessages: showErrorMessages,
      isEditing: isEditing,
      isSaving: isSaving,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $TripFormState = _$TripFormStateTearOff();

/// @nodoc
mixin _$TripFormState {
  Trip get trip;
  bool get showErrorMessages;
  bool get isEditing;
  bool get isSaving;
  Option<Either<TripFailure, Unit>> get saveFailureOrSuccessOption;

  @JsonKey(ignore: true)
  $TripFormStateCopyWith<TripFormState> get copyWith;
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
    Object trip = freezed,
    Object showErrorMessages = freezed,
    Object isEditing = freezed,
    Object isSaving = freezed,
    Object saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      trip: trip == freezed ? _value.trip : trip as Trip,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isEditing: isEditing == freezed ? _value.isEditing : isEditing as bool,
      isSaving: isSaving == freezed ? _value.isSaving : isSaving as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption as Option<Either<TripFailure, Unit>>,
    ));
  }

  @override
  $TripCopyWith<$Res> get trip {
    if (_value.trip == null) {
      return null;
    }
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
    Object trip = freezed,
    Object showErrorMessages = freezed,
    Object isEditing = freezed,
    Object isSaving = freezed,
    Object saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_TripFormState(
      trip: trip == freezed ? _value.trip : trip as Trip,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isEditing: isEditing == freezed ? _value.isEditing : isEditing as bool,
      isSaving: isSaving == freezed ? _value.isSaving : isSaving as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption as Option<Either<TripFailure, Unit>>,
    ));
  }
}

/// @nodoc
class _$_TripFormState implements _TripFormState {
  const _$_TripFormState(
      {@required this.trip,
      @required this.showErrorMessages,
      @required this.isEditing,
      @required this.isSaving,
      @required this.saveFailureOrSuccessOption})
      : assert(trip != null),
        assert(showErrorMessages != null),
        assert(isEditing != null),
        assert(isSaving != null),
        assert(saveFailureOrSuccessOption != null);

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
        (other is _TripFormState &&
            (identical(other.trip, trip) ||
                const DeepCollectionEquality().equals(other.trip, trip)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.isEditing, isEditing) ||
                const DeepCollectionEquality()
                    .equals(other.isEditing, isEditing)) &&
            (identical(other.isSaving, isSaving) ||
                const DeepCollectionEquality()
                    .equals(other.isSaving, isSaving)) &&
            (identical(other.saveFailureOrSuccessOption,
                    saveFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.saveFailureOrSuccessOption,
                    saveFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(trip) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(isEditing) ^
      const DeepCollectionEquality().hash(isSaving) ^
      const DeepCollectionEquality().hash(saveFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  _$TripFormStateCopyWith<_TripFormState> get copyWith =>
      __$TripFormStateCopyWithImpl<_TripFormState>(this, _$identity);
}

abstract class _TripFormState implements TripFormState {
  const factory _TripFormState(
          {@required
              Trip trip,
          @required
              bool showErrorMessages,
          @required
              bool isEditing,
          @required
              bool isSaving,
          @required
              Option<Either<TripFailure, Unit>> saveFailureOrSuccessOption}) =
      _$_TripFormState;

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
  _$TripFormStateCopyWith<_TripFormState> get copyWith;
}
