// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'category_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$CategoryWatcherEventTearOff {
  const _$CategoryWatcherEventTearOff();

// ignore: unused_element
  _WatchAllStarted watchAllStarted() {
    return const _WatchAllStarted();
  }

// ignore: unused_element
  _ReorderStarted reorderStarted(List<Category> categories) {
    return _ReorderStarted(
      categories,
    );
  }

// ignore: unused_element
  _CategoriesReceived categoriesReceived(List<Category> categories) {
    return _CategoriesReceived(
      categories,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $CategoryWatcherEvent = _$CategoryWatcherEventTearOff();

/// @nodoc
mixin _$CategoryWatcherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult watchAllStarted(),
    @required TResult reorderStarted(List<Category> categories),
    @required TResult categoriesReceived(List<Category> categories),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult watchAllStarted(),
    TResult reorderStarted(List<Category> categories),
    TResult categoriesReceived(List<Category> categories),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult watchAllStarted(_WatchAllStarted value),
    @required TResult reorderStarted(_ReorderStarted value),
    @required TResult categoriesReceived(_CategoriesReceived value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult watchAllStarted(_WatchAllStarted value),
    TResult reorderStarted(_ReorderStarted value),
    TResult categoriesReceived(_CategoriesReceived value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $CategoryWatcherEventCopyWith<$Res> {
  factory $CategoryWatcherEventCopyWith(CategoryWatcherEvent value,
          $Res Function(CategoryWatcherEvent) then) =
      _$CategoryWatcherEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CategoryWatcherEventCopyWithImpl<$Res>
    implements $CategoryWatcherEventCopyWith<$Res> {
  _$CategoryWatcherEventCopyWithImpl(this._value, this._then);

  final CategoryWatcherEvent _value;
  // ignore: unused_field
  final $Res Function(CategoryWatcherEvent) _then;
}

/// @nodoc
abstract class _$WatchAllStartedCopyWith<$Res> {
  factory _$WatchAllStartedCopyWith(
          _WatchAllStarted value, $Res Function(_WatchAllStarted) then) =
      __$WatchAllStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$WatchAllStartedCopyWithImpl<$Res>
    extends _$CategoryWatcherEventCopyWithImpl<$Res>
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
    return 'CategoryWatcherEvent.watchAllStarted()';
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
    @required TResult reorderStarted(List<Category> categories),
    @required TResult categoriesReceived(List<Category> categories),
  }) {
    assert(watchAllStarted != null);
    assert(reorderStarted != null);
    assert(categoriesReceived != null);
    return watchAllStarted();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult watchAllStarted(),
    TResult reorderStarted(List<Category> categories),
    TResult categoriesReceived(List<Category> categories),
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
    @required TResult reorderStarted(_ReorderStarted value),
    @required TResult categoriesReceived(_CategoriesReceived value),
  }) {
    assert(watchAllStarted != null);
    assert(reorderStarted != null);
    assert(categoriesReceived != null);
    return watchAllStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult watchAllStarted(_WatchAllStarted value),
    TResult reorderStarted(_ReorderStarted value),
    TResult categoriesReceived(_CategoriesReceived value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (watchAllStarted != null) {
      return watchAllStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchAllStarted implements CategoryWatcherEvent {
  const factory _WatchAllStarted() = _$_WatchAllStarted;
}

/// @nodoc
abstract class _$ReorderStartedCopyWith<$Res> {
  factory _$ReorderStartedCopyWith(
          _ReorderStarted value, $Res Function(_ReorderStarted) then) =
      __$ReorderStartedCopyWithImpl<$Res>;
  $Res call({List<Category> categories});
}

/// @nodoc
class __$ReorderStartedCopyWithImpl<$Res>
    extends _$CategoryWatcherEventCopyWithImpl<$Res>
    implements _$ReorderStartedCopyWith<$Res> {
  __$ReorderStartedCopyWithImpl(
      _ReorderStarted _value, $Res Function(_ReorderStarted) _then)
      : super(_value, (v) => _then(v as _ReorderStarted));

  @override
  _ReorderStarted get _value => super._value as _ReorderStarted;

  @override
  $Res call({
    Object categories = freezed,
  }) {
    return _then(_ReorderStarted(
      categories == freezed ? _value.categories : categories as List<Category>,
    ));
  }
}

/// @nodoc
class _$_ReorderStarted implements _ReorderStarted {
  const _$_ReorderStarted(this.categories) : assert(categories != null);

  @override
  final List<Category> categories;

  @override
  String toString() {
    return 'CategoryWatcherEvent.reorderStarted(categories: $categories)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ReorderStarted &&
            (identical(other.categories, categories) ||
                const DeepCollectionEquality()
                    .equals(other.categories, categories)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(categories);

  @JsonKey(ignore: true)
  @override
  _$ReorderStartedCopyWith<_ReorderStarted> get copyWith =>
      __$ReorderStartedCopyWithImpl<_ReorderStarted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult watchAllStarted(),
    @required TResult reorderStarted(List<Category> categories),
    @required TResult categoriesReceived(List<Category> categories),
  }) {
    assert(watchAllStarted != null);
    assert(reorderStarted != null);
    assert(categoriesReceived != null);
    return reorderStarted(categories);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult watchAllStarted(),
    TResult reorderStarted(List<Category> categories),
    TResult categoriesReceived(List<Category> categories),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (reorderStarted != null) {
      return reorderStarted(categories);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult watchAllStarted(_WatchAllStarted value),
    @required TResult reorderStarted(_ReorderStarted value),
    @required TResult categoriesReceived(_CategoriesReceived value),
  }) {
    assert(watchAllStarted != null);
    assert(reorderStarted != null);
    assert(categoriesReceived != null);
    return reorderStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult watchAllStarted(_WatchAllStarted value),
    TResult reorderStarted(_ReorderStarted value),
    TResult categoriesReceived(_CategoriesReceived value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (reorderStarted != null) {
      return reorderStarted(this);
    }
    return orElse();
  }
}

abstract class _ReorderStarted implements CategoryWatcherEvent {
  const factory _ReorderStarted(List<Category> categories) = _$_ReorderStarted;

  List<Category> get categories;
  @JsonKey(ignore: true)
  _$ReorderStartedCopyWith<_ReorderStarted> get copyWith;
}

/// @nodoc
abstract class _$CategoriesReceivedCopyWith<$Res> {
  factory _$CategoriesReceivedCopyWith(
          _CategoriesReceived value, $Res Function(_CategoriesReceived) then) =
      __$CategoriesReceivedCopyWithImpl<$Res>;
  $Res call({List<Category> categories});
}

/// @nodoc
class __$CategoriesReceivedCopyWithImpl<$Res>
    extends _$CategoryWatcherEventCopyWithImpl<$Res>
    implements _$CategoriesReceivedCopyWith<$Res> {
  __$CategoriesReceivedCopyWithImpl(
      _CategoriesReceived _value, $Res Function(_CategoriesReceived) _then)
      : super(_value, (v) => _then(v as _CategoriesReceived));

  @override
  _CategoriesReceived get _value => super._value as _CategoriesReceived;

  @override
  $Res call({
    Object categories = freezed,
  }) {
    return _then(_CategoriesReceived(
      categories == freezed ? _value.categories : categories as List<Category>,
    ));
  }
}

/// @nodoc
class _$_CategoriesReceived implements _CategoriesReceived {
  const _$_CategoriesReceived(this.categories) : assert(categories != null);

  @override
  final List<Category> categories;

  @override
  String toString() {
    return 'CategoryWatcherEvent.categoriesReceived(categories: $categories)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CategoriesReceived &&
            (identical(other.categories, categories) ||
                const DeepCollectionEquality()
                    .equals(other.categories, categories)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(categories);

  @JsonKey(ignore: true)
  @override
  _$CategoriesReceivedCopyWith<_CategoriesReceived> get copyWith =>
      __$CategoriesReceivedCopyWithImpl<_CategoriesReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult watchAllStarted(),
    @required TResult reorderStarted(List<Category> categories),
    @required TResult categoriesReceived(List<Category> categories),
  }) {
    assert(watchAllStarted != null);
    assert(reorderStarted != null);
    assert(categoriesReceived != null);
    return categoriesReceived(categories);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult watchAllStarted(),
    TResult reorderStarted(List<Category> categories),
    TResult categoriesReceived(List<Category> categories),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (categoriesReceived != null) {
      return categoriesReceived(categories);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult watchAllStarted(_WatchAllStarted value),
    @required TResult reorderStarted(_ReorderStarted value),
    @required TResult categoriesReceived(_CategoriesReceived value),
  }) {
    assert(watchAllStarted != null);
    assert(reorderStarted != null);
    assert(categoriesReceived != null);
    return categoriesReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult watchAllStarted(_WatchAllStarted value),
    TResult reorderStarted(_ReorderStarted value),
    TResult categoriesReceived(_CategoriesReceived value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (categoriesReceived != null) {
      return categoriesReceived(this);
    }
    return orElse();
  }
}

abstract class _CategoriesReceived implements CategoryWatcherEvent {
  const factory _CategoriesReceived(List<Category> categories) =
      _$_CategoriesReceived;

  List<Category> get categories;
  @JsonKey(ignore: true)
  _$CategoriesReceivedCopyWith<_CategoriesReceived> get copyWith;
}

/// @nodoc
class _$CategoryWatcherStateTearOff {
  const _$CategoryWatcherStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _LoadInProgress loadInProgress() {
    return const _LoadInProgress();
  }

// ignore: unused_element
  _LoadSuccess loadSuccess(List<Category> categories) {
    return _LoadSuccess(
      categories,
    );
  }

// ignore: unused_element
  _LoadFailure loadFailure(CategoryFailure categoryFailure) {
    return _LoadFailure(
      categoryFailure,
    );
  }

// ignore: unused_element
  _Reordered reordered(List<Category> categories) {
    return _Reordered(
      categories,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $CategoryWatcherState = _$CategoryWatcherStateTearOff();

/// @nodoc
mixin _$CategoryWatcherState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadInProgress(),
    @required TResult loadSuccess(List<Category> categories),
    @required TResult loadFailure(CategoryFailure categoryFailure),
    @required TResult reordered(List<Category> categories),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(),
    TResult loadSuccess(List<Category> categories),
    TResult loadFailure(CategoryFailure categoryFailure),
    TResult reordered(List<Category> categories),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loadInProgress(_LoadInProgress value),
    @required TResult loadSuccess(_LoadSuccess value),
    @required TResult loadFailure(_LoadFailure value),
    @required TResult reordered(_Reordered value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loadInProgress(_LoadInProgress value),
    TResult loadSuccess(_LoadSuccess value),
    TResult loadFailure(_LoadFailure value),
    TResult reordered(_Reordered value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $CategoryWatcherStateCopyWith<$Res> {
  factory $CategoryWatcherStateCopyWith(CategoryWatcherState value,
          $Res Function(CategoryWatcherState) then) =
      _$CategoryWatcherStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CategoryWatcherStateCopyWithImpl<$Res>
    implements $CategoryWatcherStateCopyWith<$Res> {
  _$CategoryWatcherStateCopyWithImpl(this._value, this._then);

  final CategoryWatcherState _value;
  // ignore: unused_field
  final $Res Function(CategoryWatcherState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$CategoryWatcherStateCopyWithImpl<$Res>
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
    return 'CategoryWatcherState.initial()';
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
    @required TResult loadSuccess(List<Category> categories),
    @required TResult loadFailure(CategoryFailure categoryFailure),
    @required TResult reordered(List<Category> categories),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    assert(reordered != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(),
    TResult loadSuccess(List<Category> categories),
    TResult loadFailure(CategoryFailure categoryFailure),
    TResult reordered(List<Category> categories),
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
    @required TResult reordered(_Reordered value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    assert(reordered != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loadInProgress(_LoadInProgress value),
    TResult loadSuccess(_LoadSuccess value),
    TResult loadFailure(_LoadFailure value),
    TResult reordered(_Reordered value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CategoryWatcherState {
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
    extends _$CategoryWatcherStateCopyWithImpl<$Res>
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
    return 'CategoryWatcherState.loadInProgress()';
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
    @required TResult loadSuccess(List<Category> categories),
    @required TResult loadFailure(CategoryFailure categoryFailure),
    @required TResult reordered(List<Category> categories),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    assert(reordered != null);
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(),
    TResult loadSuccess(List<Category> categories),
    TResult loadFailure(CategoryFailure categoryFailure),
    TResult reordered(List<Category> categories),
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
    @required TResult reordered(_Reordered value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    assert(reordered != null);
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loadInProgress(_LoadInProgress value),
    TResult loadSuccess(_LoadSuccess value),
    TResult loadFailure(_LoadFailure value),
    TResult reordered(_Reordered value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress implements CategoryWatcherState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$LoadSuccessCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(
          _LoadSuccess value, $Res Function(_LoadSuccess) then) =
      __$LoadSuccessCopyWithImpl<$Res>;
  $Res call({List<Category> categories});
}

/// @nodoc
class __$LoadSuccessCopyWithImpl<$Res>
    extends _$CategoryWatcherStateCopyWithImpl<$Res>
    implements _$LoadSuccessCopyWith<$Res> {
  __$LoadSuccessCopyWithImpl(
      _LoadSuccess _value, $Res Function(_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _LoadSuccess));

  @override
  _LoadSuccess get _value => super._value as _LoadSuccess;

  @override
  $Res call({
    Object categories = freezed,
  }) {
    return _then(_LoadSuccess(
      categories == freezed ? _value.categories : categories as List<Category>,
    ));
  }
}

/// @nodoc
class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.categories) : assert(categories != null);

  @override
  final List<Category> categories;

  @override
  String toString() {
    return 'CategoryWatcherState.loadSuccess(categories: $categories)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadSuccess &&
            (identical(other.categories, categories) ||
                const DeepCollectionEquality()
                    .equals(other.categories, categories)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(categories);

  @JsonKey(ignore: true)
  @override
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      __$LoadSuccessCopyWithImpl<_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadInProgress(),
    @required TResult loadSuccess(List<Category> categories),
    @required TResult loadFailure(CategoryFailure categoryFailure),
    @required TResult reordered(List<Category> categories),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    assert(reordered != null);
    return loadSuccess(categories);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(),
    TResult loadSuccess(List<Category> categories),
    TResult loadFailure(CategoryFailure categoryFailure),
    TResult reordered(List<Category> categories),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(categories);
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
    @required TResult reordered(_Reordered value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    assert(reordered != null);
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loadInProgress(_LoadInProgress value),
    TResult loadSuccess(_LoadSuccess value),
    TResult loadFailure(_LoadFailure value),
    TResult reordered(_Reordered value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccess implements CategoryWatcherState {
  const factory _LoadSuccess(List<Category> categories) = _$_LoadSuccess;

  List<Category> get categories;
  @JsonKey(ignore: true)
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith;
}

/// @nodoc
abstract class _$LoadFailureCopyWith<$Res> {
  factory _$LoadFailureCopyWith(
          _LoadFailure value, $Res Function(_LoadFailure) then) =
      __$LoadFailureCopyWithImpl<$Res>;
  $Res call({CategoryFailure categoryFailure});

  $CategoryFailureCopyWith<$Res> get categoryFailure;
}

/// @nodoc
class __$LoadFailureCopyWithImpl<$Res>
    extends _$CategoryWatcherStateCopyWithImpl<$Res>
    implements _$LoadFailureCopyWith<$Res> {
  __$LoadFailureCopyWithImpl(
      _LoadFailure _value, $Res Function(_LoadFailure) _then)
      : super(_value, (v) => _then(v as _LoadFailure));

  @override
  _LoadFailure get _value => super._value as _LoadFailure;

  @override
  $Res call({
    Object categoryFailure = freezed,
  }) {
    return _then(_LoadFailure(
      categoryFailure == freezed
          ? _value.categoryFailure
          : categoryFailure as CategoryFailure,
    ));
  }

  @override
  $CategoryFailureCopyWith<$Res> get categoryFailure {
    if (_value.categoryFailure == null) {
      return null;
    }
    return $CategoryFailureCopyWith<$Res>(_value.categoryFailure, (value) {
      return _then(_value.copyWith(categoryFailure: value));
    });
  }
}

/// @nodoc
class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure(this.categoryFailure) : assert(categoryFailure != null);

  @override
  final CategoryFailure categoryFailure;

  @override
  String toString() {
    return 'CategoryWatcherState.loadFailure(categoryFailure: $categoryFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadFailure &&
            (identical(other.categoryFailure, categoryFailure) ||
                const DeepCollectionEquality()
                    .equals(other.categoryFailure, categoryFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(categoryFailure);

  @JsonKey(ignore: true)
  @override
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      __$LoadFailureCopyWithImpl<_LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadInProgress(),
    @required TResult loadSuccess(List<Category> categories),
    @required TResult loadFailure(CategoryFailure categoryFailure),
    @required TResult reordered(List<Category> categories),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    assert(reordered != null);
    return loadFailure(categoryFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(),
    TResult loadSuccess(List<Category> categories),
    TResult loadFailure(CategoryFailure categoryFailure),
    TResult reordered(List<Category> categories),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(categoryFailure);
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
    @required TResult reordered(_Reordered value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    assert(reordered != null);
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loadInProgress(_LoadInProgress value),
    TResult loadSuccess(_LoadSuccess value),
    TResult loadFailure(_LoadFailure value),
    TResult reordered(_Reordered value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadFailure implements CategoryWatcherState {
  const factory _LoadFailure(CategoryFailure categoryFailure) = _$_LoadFailure;

  CategoryFailure get categoryFailure;
  @JsonKey(ignore: true)
  _$LoadFailureCopyWith<_LoadFailure> get copyWith;
}

/// @nodoc
abstract class _$ReorderedCopyWith<$Res> {
  factory _$ReorderedCopyWith(
          _Reordered value, $Res Function(_Reordered) then) =
      __$ReorderedCopyWithImpl<$Res>;
  $Res call({List<Category> categories});
}

/// @nodoc
class __$ReorderedCopyWithImpl<$Res>
    extends _$CategoryWatcherStateCopyWithImpl<$Res>
    implements _$ReorderedCopyWith<$Res> {
  __$ReorderedCopyWithImpl(_Reordered _value, $Res Function(_Reordered) _then)
      : super(_value, (v) => _then(v as _Reordered));

  @override
  _Reordered get _value => super._value as _Reordered;

  @override
  $Res call({
    Object categories = freezed,
  }) {
    return _then(_Reordered(
      categories == freezed ? _value.categories : categories as List<Category>,
    ));
  }
}

/// @nodoc
class _$_Reordered implements _Reordered {
  const _$_Reordered(this.categories) : assert(categories != null);

  @override
  final List<Category> categories;

  @override
  String toString() {
    return 'CategoryWatcherState.reordered(categories: $categories)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Reordered &&
            (identical(other.categories, categories) ||
                const DeepCollectionEquality()
                    .equals(other.categories, categories)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(categories);

  @JsonKey(ignore: true)
  @override
  _$ReorderedCopyWith<_Reordered> get copyWith =>
      __$ReorderedCopyWithImpl<_Reordered>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadInProgress(),
    @required TResult loadSuccess(List<Category> categories),
    @required TResult loadFailure(CategoryFailure categoryFailure),
    @required TResult reordered(List<Category> categories),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    assert(reordered != null);
    return reordered(categories);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(),
    TResult loadSuccess(List<Category> categories),
    TResult loadFailure(CategoryFailure categoryFailure),
    TResult reordered(List<Category> categories),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (reordered != null) {
      return reordered(categories);
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
    @required TResult reordered(_Reordered value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    assert(reordered != null);
    return reordered(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loadInProgress(_LoadInProgress value),
    TResult loadSuccess(_LoadSuccess value),
    TResult loadFailure(_LoadFailure value),
    TResult reordered(_Reordered value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (reordered != null) {
      return reordered(this);
    }
    return orElse();
  }
}

abstract class _Reordered implements CategoryWatcherState {
  const factory _Reordered(List<Category> categories) = _$_Reordered;

  List<Category> get categories;
  @JsonKey(ignore: true)
  _$ReorderedCopyWith<_Reordered> get copyWith;
}
