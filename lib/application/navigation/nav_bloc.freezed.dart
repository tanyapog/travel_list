// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'nav_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$NavEventTearOff {
  const _$NavEventTearOff();

  NavigateTo navigateTo(NavItem destination) {
    return NavigateTo(
      destination,
    );
  }
}

/// @nodoc
const $NavEvent = _$NavEventTearOff();

/// @nodoc
mixin _$NavEvent {
  NavItem get destination => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NavItem destination) navigateTo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(NavItem destination)? navigateTo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NavItem destination)? navigateTo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NavigateTo value) navigateTo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NavigateTo value)? navigateTo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NavigateTo value)? navigateTo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NavEventCopyWith<NavEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NavEventCopyWith<$Res> {
  factory $NavEventCopyWith(NavEvent value, $Res Function(NavEvent) then) =
      _$NavEventCopyWithImpl<$Res>;
  $Res call({NavItem destination});
}

/// @nodoc
class _$NavEventCopyWithImpl<$Res> implements $NavEventCopyWith<$Res> {
  _$NavEventCopyWithImpl(this._value, this._then);

  final NavEvent _value;
  // ignore: unused_field
  final $Res Function(NavEvent) _then;

  @override
  $Res call({
    Object? destination = freezed,
  }) {
    return _then(_value.copyWith(
      destination: destination == freezed
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as NavItem,
    ));
  }
}

/// @nodoc
abstract class $NavigateToCopyWith<$Res> implements $NavEventCopyWith<$Res> {
  factory $NavigateToCopyWith(
          NavigateTo value, $Res Function(NavigateTo) then) =
      _$NavigateToCopyWithImpl<$Res>;
  @override
  $Res call({NavItem destination});
}

/// @nodoc
class _$NavigateToCopyWithImpl<$Res> extends _$NavEventCopyWithImpl<$Res>
    implements $NavigateToCopyWith<$Res> {
  _$NavigateToCopyWithImpl(NavigateTo _value, $Res Function(NavigateTo) _then)
      : super(_value, (v) => _then(v as NavigateTo));

  @override
  NavigateTo get _value => super._value as NavigateTo;

  @override
  $Res call({
    Object? destination = freezed,
  }) {
    return _then(NavigateTo(
      destination == freezed
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as NavItem,
    ));
  }
}

/// @nodoc

class _$NavigateTo implements NavigateTo {
  const _$NavigateTo(this.destination);

  @override
  final NavItem destination;

  @override
  String toString() {
    return 'NavEvent.navigateTo(destination: $destination)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NavigateTo &&
            const DeepCollectionEquality()
                .equals(other.destination, destination));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(destination));

  @JsonKey(ignore: true)
  @override
  $NavigateToCopyWith<NavigateTo> get copyWith =>
      _$NavigateToCopyWithImpl<NavigateTo>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NavItem destination) navigateTo,
  }) {
    return navigateTo(destination);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(NavItem destination)? navigateTo,
  }) {
    return navigateTo?.call(destination);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NavItem destination)? navigateTo,
    required TResult orElse(),
  }) {
    if (navigateTo != null) {
      return navigateTo(destination);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NavigateTo value) navigateTo,
  }) {
    return navigateTo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NavigateTo value)? navigateTo,
  }) {
    return navigateTo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NavigateTo value)? navigateTo,
    required TResult orElse(),
  }) {
    if (navigateTo != null) {
      return navigateTo(this);
    }
    return orElse();
  }
}

abstract class NavigateTo implements NavEvent {
  const factory NavigateTo(NavItem destination) = _$NavigateTo;

