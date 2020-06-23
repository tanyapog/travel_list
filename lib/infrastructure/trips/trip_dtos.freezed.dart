// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'trip_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
TripDto _$TripDtoFromJson(Map<String, dynamic> json) {
  return _TripDto.fromJson(json);
}

class _$TripDtoTearOff {
  const _$TripDtoTearOff();

  _TripDto call(
      {@JsonKey(ignore: true) String id,
      @required String name,
      @required String description,
      @required bool complete,
      @required @ServerTimestampConverter() FieldValue serverTimeStamp}) {
    return _TripDto(
      id: id,
      name: name,
      description: description,
      complete: complete,
      serverTimeStamp: serverTimeStamp,
    );
  }
}

// ignore: unused_element
const $TripDto = _$TripDtoTearOff();

mixin _$TripDto {
  @JsonKey(ignore: true)
  String get id;
  String get name;
  String get description;
  bool get complete;
  @ServerTimestampConverter()
  FieldValue get serverTimeStamp;

  Map<String, dynamic> toJson();
  $TripDtoCopyWith<TripDto> get copyWith;
}

abstract class $TripDtoCopyWith<$Res> {
  factory $TripDtoCopyWith(TripDto value, $Res Function(TripDto) then) =
      _$TripDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: true) String id,
      String name,
      String description,
      bool complete,
      @ServerTimestampConverter() FieldValue serverTimeStamp});
}

class _$TripDtoCopyWithImpl<$Res> implements $TripDtoCopyWith<$Res> {
  _$TripDtoCopyWithImpl(this._value, this._then);

  final TripDto _value;
  // ignore: unused_field
  final $Res Function(TripDto) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object description = freezed,
    Object complete = freezed,
    Object serverTimeStamp = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      description:
          description == freezed ? _value.description : description as String,
      complete: complete == freezed ? _value.complete : complete as bool,
      serverTimeStamp: serverTimeStamp == freezed
          ? _value.serverTimeStamp
          : serverTimeStamp as FieldValue,
    ));
  }
}

abstract class _$TripDtoCopyWith<$Res> implements $TripDtoCopyWith<$Res> {
  factory _$TripDtoCopyWith(_TripDto value, $Res Function(_TripDto) then) =
      __$TripDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true) String id,
      String name,
      String description,
      bool complete,
      @ServerTimestampConverter() FieldValue serverTimeStamp});
}

class __$TripDtoCopyWithImpl<$Res> extends _$TripDtoCopyWithImpl<$Res>
    implements _$TripDtoCopyWith<$Res> {
  __$TripDtoCopyWithImpl(_TripDto _value, $Res Function(_TripDto) _then)
      : super(_value, (v) => _then(v as _TripDto));

  @override
  _TripDto get _value => super._value as _TripDto;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object description = freezed,
    Object complete = freezed,
    Object serverTimeStamp = freezed,
  }) {
    return _then(_TripDto(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      description:
          description == freezed ? _value.description : description as String,
      complete: complete == freezed ? _value.complete : complete as bool,
      serverTimeStamp: serverTimeStamp == freezed
          ? _value.serverTimeStamp
          : serverTimeStamp as FieldValue,
    ));
  }
}

@JsonSerializable()
class _$_TripDto extends _TripDto {
  const _$_TripDto(
      {@JsonKey(ignore: true) this.id,
      @required this.name,
      @required this.description,
      @required this.complete,
      @required @ServerTimestampConverter() this.serverTimeStamp})
      : assert(name != null),
        assert(description != null),
        assert(complete != null),
        assert(serverTimeStamp != null),
        super._();

  factory _$_TripDto.fromJson(Map<String, dynamic> json) =>
      _$_$_TripDtoFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String id;
  @override
  final String name;
  @override
  final String description;
  @override
  final bool complete;
  @override
  @ServerTimestampConverter()
  final FieldValue serverTimeStamp;

  @override
  String toString() {
    return 'TripDto(id: $id, name: $name, description: $description, complete: $complete, serverTimeStamp: $serverTimeStamp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TripDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.complete, complete) ||
                const DeepCollectionEquality()
                    .equals(other.complete, complete)) &&
            (identical(other.serverTimeStamp, serverTimeStamp) ||
                const DeepCollectionEquality()
                    .equals(other.serverTimeStamp, serverTimeStamp)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(complete) ^
      const DeepCollectionEquality().hash(serverTimeStamp);

  @override
  _$TripDtoCopyWith<_TripDto> get copyWith =>
      __$TripDtoCopyWithImpl<_TripDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TripDtoToJson(this);
  }
}

abstract class _TripDto extends TripDto {
  const _TripDto._() : super._();
  const factory _TripDto(
          {@JsonKey(ignore: true) String id,
          @required String name,
          @required String description,
          @required bool complete,
          @required @ServerTimestampConverter() FieldValue serverTimeStamp}) =
      _$_TripDto;

  factory _TripDto.fromJson(Map<String, dynamic> json) = _$_TripDto.fromJson;

  @override
  @JsonKey(ignore: true)
  String get id;
  @override
  String get name;
  @override
  String get description;
  @override
  bool get complete;
  @override
  @ServerTimestampConverter()
  FieldValue get serverTimeStamp;
  @override
  _$TripDtoCopyWith<_TripDto> get copyWith;
}
