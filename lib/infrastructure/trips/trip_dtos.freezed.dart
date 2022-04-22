// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'trip_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TripDto _$TripDtoFromJson(Map<String, dynamic> json) {
  return _TripDto.fromJson(json);
}

/// @nodoc
class _$TripDtoTearOff {
  const _$TripDtoTearOff();

  _TripDto call(
      {@JsonKey(ignore: true) String? id,
      required String name,
      required String description,
      required bool complete,
      DateTime? dateStart,
      DateTime? dateEnd,
      required DateTime dateCreated}) {
    return _TripDto(
      id: id,
      name: name,
      description: description,
      complete: complete,
      dateStart: dateStart,
      dateEnd: dateEnd,
      dateCreated: dateCreated,
    );
  }

  TripDto fromJson(Map<String, Object?> json) {
    return TripDto.fromJson(json);
  }
}

/// @nodoc
const $TripDto = _$TripDtoTearOff();

/// @nodoc
mixin _$TripDto {
// I ignore id because of firestore structure. And ignoring field in freezed class should be nullable.
  @JsonKey(ignore: true)
  String? get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  bool get complete => throw _privateConstructorUsedError;
  DateTime? get dateStart => throw _privateConstructorUsedError;
  DateTime? get dateEnd => throw _privateConstructorUsedError;
  DateTime get dateCreated => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TripDtoCopyWith<TripDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TripDtoCopyWith<$Res> {
  factory $TripDtoCopyWith(TripDto value, $Res Function(TripDto) then) =
      _$TripDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: true) String? id,
      String name,
      String description,
      bool complete,
      DateTime? dateStart,
      DateTime? dateEnd,
      DateTime dateCreated});
}

/// @nodoc
class _$TripDtoCopyWithImpl<$Res> implements $TripDtoCopyWith<$Res> {
  _$TripDtoCopyWithImpl(this._value, this._then);

  final TripDto _value;
  // ignore: unused_field
  final $Res Function(TripDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? complete = freezed,
    Object? dateStart = freezed,
    Object? dateEnd = freezed,
    Object? dateCreated = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      complete: complete == freezed
          ? _value.complete
          : complete // ignore: cast_nullable_to_non_nullable
              as bool,
      dateStart: dateStart == freezed
          ? _value.dateStart
          : dateStart // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      dateEnd: dateEnd == freezed
          ? _value.dateEnd
          : dateEnd // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      dateCreated: dateCreated == freezed
          ? _value.dateCreated
          : dateCreated // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$TripDtoCopyWith<$Res> implements $TripDtoCopyWith<$Res> {
  factory _$TripDtoCopyWith(_TripDto value, $Res Function(_TripDto) then) =
      __$TripDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true) String? id,
      String name,
      String description,
      bool complete,
      DateTime? dateStart,
      DateTime? dateEnd,
      DateTime dateCreated});
}

/// @nodoc
class __$TripDtoCopyWithImpl<$Res> extends _$TripDtoCopyWithImpl<$Res>
    implements _$TripDtoCopyWith<$Res> {
  __$TripDtoCopyWithImpl(_TripDto _value, $Res Function(_TripDto) _then)
      : super(_value, (v) => _then(v as _TripDto));

  @override
  _TripDto get _value => super._value as _TripDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? complete = freezed,
    Object? dateStart = freezed,
    Object? dateEnd = freezed,
    Object? dateCreated = freezed,
  }) {
    return _then(_TripDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      complete: complete == freezed
          ? _value.complete
          : complete // ignore: cast_nullable_to_non_nullable
              as bool,
      dateStart: dateStart == freezed
          ? _value.dateStart
          : dateStart // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      dateEnd: dateEnd == freezed
          ? _value.dateEnd
          : dateEnd // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      dateCreated: dateCreated == freezed
          ? _value.dateCreated
          : dateCreated // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TripDto extends _TripDto {
  const _$_TripDto(
      {@JsonKey(ignore: true) this.id,
      required this.name,
      required this.description,
      required this.complete,
      this.dateStart,
      this.dateEnd,
      required this.dateCreated})
      : super._();

  factory _$_TripDto.fromJson(Map<String, dynamic> json) =>
      _$$_TripDtoFromJson(json);

  @override // I ignore id because of firestore structure. And ignoring field in freezed class should be nullable.
  @JsonKey(ignore: true)
  final String? id;
  @override
  final String name;
  @override
  final String description;
  @override
  final bool complete;
  @override
  final DateTime? dateStart;
  @override
  final DateTime? dateEnd;
  @override
  final DateTime dateCreated;

  @override
  String toString() {
    return 'TripDto(id: $id, name: $name, description: $description, complete: $complete, dateStart: $dateStart, dateEnd: $dateEnd, dateCreated: $dateCreated)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TripDto &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.complete, complete) &&
            const DeepCollectionEquality().equals(other.dateStart, dateStart) &&
            const DeepCollectionEquality().equals(other.dateEnd, dateEnd) &&
            const DeepCollectionEquality()
                .equals(other.dateCreated, dateCreated));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(complete),
      const DeepCollectionEquality().hash(dateStart),
      const DeepCollectionEquality().hash(dateEnd),
      const DeepCollectionEquality().hash(dateCreated));

  @JsonKey(ignore: true)
  @override
  _$TripDtoCopyWith<_TripDto> get copyWith =>
      __$TripDtoCopyWithImpl<_TripDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TripDtoToJson(this);
  }
}

abstract class _TripDto extends TripDto {
  const factory _TripDto(
      {@JsonKey(ignore: true) String? id,
      required String name,
      required String description,
      required bool complete,
      DateTime? dateStart,
      DateTime? dateEnd,
      required DateTime dateCreated}) = _$_TripDto;
  const _TripDto._() : super._();

  factory _TripDto.fromJson(Map<String, dynamic> json) = _$_TripDto.fromJson;

  @override // I ignore id because of firestore structure. And ignoring field in freezed class should be nullable.
  @JsonKey(ignore: true)
  String? get id;
  @override
  String get name;
  @override
  String get description;
  @override
  bool get complete;
  @override
  DateTime? get dateStart;
  @override
  DateTime? get dateEnd;
  @override
  DateTime get dateCreated;
  @override
  @JsonKey(ignore: true)
  _$TripDtoCopyWith<_TripDto> get copyWith =>
      throw _privateConstructorUsedError;
}
