// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'trip_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$TripWatcherEventTearOff {
  const _$TripWatcherEventTearOff();

// ignore: unused_element
  _WatchAllStarted watchAllStarted() {
    return const _WatchAllStarted();
  }

// ignore: unused_element
  _WatchUncompletedStarted watchUncompletedStarted() {
    return const _WatchUncompletedStarted();
  }

// ignore: unused_element
  _TripsReceived tripsReceived(Either<TripFailure, List<Trip>> failureOrTrips) {
    return _TripsReceived(
      failureOrTrips,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $TripWatcherEvent = _$TripWatcherEventTearOff();

/// @nodoc
mixin _$TripWatcherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult watchAllStarted(),
    @required TResult watchUncompletedStarted(),
    @required
        TResult tripsReceived(Either<TripFailure, List<Trip>> failureOrTrips),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult watchAllStarted(),
    TResult watchUncompletedStarted(),
    TResult tripsReceived(Either<TripFailure, List<Trip>> failureOrTrips),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult watchAllStarted(_WatchAllStarted value),
    @required TResult watchUncompletedStarted(_WatchUncompletedStarted value),
    @required TResult tripsReceived(_TripsReceived value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult watchAllStarted(_WatchAllStarted value),
    TResult watchUncompletedStarted(_WatchUncompletedStarted value),
    TResult tripsReceived(_TripsReceived value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $TripWatcherEventCopyWith<$Res> {
  factory $TripWatcherEventCopyWith(
          TripWatcherEvent value, $Res Function(TripWatcherEvent) then) =
      _$TripWatcherEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$TripWatcherEventCopyWithImpl<$Res>
    implements $TripWatcherEventCopyWith<$Res> {
  _$TripWatcherEventCopyWithImpl(this._value, this._then);

  final TripWatcherEvent _value;
  // ignore: unused_field
  final $Res Function(TripWatcherEvent) _then;
}

/// @nodoc
abstract class _$WatchAllStartedCopyWith<$Res> {
  factory _$WatchAllStartedCopyWith(
          _WatchAllStarted value, $Res Function(_WatchAllStarted) then) =
      __$WatchAllStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$WatchAllStartedCopyWithImpl<$Res>
    extends _$TripWatcherEventCopyWithImpl<$Res>
    implements _$WatchAllStartedCopyWith<$Res> {
  __$WatchAllStartedCopyWithImpl(
      _WatchAllStarted _value, $Res Function(_WatchAllStarted) _then)
      : super(_value, (v) => _then(v as _WatchAllStarted));

  @override
  _WatchAllStarted get _value => super._value as _WatchAllStarted;
}

/// @nodoc
class _$_WatchAllStarted implements _WatchAllStarted {
  const _$_WatchAllStarted();

  @override
  String toString() {
    return 'TripWatcherEvent.watchAllStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _WatchAllStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult watchAllStarted(),
    @required TResult watchUncompletedStarted(),
    @required
        TResult tripsReceived(Either<TripFailure, List<Trip>> failureOrTrips),
  }) {
    assert(watchAllStarted != null);
    assert(watchUncompletedStarted != null);
    assert(tripsReceived != null);
    return watchAllStarted();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult watchAllStarted(),
    TResult watchUncompletedStarted(),
    TResult tripsReceived(Either<TripFailure, List<Trip>> failureOrTrips),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (watchAllStarted != null) {
      return watchAllStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult watchAllStarted(_WatchAllStarted value),
    @required TResult watchUncompletedStarted(_WatchUncompletedStarted value),
    @required TResult tripsReceived(_TripsReceived value),
  }) {
    assert(watchAllStarted != null);
    assert(watchUncompletedStarted != null);
    assert(tripsReceived != null);
    return watchAllStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult watchAllStarted(_WatchAllStarted value),
    TResult watchUncompletedStarted(_WatchUncompletedStarted value),
    TResult tripsReceived(_TripsReceived value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (watchAllStarted != null) {
      return watchAllStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchAllStarted implements TripWatcherEvent {
  const factory _WatchAllStarted() = _$_WatchAllStarted;
}

/// @nodoc
abstract class _$WatchUncompletedStartedCopyWith<$Res> {
  factory _$WatchUncompletedStartedCopyWith(_WatchUncompletedStarted value,
          $Res Function(_WatchUncompletedStarted) then) =
      __$WatchUncompletedStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$WatchUncompletedStartedCopyWithImpl<$Res>
    extends _$TripWatcherEventCopyWithImpl<$Res>
    implements _$WatchUncompletedStartedCopyWith<$Res> {
  __$WatchUncompletedStartedCopyWithImpl(_WatchUncompletedStarted _value,
      $Res Function(_WatchUncompletedStarted) _then)
      : super(_value, (v) => _then(v as _WatchUncompletedStarted));

  @override
  _WatchUncompletedStarted get _value =>
      super._value as _WatchUncompletedStarted;
}

/// @nodoc
class _$_WatchUncompletedStarted implements _WatchUncompletedStarted {
  const _$_WatchUncompletedStarted();

  @override
  String toString() {
    return 'TripWatcherEvent.watchUncompletedStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _WatchUncompletedStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult watchAllStarted(),
    @required TResult watchUncompletedStarted(),
    @required
        TResult tripsReceived(Either<TripFailure, List<Trip>> failureOrTrips),
  }) {
    assert(watchAllStarted != null);
    assert(watchUncompletedStarted != null);
    assert(tripsReceived != null);
    return watchUncompletedStarted();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult watchAllStarted(),
    TResult watchUncompletedStarted(),
    TResult tripsReceived(Either<TripFailure, List<Trip>> failureOrTrips),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (watchUncompletedStarted != null) {
      return watchUncompletedStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult watchAllStarted(_WatchAllStarted value),
    @required TResult watchUncompletedStarted(_WatchUncompletedStarted value),
    @required TResult tripsReceived(_TripsReceived value),
  }) {
    assert(watchAllStarted != null);
    assert(watchUncompletedStarted != null);
    assert(tripsReceived != null);
    return watchUncompletedStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult watchAllStarted(_WatchAllStarted value),
    TResult watchUncompletedStarted(_WatchUncompletedStarted value),
    TResult tripsReceived(_TripsReceived value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (watchUncompletedStarted != null) {
      return watchUncompletedStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchUncompletedStarted implements TripWatcherEvent {
  const factory _WatchUncompletedStarted() = _$_WatchUncompletedStarted;
}

/// @nodoc
abstract class _$TripsReceivedCopyWith<$Res> {
  factory _$TripsReceivedCopyWith(
          _TripsReceived value, $Res Function(_TripsReceived) then) =
      __$TripsReceivedCopyWithImpl<$Res>;
  $Res call({Either<TripFailure, List<Trip>> failureOrTrips});
}

/// @nodoc
class __$TripsReceivedCopyWithImpl<$Res>
    extends _$TripWatcherEventCopyWithImpl<$Res>
    implements _$TripsReceivedCopyWith<$Res> {
  __$TripsReceivedCopyWithImpl(
      _TripsReceived _value, $Res Function(_TripsReceived) _then)
      : super(_value, (v) => _then(v as _TripsReceived));

  @override
  _TripsReceived get _value => super._value as _TripsReceived;

  @override
  $Res call({
    Object failureOrTrips = freezed,
  }) {
    return _then(_TripsReceived(
      failureOrTrips == freezed
          ? _value.failureOrTrips
          : failureOrTrips as Either<TripFailure, List<Trip>>,
    ));
  }
}

/// @nodoc
class _$_TripsReceived implements _TripsReceived {
  const _$_TripsReceived(this.failureOrTrips) : assert(failureOrTrips != null);

  @override
  final Either<TripFailure, List<Trip>> failureOrTrips;

  @override
  String toString() {
    return 'TripWatcherEvent.tripsReceived(failureOrTrips: $failureOrTrips)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TripsReceived &&
            (identical(other.failureOrTrips, failureOrTrips) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrTrips, failureOrTrips)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failureOrTrips);

  @JsonKey(ignore: true)
  @override
  _$TripsReceivedCopyWith<_TripsReceived> get copyWith =>
      __$TripsReceivedCopyWithImpl<_TripsReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult watchAllStarted(),
    @required TResult watchUncompletedStarted(),
    @required
        TResult tripsReceived(Either<TripFailure, List<Trip>> failureOrTrips),
  }) {
    assert(watchAllStarted != null);
    assert(watchUncompletedStarted != null);
    assert(tripsReceived != null);
    return tripsReceived(failureOrTrips);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult watchAllStarted(),
    TResult watchUncompletedStarted(),
    TResult tripsReceived(Either<TripFailure, List<Trip>> failureOrTrips),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (tripsReceived != null) {
      return tripsReceived(failureOrTrips);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult watchAllStarted(_WatchAllStarted value),
    @required TResult watchUncompletedStarted(_WatchUncompletedStarted value),
    @required TResult tripsReceived(_TripsReceived value),
  }) {
    assert(watchAllStarted != null);
    assert(watchUncompletedStarted != null);
    assert(tripsReceived != null);
    return tripsReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult watchAllStarted(_WatchAllStarted value),
    TResult watchUncompletedStarted(_WatchUncompletedStarted value),
    TResult tripsReceived(_TripsReceived value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (tripsReceived != null) {
      return tripsReceived(this);
    }
    return orElse();
  }
}

abstract class _TripsReceived implements TripWatcherEvent {
  const factory _TripsReceived(Either<TripFailure, List<Trip>> failureOrTrips) =
      _$_TripsReceived;

  Either<TripFailure, List<Trip>> get failureOrTrips;
  @JsonKey(ignore: true)
  _$TripsReceivedCopyWith<_TripsReceived> get copyWith;
}

/// @nodoc
class _$TripWatcherStateTearOff {
  const _$TripWatcherStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _LoadInProgress loadInProgress() {
    return const _LoadInProgress();
  }

// ignore: unused_element
  _LoadSuccess loadSuccess(List<Trip> trips) {
    return _LoadSuccess(
      trips,
    );
  }

// ignore: unused_element
  _LoadFailure loadFailure(TripFailure tripFailure) {
    return _LoadFailure(
      tripFailure,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $TripWatcherState = _$TripWatcherStateTearOff();

/// @nodoc
mixin _$TripWatcherState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadInProgress(),
    @required TResult loadSuccess(List<Trip> trips),
    @required TResult loadFailure(TripFailure tripFailure),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(),
    TResult loadSuccess(List<Trip> trips),
    TResult loadFailure(TripFailure tripFailure),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loadInProgress(_LoadInProgress value),
    @required TResult loadSuccess(_LoadSuccess value),
    @required TResult loadFailure(_LoadFailure value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loadInProgress(_LoadInProgress value),
    TResult loadSuccess(_LoadSuccess value),
    TResult loadFailure(_LoadFailure value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $TripWatcherStateCopyWith<$Res> {
  factory $TripWatcherStateCopyWith(
          TripWatcherState value, $Res Function(TripWatcherState) then) =
      _$TripWatcherStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$TripWatcherStateCopyWithImpl<$Res>
    implements $TripWatcherStateCopyWith<$Res> {
  _$TripWatcherStateCopyWithImpl(this._value, this._then);

  final TripWatcherState _value;
  // ignore: unused_field
  final $Res Function(TripWatcherState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$TripWatcherStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc
class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'TripWatcherState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadInProgress(),
    @required TResult loadSuccess(List<Trip> trips),
    @required TResult loadFailure(TripFailure tripFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(),
    TResult loadSuccess(List<Trip> trips),
    TResult loadFailure(TripFailure tripFailure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loadInProgress(_LoadInProgress value),
    @required TResult loadSuccess(_LoadSuccess value),
    @required TResult loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loadInProgress(_LoadInProgress value),
    TResult loadSuccess(_LoadSuccess value),
    TResult loadFailure(_LoadFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements TripWatcherState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadInProgressCopyWith<$Res> {
  factory _$LoadInProgressCopyWith(
          _LoadInProgress value, $Res Function(_LoadInProgress) then) =
      __$LoadInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadInProgressCopyWithImpl<$Res>
    extends _$TripWatcherStateCopyWithImpl<$Res>
    implements _$LoadInProgressCopyWith<$Res> {
  __$LoadInProgressCopyWithImpl(
      _LoadInProgress _value, $Res Function(_LoadInProgress) _then)
      : super(_value, (v) => _then(v as _LoadInProgress));

  @override
  _LoadInProgress get _value => super._value as _LoadInProgress;
}

/// @nodoc
class _$_LoadInProgress implements _LoadInProgress {
  const _$_LoadInProgress();

  @override
  String toString() {
    return 'TripWatcherState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadInProgress(),
    @required TResult loadSuccess(List<Trip> trips),
    @required TResult loadFailure(TripFailure tripFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(),
    TResult loadSuccess(List<Trip> trips),
    TResult loadFailure(TripFailure tripFailure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadInProgress != null) {
      return loadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loadInProgress(_LoadInProgress value),
    @required TResult loadSuccess(_LoadSuccess value),
    @required TResult loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loadInProgress(_LoadInProgress value),
    TResult loadSuccess(_LoadSuccess value),
    TResult loadFailure(_LoadFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress implements TripWatcherState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$LoadSuccessCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(
          _LoadSuccess value, $Res Function(_LoadSuccess) then) =
      __$LoadSuccessCopyWithImpl<$Res>;
  $Res call({List<Trip> trips});
}

/// @nodoc
class __$LoadSuccessCopyWithImpl<$Res>
    extends _$TripWatcherStateCopyWithImpl<$Res>
    implements _$LoadSuccessCopyWith<$Res> {
  __$LoadSuccessCopyWithImpl(
      _LoadSuccess _value, $Res Function(_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _LoadSuccess));

  @override
  _LoadSuccess get _value => super._value as _LoadSuccess;

  @override
  $Res call({
    Object trips = freezed,
  }) {
    return _then(_LoadSuccess(
      trips == freezed ? _value.trips : trips as List<Trip>,
    ));
  }
}

/// @nodoc
class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.trips) : assert(trips != null);

  @override
  final List<Trip> trips;

  @override
  String toString() {
    return 'TripWatcherState.loadSuccess(trips: $trips)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadSuccess &&
            (identical(other.trips, trips) ||
                const DeepCollectionEquality().equals(other.trips, trips)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(trips);

  @JsonKey(ignore: true)
  @override
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      __$LoadSuccessCopyWithImpl<_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadInProgress(),
    @required TResult loadSuccess(List<Trip> trips),
    @required TResult loadFailure(TripFailure tripFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(trips);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(),
    TResult loadSuccess(List<Trip> trips),
    TResult loadFailure(TripFailure tripFailure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(trips);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loadInProgress(_LoadInProgress value),
    @required TResult loadSuccess(_LoadSuccess value),
    @required TResult loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loadInProgress(_LoadInProgress value),
    TResult loadSuccess(_LoadSuccess value),
    TResult loadFailure(_LoadFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccess implements TripWatcherState {
  const factory _LoadSuccess(List<Trip> trips) = _$_LoadSuccess;

  List<Trip> get trips;
  @JsonKey(ignore: true)
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith;
}

/// @nodoc
abstract class _$LoadFailureCopyWith<$Res> {
  factory _$LoadFailureCopyWith(
          _LoadFailure value, $Res Function(_LoadFailure) then) =
      __$LoadFailureCopyWithImpl<$Res>;
  $Res call({TripFailure tripFailure});

  $TripFailureCopyWith<$Res> get tripFailure;
}

/// @nodoc
class __$LoadFailureCopyWithImpl<$Res>
    extends _$TripWatcherStateCopyWithImpl<$Res>
    implements _$LoadFailureCopyWith<$Res> {
  __$LoadFailureCopyWithImpl(
      _LoadFailure _value, $Res Function(_LoadFailure) _then)
      : super(_value, (v) => _then(v as _LoadFailure));

  @override
  _LoadFailure get _value => super._value as _LoadFailure;

  @override
  $Res call({
    Object tripFailure = freezed,
  }) {
    return _then(_LoadFailure(
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

/// @nodoc
class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure(this.tripFailure) : assert(tripFailure != null);

  @override
  final TripFailure tripFailure;

  @override
  String toString() {
    return 'TripWatcherState.loadFailure(tripFailure: $tripFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadFailure &&
            (identical(other.tripFailure, tripFailure) ||
                const DeepCollectionEquality()
                    .equals(other.tripFailure, tripFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(tripFailure);

  @JsonKey(ignore: true)
  @override
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      __$LoadFailureCopyWithImpl<_LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadInProgress(),
    @required TResult loadSuccess(List<Trip> trips),
    @required TResult loadFailure(TripFailure tripFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadFailure(tripFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(),
    TResult loadSuccess(List<Trip> trips),
    TResult loadFailure(TripFailure tripFailure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(tripFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loadInProgress(_LoadInProgress value),
    @required TResult loadSuccess(_LoadSuccess value),
    @required TResult loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loadInProgress(_LoadInProgress value),
    TResult loadSuccess(_LoadSuccess value),
    TResult loadFailure(_LoadFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadFailure implements TripWatcherState {
  const factory _LoadFailure(TripFailure tripFailure) = _$_LoadFailure;

  TripFailure get tripFailure;
  @JsonKey(ignore: true)
  _$LoadFailureCopyWith<_LoadFailure> get copyWith;
}
