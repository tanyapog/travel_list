// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'nav_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
    TResult? Function(NavItem destination)? navigateTo,
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
    TResult? Function(NavigateTo value)? navigateTo,
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
      _$NavEventCopyWithImpl<$Res, NavEvent>;
  @useResult
  $Res call({NavItem destination});
}

/// @nodoc
class _$NavEventCopyWithImpl<$Res, $Val extends NavEvent>
    implements $NavEventCopyWith<$Res> {
  _$NavEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? destination = null,
  }) {
    return _then(_value.copyWith(
      destination: null == destination
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as NavItem,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NavigateToImplCopyWith<$Res>
    implements $NavEventCopyWith<$Res> {
  factory _$$NavigateToImplCopyWith(
          _$NavigateToImpl value, $Res Function(_$NavigateToImpl) then) =
      __$$NavigateToImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({NavItem destination});
}

/// @nodoc
class __$$NavigateToImplCopyWithImpl<$Res>
    extends _$NavEventCopyWithImpl<$Res, _$NavigateToImpl>
    implements _$$NavigateToImplCopyWith<$Res> {
  __$$NavigateToImplCopyWithImpl(
      _$NavigateToImpl _value, $Res Function(_$NavigateToImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? destination = null,
  }) {
    return _then(_$NavigateToImpl(
      null == destination
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as NavItem,
    ));
  }
}

/// @nodoc

class _$NavigateToImpl implements NavigateTo {
  const _$NavigateToImpl(this.destination);

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
            other is _$NavigateToImpl &&
            (identical(other.destination, destination) ||
                other.destination == destination));
  }

  @override
  int get hashCode => Object.hash(runtimeType, destination);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NavigateToImplCopyWith<_$NavigateToImpl> get copyWith =>
      __$$NavigateToImplCopyWithImpl<_$NavigateToImpl>(this, _$identity);

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
    TResult? Function(NavItem destination)? navigateTo,
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
    TResult? Function(NavigateTo value)? navigateTo,
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
  const factory NavigateTo(final NavItem destination) = _$NavigateToImpl;

  @override
  NavItem get destination;
  @override
  @JsonKey(ignore: true)
  _$$NavigateToImplCopyWith<_$NavigateToImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

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
    TResult? Function(NavItem selectedItem)? $default, {
    TResult? Function(NavItem selectedItem)? selectItem,
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
    TResult? Function(_NavState value)? $default, {
    TResult? Function(SelectItem value)? selectItem,
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
      _$NavStateCopyWithImpl<$Res, NavState>;
  @useResult
  $Res call({NavItem selectedItem});
}

/// @nodoc
class _$NavStateCopyWithImpl<$Res, $Val extends NavState>
    implements $NavStateCopyWith<$Res> {
  _$NavStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedItem = null,
  }) {
    return _then(_value.copyWith(
      selectedItem: null == selectedItem
          ? _value.selectedItem
          : selectedItem // ignore: cast_nullable_to_non_nullable
              as NavItem,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NavStateImplCopyWith<$Res>
    implements $NavStateCopyWith<$Res> {
  factory _$$NavStateImplCopyWith(
          _$NavStateImpl value, $Res Function(_$NavStateImpl) then) =
      __$$NavStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({NavItem selectedItem});
}

/// @nodoc
class __$$NavStateImplCopyWithImpl<$Res>
    extends _$NavStateCopyWithImpl<$Res, _$NavStateImpl>
    implements _$$NavStateImplCopyWith<$Res> {
  __$$NavStateImplCopyWithImpl(
      _$NavStateImpl _value, $Res Function(_$NavStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedItem = null,
  }) {
    return _then(_$NavStateImpl(
      selectedItem: null == selectedItem
          ? _value.selectedItem
          : selectedItem // ignore: cast_nullable_to_non_nullable
              as NavItem,
    ));
  }
}

/// @nodoc

class _$NavStateImpl implements _NavState {
  const _$NavStateImpl({required this.selectedItem});

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
            other is _$NavStateImpl &&
            (identical(other.selectedItem, selectedItem) ||
                other.selectedItem == selectedItem));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedItem);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NavStateImplCopyWith<_$NavStateImpl> get copyWith =>
      __$$NavStateImplCopyWithImpl<_$NavStateImpl>(this, _$identity);

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
    TResult? Function(NavItem selectedItem)? $default, {
    TResult? Function(NavItem selectedItem)? selectItem,
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
    TResult? Function(_NavState value)? $default, {
    TResult? Function(SelectItem value)? selectItem,
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
  const factory _NavState({required final NavItem selectedItem}) =
      _$NavStateImpl;

  @override
  NavItem get selectedItem;
  @override
  @JsonKey(ignore: true)
  _$$NavStateImplCopyWith<_$NavStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelectItemImplCopyWith<$Res>
    implements $NavStateCopyWith<$Res> {
  factory _$$SelectItemImplCopyWith(
          _$SelectItemImpl value, $Res Function(_$SelectItemImpl) then) =
      __$$SelectItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({NavItem selectedItem});
}

/// @nodoc
class __$$SelectItemImplCopyWithImpl<$Res>
    extends _$NavStateCopyWithImpl<$Res, _$SelectItemImpl>
    implements _$$SelectItemImplCopyWith<$Res> {
  __$$SelectItemImplCopyWithImpl(
      _$SelectItemImpl _value, $Res Function(_$SelectItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedItem = null,
  }) {
    return _then(_$SelectItemImpl(
      selectedItem: null == selectedItem
          ? _value.selectedItem
          : selectedItem // ignore: cast_nullable_to_non_nullable
              as NavItem,
    ));
  }
}

/// @nodoc

class _$SelectItemImpl implements SelectItem {
  const _$SelectItemImpl({required this.selectedItem});

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
            other is _$SelectItemImpl &&
            (identical(other.selectedItem, selectedItem) ||
                other.selectedItem == selectedItem));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedItem);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectItemImplCopyWith<_$SelectItemImpl> get copyWith =>
      __$$SelectItemImplCopyWithImpl<_$SelectItemImpl>(this, _$identity);

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
    TResult? Function(NavItem selectedItem)? $default, {
    TResult? Function(NavItem selectedItem)? selectItem,
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
    TResult? Function(_NavState value)? $default, {
    TResult? Function(SelectItem value)? selectItem,
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
  const factory SelectItem({required final NavItem selectedItem}) =
      _$SelectItemImpl;

  @override
  NavItem get selectedItem;
  @override
  @JsonKey(ignore: true)
  _$$SelectItemImplCopyWith<_$SelectItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
