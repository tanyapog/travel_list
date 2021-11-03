// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'trip.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TripTearOff {
  const _$TripTearOff();

  _Trip call(
      {required UniqueId id,
      required TripName name,
      required TripDescription description,
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
const $Trip = _$TripTearOff();

/// @nodoc
mixin _$Trip {
  UniqueId get id => throw _privateConstructorUsedError;
  TripName get name => throw _privateConstructorUsedError;
  TripDescription get description => throw _privateConstructorUsedError;
  bool get complete => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TripCopyWith<Trip> get copyWith => throw _privateConstructorUsedError;
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
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? complete = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as TripName,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as TripDescription,
      complete: complete == freezed
          ? _value.complete
          : complete // ignore: cast_nullable_to_non_nullable
              as bool,
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
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? complete = freezed,
  }) {
    return _then(_Trip(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as TripName,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as TripDescription,
      complete: complete == freezed
          ? _value.complete
          : complete // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Trip extends _Trip {
  const _$_Trip(
      {required this.id,
      required this.name,
      required this.description,
      this.complete = false})
      : super._();

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
        (other.runtimeType == runtimeType &&
            other is _Trip &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.complete, complete) ||
                other.complete == complete));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, description, complete);

  @JsonKey(ignore: true)
  @override
  _$TripCopyWith<_Trip> get copyWith =>
      __$TripCopyWithImpl<_Trip>(this, _$identity);
}

abstract class _Trip extends Trip {
  const factory _Trip(
      {required UniqueId id,
      required TripName name,
      required TripDescription description,
      bool complete}) = _$_Trip;
  const _Trip._() : super._();

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
  _$TripCopyWith<_Trip> get copyWith => throw _privateConstructorUsedError;
}
