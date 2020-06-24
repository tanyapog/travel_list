// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'trip_actor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$TripActorEventTearOff {
  const _$TripActorEventTearOff();

  _Deleted deleted(Trip trip) {
    return _Deleted(
      trip,
    );
  }
}

// ignore: unused_element
const $TripActorEvent = _$TripActorEventTearOff();

mixin _$TripActorEvent {
  Trip get trip;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result deleted(Trip trip),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result deleted(Trip trip),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result deleted(_Deleted value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result deleted(_Deleted value),
    @required Result orElse(),
  });

  $TripActorEventCopyWith<TripActorEvent> get copyWith;
}

abstract class $TripActorEventCopyWith<$Res> {
  factory $TripActorEventCopyWith(
          TripActorEvent value, $Res Function(TripActorEvent) then) =
      _$TripActorEventCopyWithImpl<$Res>;
  $Res call({Trip trip});

  $TripCopyWith<$Res> get trip;
}

class _$TripActorEventCopyWithImpl<$Res>
    implements $TripActorEventCopyWith<$Res> {
  _$TripActorEventCopyWithImpl(this._value, this._then);

  final TripActorEvent _value;
  // ignore: unused_field
  final $Res Function(TripActorEvent) _then;

  @override
  $Res call({
    Object trip = freezed,
  }) {
    return _then(_value.copyWith(
      trip: trip == freezed ? _value.trip : trip as Trip,
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

abstract class _$DeletedCopyWith<$Res>
    implements $TripActorEventCopyWith<$Res> {
  factory _$DeletedCopyWith(_Deleted value, $Res Function(_Deleted) then) =
      __$DeletedCopyWithImpl<$Res>;
  @override
  $Res call({Trip trip});

  @override
  $TripCopyWith<$Res> get trip;
}

class __$DeletedCopyWithImpl<$Res> extends _$TripActorEventCopyWithImpl<$Res>
    implements _$DeletedCopyWith<$Res> {
  __$DeletedCopyWithImpl(_Deleted _value, $Res Function(_Deleted) _then)
      : super(_value, (v) => _then(v as _Deleted));

  @override
  _Deleted get _value => super._value as _Deleted;

  @override
  $Res call({
    Object trip = freezed,
  }) {
    return _then(_Deleted(
      trip == freezed ? _value.trip : trip as Trip,
    ));
  }
}

class _$_Deleted implements _Deleted {
  const _$_Deleted(this.trip) : assert(trip != null);

  @override
  final Trip trip;

  @override
  String toString() {
    return 'TripActorEvent.deleted(trip: $trip)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Deleted &&
            (identical(other.trip, trip) ||
                const DeepCollectionEquality().equals(other.trip, trip)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(trip);

  @override
  _$DeletedCopyWith<_Deleted> get copyWith =>
      __$DeletedCopyWithImpl<_Deleted>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result deleted(Trip trip),
  }) {
    assert(deleted != null);
    return deleted(trip);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result deleted(Trip trip),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleted != null) {
      return deleted(trip);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result deleted(_Deleted value),
  }) {
    assert(deleted != null);
    return deleted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result deleted(_Deleted value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleted != null) {
      return deleted(this);
    }
    return orElse();
  }
}

abstract class _Deleted implements TripActorEvent {
  const factory _Deleted(Trip trip) = _$_Deleted;

  @override
  Trip get trip;
  @override
  _$DeletedCopyWith<_Deleted> get copyWith;
}

class _$TripActorStateTearOff {
  const _$TripActorStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _ActionInProgress actionInProgress() {
    return const _ActionInProgress();
  }

  _DeleteFailure deleteFailure(TripFailure tripFailure) {
    return _DeleteFailure(
      tripFailure,
    );
  }

  _DeleteSuccess deleteSuccess() {
    return const _DeleteSuccess();
  }
}

// ignore: unused_element
const $TripActorState = _$TripActorStateTearOff();

mixin _$TripActorState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result actionInProgress(),
    @required Result deleteFailure(TripFailure tripFailure),
    @required Result deleteSuccess(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result deleteFailure(TripFailure tripFailure),
    Result deleteSuccess(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result actionInProgress(_ActionInProgress value),
    @required Result deleteFailure(_DeleteFailure value),
    @required Result deleteSuccess(_DeleteSuccess value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result deleteFailure(_DeleteFailure value),
    Result deleteSuccess(_DeleteSuccess value),
    @required Result orElse(),
  });
}

abstract class $TripActorStateCopyWith<$Res> {
  factory $TripActorStateCopyWith(
          TripActorState value, $Res Function(TripActorState) then) =
      _$TripActorStateCopyWithImpl<$Res>;
}

class _$TripActorStateCopyWithImpl<$Res>
    implements $TripActorStateCopyWith<$Res> {
  _$TripActorStateCopyWithImpl(this._value, this._then);

  final TripActorState _value;
  // ignore: unused_field
  final $Res Function(TripActorState) _then;
}

abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

class __$InitialCopyWithImpl<$Res> extends _$TripActorStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'TripActorState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result actionInProgress(),
    @required Result deleteFailure(TripFailure tripFailure),
    @required Result deleteSuccess(),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deleteFailure != null);
    assert(deleteSuccess != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result deleteFailure(TripFailure tripFailure),
    Result deleteSuccess(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result actionInProgress(_ActionInProgress value),
    @required Result deleteFailure(_DeleteFailure value),
    @required Result deleteSuccess(_DeleteSuccess value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deleteFailure != null);
    assert(deleteSuccess != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result deleteFailure(_DeleteFailure value),
    Result deleteSuccess(_DeleteSuccess value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements TripActorState {
  const factory _Initial() = _$_Initial;
}

abstract class _$ActionInProgressCopyWith<$Res> {
  factory _$ActionInProgressCopyWith(
          _ActionInProgress value, $Res Function(_ActionInProgress) then) =
      __$ActionInProgressCopyWithImpl<$Res>;
}

class __$ActionInProgressCopyWithImpl<$Res>
    extends _$TripActorStateCopyWithImpl<$Res>
    implements _$ActionInProgressCopyWith<$Res> {
  __$ActionInProgressCopyWithImpl(
      _ActionInProgress _value, $Res Function(_ActionInProgress) _then)
      : super(_value, (v) => _then(v as _ActionInProgress));

  @override
  _ActionInProgress get _value => super._value as _ActionInProgress;
}

class _$_ActionInProgress implements _ActionInProgress {
  const _$_ActionInProgress();

  @override
  String toString() {
    return 'TripActorState.actionInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ActionInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result actionInProgress(),
    @required Result deleteFailure(TripFailure tripFailure),
    @required Result deleteSuccess(),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deleteFailure != null);
    assert(deleteSuccess != null);
    return actionInProgress();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result deleteFailure(TripFailure tripFailure),
    Result deleteSuccess(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (actionInProgress != null) {
      return actionInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result actionInProgress(_ActionInProgress value),
    @required Result deleteFailure(_DeleteFailure value),
    @required Result deleteSuccess(_DeleteSuccess value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deleteFailure != null);
    assert(deleteSuccess != null);
    return actionInProgress(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result deleteFailure(_DeleteFailure value),
    Result deleteSuccess(_DeleteSuccess value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (actionInProgress != null) {
      return actionInProgress(this);
    }
    return orElse();
  }
}

abstract class _ActionInProgress implements TripActorState {
  const factory _ActionInProgress() = _$_ActionInProgress;
}

abstract class _$DeleteFailureCopyWith<$Res> {
  factory _$DeleteFailureCopyWith(
          _DeleteFailure value, $Res Function(_DeleteFailure) then) =
      __$DeleteFailureCopyWithImpl<$Res>;
  $Res call({TripFailure tripFailure});

  $TripFailureCopyWith<$Res> get tripFailure;
}

class __$DeleteFailureCopyWithImpl<$Res>
    extends _$TripActorStateCopyWithImpl<$Res>
    implements _$DeleteFailureCopyWith<$Res> {
  __$DeleteFailureCopyWithImpl(
      _DeleteFailure _value, $Res Function(_DeleteFailure) _then)
      : super(_value, (v) => _then(v as _DeleteFailure));

  @override
  _DeleteFailure get _value => super._value as _DeleteFailure;

  @override
  $Res call({
    Object tripFailure = freezed,
  }) {
    return _then(_DeleteFailure(
      tripFailure == freezed ? _value.tripFailure : tripFailure as TripFailure,
    ));
  }

  @override
  $TripFailureCopyWith<$Res> get tripFailure {
    if (_value.tripFailure == null) {
      return null;
    }
    return $TripFailureCopyWith<$Res>(_value.tripFailure, (value) {
      return _then(_value.copyWith(tripFailure: value));
    });
  }
}

class _$_DeleteFailure implements _DeleteFailure {
  const _$_DeleteFailure(this.tripFailure) : assert(tripFailure != null);

  @override
  final TripFailure tripFailure;

  @override
  String toString() {
    return 'TripActorState.deleteFailure(tripFailure: $tripFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DeleteFailure &&
            (identical(other.tripFailure, tripFailure) ||
                const DeepCollectionEquality()
                    .equals(other.tripFailure, tripFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(tripFailure);

  @override
  _$DeleteFailureCopyWith<_DeleteFailure> get copyWith =>
      __$DeleteFailureCopyWithImpl<_DeleteFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result actionInProgress(),
    @required Result deleteFailure(TripFailure tripFailure),
    @required Result deleteSuccess(),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deleteFailure != null);
    assert(deleteSuccess != null);
    return deleteFailure(tripFailure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result deleteFailure(TripFailure tripFailure),
    Result deleteSuccess(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleteFailure != null) {
      return deleteFailure(tripFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result actionInProgress(_ActionInProgress value),
    @required Result deleteFailure(_DeleteFailure value),
    @required Result deleteSuccess(_DeleteSuccess value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deleteFailure != null);
    assert(deleteSuccess != null);
    return deleteFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result deleteFailure(_DeleteFailure value),
    Result deleteSuccess(_DeleteSuccess value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleteFailure != null) {
      return deleteFailure(this);
    }
    return orElse();
  }
}

abstract class _DeleteFailure implements TripActorState {
  const factory _DeleteFailure(TripFailure tripFailure) = _$_DeleteFailure;

  TripFailure get tripFailure;
  _$DeleteFailureCopyWith<_DeleteFailure> get copyWith;
}

abstract class _$DeleteSuccessCopyWith<$Res> {
  factory _$DeleteSuccessCopyWith(
          _DeleteSuccess value, $Res Function(_DeleteSuccess) then) =
      __$DeleteSuccessCopyWithImpl<$Res>;
}

class __$DeleteSuccessCopyWithImpl<$Res>
    extends _$TripActorStateCopyWithImpl<$Res>
    implements _$DeleteSuccessCopyWith<$Res> {
  __$DeleteSuccessCopyWithImpl(
      _DeleteSuccess _value, $Res Function(_DeleteSuccess) _then)
      : super(_value, (v) => _then(v as _DeleteSuccess));

  @override
  _DeleteSuccess get _value => super._value as _DeleteSuccess;
}

class _$_DeleteSuccess implements _DeleteSuccess {
  const _$_DeleteSuccess();

  @override
  String toString() {
    return 'TripActorState.deleteSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _DeleteSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result actionInProgress(),
    @required Result deleteFailure(TripFailure tripFailure),
    @required Result deleteSuccess(),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deleteFailure != null);
    assert(deleteSuccess != null);
    return deleteSuccess();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result deleteFailure(TripFailure tripFailure),
    Result deleteSuccess(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleteSuccess != null) {
      return deleteSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result actionInProgress(_ActionInProgress value),
    @required Result deleteFailure(_DeleteFailure value),
    @required Result deleteSuccess(_DeleteSuccess value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deleteFailure != null);
    assert(deleteSuccess != null);
    return deleteSuccess(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result deleteFailure(_DeleteFailure value),
    Result deleteSuccess(_DeleteSuccess value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleteSuccess != null) {
      return deleteSuccess(this);
    }
    return orElse();
  }
}

abstract class _DeleteSuccess implements TripActorState {
  const factory _DeleteSuccess() = _$_DeleteSuccess;
}
