// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'nav_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$NavEventTearOff {
  const _$NavEventTearOff();

// ignore: unused_element
  NavigateTo navigateTo(NavItem destination) {
    return NavigateTo(
      destination,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $NavEvent = _$NavEventTearOff();

/// @nodoc
mixin _$NavEvent {
  NavItem get destination;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult navigateTo(NavItem destination),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult navigateTo(NavItem destination),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult navigateTo(NavigateTo value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult navigateTo(NavigateTo value),
    @required TResult orElse(),
  });

  @JsonKey(ignore: true)
  $NavEventCopyWith<NavEvent> get copyWith;
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
    Object destination = freezed,
  }) {
    return _then(_value.copyWith(
      destination:
          destination == freezed ? _value.destination : destination as NavItem,
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
    Object destination = freezed,
  }) {
    return _then(NavigateTo(
      destination == freezed ? _value.destination : destination as NavItem,
    ));
  }
}

/// @nodoc
class _$NavigateTo implements NavigateTo {
  const _$NavigateTo(this.destination) : assert(destination != null);

  @override
  final NavItem destination;

  @override
  String toString() {
    return 'NavEvent.navigateTo(destination: $destination)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NavigateTo &&
            (identical(other.destination, destination) ||
                const DeepCollectionEquality()
                    .equals(other.destination, destination)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(destination);

  @JsonKey(ignore: true)
  @override
  $NavigateToCopyWith<NavigateTo> get copyWith =>
      _$NavigateToCopyWithImpl<NavigateTo>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult navigateTo(NavItem destination),
  }) {
    assert(navigateTo != null);
    return navigateTo(destination);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult navigateTo(NavItem destination),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (navigateTo != null) {
      return navigateTo(destination);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult navigateTo(NavigateTo value),
  }) {
    assert(navigateTo != null);
    return navigateTo(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult navigateTo(NavigateTo value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
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
  $NavigateToCopyWith<NavigateTo> get copyWith;
}

/// @nodoc
class _$NavStateTearOff {
  const _$NavStateTearOff();

// ignore: unused_element
  _NavState call({@required NavItem selectedItem}) {
    return _NavState(
      selectedItem: selectedItem,
    );
  }

// ignore: unused_element
  SelectItem selectItem({@required NavItem selectedItem}) {
    return SelectItem(
      selectedItem: selectedItem,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $NavState = _$NavStateTearOff();

/// @nodoc
mixin _$NavState {
  NavItem get selectedItem;

  @optionalTypeArgs
  TResult when<TResult extends Object>(
    TResult $default(NavItem selectedItem), {
    @required TResult selectItem(NavItem selectedItem),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>(
    TResult $default(NavItem selectedItem), {
    TResult selectItem(NavItem selectedItem),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>(
    TResult $default(_NavState value), {
    @required TResult selectItem(SelectItem value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>(
    TResult $default(_NavState value), {
    TResult selectItem(SelectItem value),
    @required TResult orElse(),
  });

  @JsonKey(ignore: true)
  $NavStateCopyWith<NavState> get copyWith;
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
    Object selectedItem = freezed,
  }) {
    return _then(_value.copyWith(
      selectedItem: selectedItem == freezed
          ? _value.selectedItem
          : selectedItem as NavItem,
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
    Object selectedItem = freezed,
  }) {
    return _then(_NavState(
      selectedItem: selectedItem == freezed
          ? _value.selectedItem
          : selectedItem as NavItem,
    ));
  }
}

/// @nodoc
class _$_NavState implements _NavState {
  const _$_NavState({@required this.selectedItem})
      : assert(selectedItem != null);

  @override
  final NavItem selectedItem;

  @override
  String toString() {
    return 'NavState(selectedItem: $selectedItem)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NavState &&
            (identical(other.selectedItem, selectedItem) ||
                const DeepCollectionEquality()
                    .equals(other.selectedItem, selectedItem)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(selectedItem);

  @JsonKey(ignore: true)
  @override
  _$NavStateCopyWith<_NavState> get copyWith =>
      __$NavStateCopyWithImpl<_NavState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>(
    TResult $default(NavItem selectedItem), {
    @required TResult selectItem(NavItem selectedItem),
  }) {
    assert($default != null);
    assert(selectItem != null);
    return $default(selectedItem);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>(
    TResult $default(NavItem selectedItem), {
    TResult selectItem(NavItem selectedItem),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(selectedItem);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>(
    TResult $default(_NavState value), {
    @required TResult selectItem(SelectItem value),
  }) {
    assert($default != null);
    assert(selectItem != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>(
    TResult $default(_NavState value), {
    TResult selectItem(SelectItem value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _NavState implements NavState {
  const factory _NavState({@required NavItem selectedItem}) = _$_NavState;

  @override
  NavItem get selectedItem;
  @override
  @JsonKey(ignore: true)
  _$NavStateCopyWith<_NavState> get copyWith;
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
    Object selectedItem = freezed,
  }) {
    return _then(SelectItem(
      selectedItem: selectedItem == freezed
          ? _value.selectedItem
          : selectedItem as NavItem,
    ));
  }
}

/// @nodoc
class _$SelectItem implements SelectItem {
  const _$SelectItem({@required this.selectedItem})
      : assert(selectedItem != null);

  @override
  final NavItem selectedItem;

  @override
  String toString() {
    return 'NavState.selectItem(selectedItem: $selectedItem)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SelectItem &&
            (identical(other.selectedItem, selectedItem) ||
                const DeepCollectionEquality()
                    .equals(other.selectedItem, selectedItem)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(selectedItem);

  @JsonKey(ignore: true)
  @override
  $SelectItemCopyWith<SelectItem> get copyWith =>
      _$SelectItemCopyWithImpl<SelectItem>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>(
    TResult $default(NavItem selectedItem), {
    @required TResult selectItem(NavItem selectedItem),
  }) {
    assert($default != null);
    assert(selectItem != null);
    return selectItem(selectedItem);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>(
    TResult $default(NavItem selectedItem), {
    TResult selectItem(NavItem selectedItem),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (selectItem != null) {
      return selectItem(selectedItem);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>(
    TResult $default(_NavState value), {
    @required TResult selectItem(SelectItem value),
  }) {
    assert($default != null);
    assert(selectItem != null);
    return selectItem(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>(
    TResult $default(_NavState value), {
    TResult selectItem(SelectItem value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (selectItem != null) {
      return selectItem(this);
    }
    return orElse();
  }
}

abstract class SelectItem implements NavState {
  const factory SelectItem({@required NavItem selectedItem}) = _$SelectItem;

  @override
  NavItem get selectedItem;
  @override
  @JsonKey(ignore: true)
  $SelectItemCopyWith<SelectItem> get copyWith;
}