  @override
  NavItem get destination;
  @override
  @JsonKey(ignore: true)
  $NavigateToCopyWith<NavigateTo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$NavStateTearOff {
  const _$NavStateTearOff();

  _NavState call({required NavItem selectedItem}) {
    return _NavState(
      selectedItem: selectedItem,
    );
  }

  SelectItem selectItem({required NavItem selectedItem}) {
    return SelectItem(
      selectedItem: selectedItem,
    );
  }
}

/// @nodoc
const $NavState = _$NavStateTearOff();

/// @nodoc
mixin _$NavState {
  NavItem get selectedItem => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(NavItem selectedItem) $default, {
    required TResult Function(NavItem selectedItem) selectItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(NavItem selectedItem)? $default, {
    TResult Function(NavItem selectedItem)? selectItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(NavItem selectedItem)? $default, {
    TResult Function(NavItem selectedItem)? selectItem,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_NavState value) $default, {
    required TResult Function(SelectItem value) selectItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_NavState value)? $default, {
    TResult Function(SelectItem value)? selectItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_NavState value)? $default, {
    TResult Function(SelectItem value)? selectItem,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NavStateCopyWith<NavState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NavStateCopyWith<$Res> {
  factory $NavStateCopyWith(NavState value, $Res Function(NavState) then) =
      _$NavStateCopyWithImpl<$Res>;
  $Res call({NavItem selectedItem});
}

/// @nodoc
class _$NavStateCopyWithImpl<$Res> implements $NavStateCopyWith<$Res> {
  _$NavStateCopyWithImpl(this._value, this._then);

  final NavState _value;
  // ignore: unused_field
  final $Res Function(NavState) _then;

  @override
  $Res call({
    Object? selectedItem = freezed,
  }) {
    return _then(_value.copyWith(
      selectedItem: selectedItem == freezed
          ? _value.selectedItem
          : selectedItem // ignore: cast_nullable_to_non_nullable
              as NavItem,
    ));
  }
}

/// @nodoc
abstract class _$NavStateCopyWith<$Res> implements $NavStateCopyWith<$Res> {
  factory _$NavStateCopyWith(_NavState value, $Res Function(_NavState) then) =
      __$NavStateCopyWithImpl<$Res>;
  @override
  $Res call({NavItem selectedItem});
}

/// @nodoc
class __$NavStateCopyWithImpl<$Res> extends _$NavStateCopyWithImpl<$Res>
    implements _$NavStateCopyWith<$Res> {
  __$NavStateCopyWithImpl(_NavState _value, $Res Function(_NavState) _then)
      : super(_value, (v) => _then(v as _NavState));

  @override
  _NavState get _value => super._value as _NavState;

  @override
  $Res call({
    Object? selectedItem = freezed,
  }) {
    return _then(_NavState(
      selectedItem: selectedItem == freezed
          ? _value.selectedItem
          : selectedItem // ignore: cast_nullable_to_non_nullable
              as NavItem,
    ));
  }
}

/// @nodoc

class _$_NavState implements _NavState {
  const _$_NavState({required this.selectedItem});

  @override
  final NavItem selectedItem;

  @override
  String toString() {
    return 'NavState(selectedItem: $selectedItem)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NavState &&
            const DeepCollectionEquality()
                .equals(other.selectedItem, selectedItem));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(selectedItem));

  @JsonKey(ignore: true)
  @override
  _$NavStateCopyWith<_NavState> get copyWith =>
      __$NavStateCopyWithImpl<_NavState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(NavItem selectedItem) $default, {
    required TResult Function(NavItem selectedItem) selectItem,
  }) {
    return $default(selectedItem);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(NavItem selectedItem)? $default, {
    TResult Function(NavItem selectedItem)? selectItem,
  }) {
    return $default?.call(selectedItem);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(NavItem selectedItem)? $default, {
    TResult Function(NavItem selectedItem)? selectItem,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(selectedItem);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_NavState value) $default, {
    required TResult Function(SelectItem value) selectItem,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_NavState value)? $default, {
    TResult Function(SelectItem value)? selectItem,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_NavState value)? $default, {
    TResult Function(SelectItem value)? selectItem,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _NavState implements NavState {
  const factory _NavState({required NavItem selectedItem}) = _$_NavState;

  @override
  NavItem get selectedItem;
  @override
  @JsonKey(ignore: true)
  _$NavStateCopyWith<_NavState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelectItemCopyWith<$Res> implements $NavStateCopyWith<$Res> {
  factory $SelectItemCopyWith(
          SelectItem value, $Res Function(SelectItem) then) =
      _$SelectItemCopyWithImpl<$Res>;
  @override
  $Res call({NavItem selectedItem});
}

/// @nodoc
class _$SelectItemCopyWithImpl<$Res> extends _$NavStateCopyWithImpl<$Res>
    implements $SelectItemCopyWith<$Res> {
  _$SelectItemCopyWithImpl(SelectItem _value, $Res Function(SelectItem) _then)
      : super(_value, (v) => _then(v as SelectItem));

  @override
  SelectItem get _value => super._value as SelectItem;

  @override
  $Res call({
    Object? selectedItem = freezed,
  }) {
    return _then(SelectItem(
      selectedItem: selectedItem == freezed
          ? _value.selectedItem
          : selectedItem // ignore: cast_nullable_to_non_nullable
              as NavItem,
    ));
  }
}

/// @nodoc

class _$SelectItem implements SelectItem {
  const _$SelectItem({required this.selectedItem});

  @override
  final NavItem selectedItem;

  @override
  String toString() {
    return 'NavState.selectItem(selectedItem: $selectedItem)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SelectItem &&
            const DeepCollectionEquality()
                .equals(other.selectedItem, selectedItem));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(selectedItem));

  @JsonKey(ignore: true)
  @override
  $SelectItemCopyWith<SelectItem> get copyWith =>
      _$SelectItemCopyWithImpl<SelectItem>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(NavItem selectedItem) $default, {
    required TResult Function(NavItem selectedItem) selectItem,
  }) {
    return selectItem(selectedItem);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(NavItem selectedItem)? $default, {
    TResult Function(NavItem selectedItem)? selectItem,
  }) {
    return selectItem?.call(selectedItem);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(NavItem selectedItem)? $default, {
    TResult Function(NavItem selectedItem)? selectItem,
    required TResult orElse(),
  }) {
    if (selectItem != null) {
      return selectItem(selectedItem);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_NavState value) $default, {
    required TResult Function(SelectItem value) selectItem,
  }) {
    return selectItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_NavState value)? $default, {
    TResult Function(SelectItem value)? selectItem,
  }) {
    return selectItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_NavState value)? $default, {
    TResult Function(SelectItem value)? selectItem,
    required TResult orElse(),
  }) {
    if (selectItem != null) {
      return selectItem(this);
    }
    return orElse();
  }
}

abstract class SelectItem implements NavState {
  const factory SelectItem({required NavItem selectedItem}) = _$SelectItem;

  @override
  NavItem get selectedItem;
  @override
  @JsonKey(ignore: true)
  $SelectItemCopyWith<SelectItem> get copyWith =>
      throw _privateConstructorUsedError;
}
