// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'trip.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$TripTearOff {
  const _$TripTearOff();

// ignore: unused_element
  _Trip call(
      {@required UniqueId id,
      @required TripName name,
      @required TripDescription description,
      bool complete = false}) {
    return _Trip(
      id: id,
      name: name,
      description: description,
      complete: complete,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Trip = _$TripTearOff();

/// @nodoc
mixin _$Trip {
  UniqueId get id;
  TripName get name;
  TripDescription get description;
  bool get complete;

  @JsonKey(ignore: true)
  $TripCopyWith<Trip> get copyWith;
}

/// @nodoc
abstract class $TripCopyWith<$Res> {
  factory $TripCopyWith(Trip value, $Res Function(Trip) then) =
      _$TripCopyWithImpl<$Res>;
  $Res call(
      {UniqueId id, TripName name, TripDescription description, bool complete});
}

/// @nodoc
class _$TripCopyWithImpl<$Res> implements $TripCopyWith<$Res> {
  _$TripCopyWithImpl(this._value, this._then);

  final Trip _value;
  // ignore: unused_field
  final $Res Function(Trip) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object description = freezed,
    Object complete = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as UniqueId,
      name: name == freezed ? _value.name : name as TripName,
      description: description == freezed
          ? _value.description
          : description as TripDescription,
      complete: complete == freezed ? _value.complete : complete as bool,
    ));
  }
}

/// @nodoc
abstract class _$TripCopyWith<$Res> implements $TripCopyWith<$Res> {
  factory _$TripCopyWith(_Trip value, $Res Function(_Trip) then) =
      __$TripCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId id, TripName name, TripDescription description, bool complete});
}

/// @nodoc
class __$TripCopyWithImpl<$Res> extends _$TripCopyWithImpl<$Res>
    implements _$TripCopyWith<$Res> {
  __$TripCopyWithImpl(_Trip _value, $Res Function(_Trip) _then)
      : super(_value, (v) => _then(v as _Trip));

  @override
  _Trip get _value => super._value as _Trip;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object description = freezed,
    Object complete = freezed,
  }) {
    return _then(_Trip(
      id: id == freezed ? _value.id : id as UniqueId,
      name: name == freezed ? _value.name : name as TripName,
      description: description == freezed
          ? _value.description
          : description as TripDescription,
      complete: complete == freezed ? _value.complete : complete as bool,
    ));
  }
}

/// @nodoc
class _$_Trip extends _Trip {
  const _$_Trip(
      {@required this.id,
      @required this.name,
      @required this.description,
      this.complete = false})
      : assert(id != null),
        assert(name != null),
        assert(description != null),
        assert(complete != null),
        super._();

  @override
  final UniqueId id;
  @override
  final TripName name;
  @override
  final TripDescription description;
  @JsonKey(defaultValue: false)
  @override
  final bool complete;

  @override
  String toString() {
    return 'Trip(id: $id, name: $name, description: $description, complete: $complete)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Trip &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.complete, complete) ||
                const DeepCollectionEquality()
                    .equals(other.complete, complete)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(complete);

  @JsonKey(ignore: true)
  @override
  _$TripCopyWith<_Trip> get copyWith =>
      __$TripCopyWithImpl<_Trip>(this, _$identity);
}

abstract class _Trip extends Trip {
  const _Trip._() : super._();
  const factory _Trip(
      {@required UniqueId id,
      @required TripName name,
      @required TripDescription description,
      bool complete}) = _$_Trip;

  @override
  UniqueId get id;
  @override
  TripName get name;
  @override
  TripDescription get description;
  @override
  bool get complete;
  @override
  @JsonKey(ignore: true)
  _$TripCopyWith<_Trip> get copyWith;
}
