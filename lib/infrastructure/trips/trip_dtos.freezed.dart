// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trip_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TripDto _$TripDtoFromJson(Map<String, dynamic> json) {
  return _TripDto.fromJson(json);
}

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
      _$TripDtoCopyWithImpl<$Res, TripDto>;
  @useResult
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
class _$TripDtoCopyWithImpl<$Res, $Val extends TripDto>
    implements $TripDtoCopyWith<$Res> {
  _$TripDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
    Object? description = null,
    Object? complete = null,
    Object? dateStart = freezed,
    Object? dateEnd = freezed,
    Object? dateCreated = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      complete: null == complete
          ? _value.complete
          : complete // ignore: cast_nullable_to_non_nullable
              as bool,
      dateStart: freezed == dateStart
          ? _value.dateStart
          : dateStart // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      dateEnd: freezed == dateEnd
          ? _value.dateEnd
          : dateEnd // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      dateCreated: null == dateCreated
          ? _value.dateCreated
          : dateCreated // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TripDtoImplCopyWith<$Res> implements $TripDtoCopyWith<$Res> {
  factory _$$TripDtoImplCopyWith(
          _$TripDtoImpl value, $Res Function(_$TripDtoImpl) then) =
      __$$TripDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
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
class __$$TripDtoImplCopyWithImpl<$Res>
    extends _$TripDtoCopyWithImpl<$Res, _$TripDtoImpl>
    implements _$$TripDtoImplCopyWith<$Res> {
  __$$TripDtoImplCopyWithImpl(
      _$TripDtoImpl _value, $Res Function(_$TripDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
    Object? description = null,
    Object? complete = null,
    Object? dateStart = freezed,
    Object? dateEnd = freezed,
    Object? dateCreated = null,
  }) {
    return _then(_$TripDtoImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      complete: null == complete
          ? _value.complete
          : complete // ignore: cast_nullable_to_non_nullable
              as bool,
      dateStart: freezed == dateStart
          ? _value.dateStart
          : dateStart // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      dateEnd: freezed == dateEnd
          ? _value.dateEnd
          : dateEnd // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      dateCreated: null == dateCreated
          ? _value.dateCreated
          : dateCreated // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TripDtoImpl extends _TripDto {
  const _$TripDtoImpl(
      {@JsonKey(ignore: true) this.id,
      required this.name,
      required this.description,
      required this.complete,
      this.dateStart,
      this.dateEnd,
      required this.dateCreated})
      : super._();

  factory _$TripDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$TripDtoImplFromJson(json);

// I ignore id because of firestore structure. And ignoring field in freezed class should be nullable.
  @override
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
            other is _$TripDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.complete, complete) ||
                other.complete == complete) &&
            (identical(other.dateStart, dateStart) ||
                other.dateStart == dateStart) &&
            (identical(other.dateEnd, dateEnd) || other.dateEnd == dateEnd) &&
            (identical(other.dateCreated, dateCreated) ||
                other.dateCreated == dateCreated));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, description, complete,
      dateStart, dateEnd, dateCreated);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TripDtoImplCopyWith<_$TripDtoImpl> get copyWith =>
      __$$TripDtoImplCopyWithImpl<_$TripDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TripDtoImplToJson(
      this,
    );
  }
}

abstract class _TripDto extends TripDto {
  const factory _TripDto(
      {@JsonKey(ignore: true) final String? id,
      required final String name,
      required final String description,
      required final bool complete,
      final DateTime? dateStart,
      final DateTime? dateEnd,
      required final DateTime dateCreated}) = _$TripDtoImpl;
  const _TripDto._() : super._();

  factory _TripDto.fromJson(Map<String, dynamic> json) = _$TripDtoImpl.fromJson;

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
  _$$TripDtoImplCopyWith<_$TripDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
