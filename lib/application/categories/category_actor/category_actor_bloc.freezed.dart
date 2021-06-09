// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'category_actor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$CategoryActorEventTearOff {
  const _$CategoryActorEventTearOff();

// ignore: unused_element
  _ReorderFinished reorderFinished(List<Category> categories) {
    return _ReorderFinished(
      categories,
    );
  }

// ignore: unused_element
  _Deleted deleted(Category category) {
    return _Deleted(
      category,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $CategoryActorEvent = _$CategoryActorEventTearOff();

/// @nodoc
mixin _$CategoryActorEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult reorderFinished(List<Category> categories),
    @required TResult deleted(Category category),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult reorderFinished(List<Category> categories),
    TResult deleted(Category category),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult reorderFinished(_ReorderFinished value),
    @required TResult deleted(_Deleted value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult reorderFinished(_ReorderFinished value),
    TResult deleted(_Deleted value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $CategoryActorEventCopyWith<$Res> {
  factory $CategoryActorEventCopyWith(
          CategoryActorEvent value, $Res Function(CategoryActorEvent) then) =
      _$CategoryActorEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CategoryActorEventCopyWithImpl<$Res>
    implements $CategoryActorEventCopyWith<$Res> {
  _$CategoryActorEventCopyWithImpl(this._value, this._then);

  final CategoryActorEvent _value;
  // ignore: unused_field
  final $Res Function(CategoryActorEvent) _then;
}

/// @nodoc
abstract class _$ReorderFinishedCopyWith<$Res> {
  factory _$ReorderFinishedCopyWith(
          _ReorderFinished value, $Res Function(_ReorderFinished) then) =
      __$ReorderFinishedCopyWithImpl<$Res>;
  $Res call({List<Category> categories});
}

/// @nodoc
class __$ReorderFinishedCopyWithImpl<$Res>
    extends _$CategoryActorEventCopyWithImpl<$Res>
    implements _$ReorderFinishedCopyWith<$Res> {
  __$ReorderFinishedCopyWithImpl(
      _ReorderFinished _value, $Res Function(_ReorderFinished) _then)
      : super(_value, (v) => _then(v as _ReorderFinished));

  @override
  _ReorderFinished get _value => super._value as _ReorderFinished;

  @override
  $Res call({
    Object categories = freezed,
  }) {
    return _then(_ReorderFinished(
      categories == freezed ? _value.categories : categories as List<Category>,
    ));
  }
}

/// @nodoc
class _$_ReorderFinished implements _ReorderFinished {
  const _$_ReorderFinished(this.categories) : assert(categories != null);

  @override
  final List<Category> categories;

  @override
  String toString() {
    return 'CategoryActorEvent.reorderFinished(categories: $categories)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ReorderFinished &&
            (identical(other.categories, categories) ||
                const DeepCollectionEquality()
                    .equals(other.categories, categories)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(categories);

  @JsonKey(ignore: true)
  @override
  _$ReorderFinishedCopyWith<_ReorderFinished> get copyWith =>
      __$ReorderFinishedCopyWithImpl<_ReorderFinished>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult reorderFinished(List<Category> categories),
    @required TResult deleted(Category category),
  }) {
    assert(reorderFinished != null);
    assert(deleted != null);
    return reorderFinished(categories);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult reorderFinished(List<Category> categories),
    TResult deleted(Category category),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (reorderFinished != null) {
      return reorderFinished(categories);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult reorderFinished(_ReorderFinished value),
    @required TResult deleted(_Deleted value),
  }) {
    assert(reorderFinished != null);
    assert(deleted != null);
    return reorderFinished(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult reorderFinished(_ReorderFinished value),
    TResult deleted(_Deleted value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (reorderFinished != null) {
      return reorderFinished(this);
    }
    return orElse();
  }
}

abstract class _ReorderFinished implements CategoryActorEvent {
  const factory _ReorderFinished(List<Category> categories) =
      _$_ReorderFinished;

  List<Category> get categories;
  @JsonKey(ignore: true)
  _$ReorderFinishedCopyWith<_ReorderFinished> get copyWith;
}

/// @nodoc
abstract class _$DeletedCopyWith<$Res> {
  factory _$DeletedCopyWith(_Deleted value, $Res Function(_Deleted) then) =
      __$DeletedCopyWithImpl<$Res>;
  $Res call({Category category});

  $CategoryCopyWith<$Res> get category;
}

/// @nodoc
class __$DeletedCopyWithImpl<$Res>
    extends _$CategoryActorEventCopyWithImpl<$Res>
    implements _$DeletedCopyWith<$Res> {
  __$DeletedCopyWithImpl(_Deleted _value, $Res Function(_Deleted) _then)
      : super(_value, (v) => _then(v as _Deleted));

  @override
  _Deleted get _value => super._value as _Deleted;

  @override
  $Res call({
    Object category = freezed,
  }) {
    return _then(_Deleted(
      category == freezed ? _value.category : category as Category,
    ));
  }

  @override
  $CategoryCopyWith<$Res> get category {
    if (_value.category == null) {
      return null;
    }
    return $CategoryCopyWith<$Res>(_value.category, (value) {
      return _then(_value.copyWith(category: value));
    });
  }
}

/// @nodoc
class _$_Deleted implements _Deleted {
  const _$_Deleted(this.category) : assert(category != null);

  @override
  final Category category;

  @override
  String toString() {
    return 'CategoryActorEvent.deleted(category: $category)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Deleted &&
            (identical(other.category, category) ||
                const DeepCollectionEquality()
                    .equals(other.category, category)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(category);

  @JsonKey(ignore: true)
  @override
  _$DeletedCopyWith<_Deleted> get copyWith =>
      __$DeletedCopyWithImpl<_Deleted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult reorderFinished(List<Category> categories),
    @required TResult deleted(Category category),
  }) {
    assert(reorderFinished != null);
    assert(deleted != null);
    return deleted(category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult reorderFinished(List<Category> categories),
    TResult deleted(Category category),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (deleted != null) {
      return deleted(category);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult reorderFinished(_ReorderFinished value),
    @required TResult deleted(_Deleted value),
  }) {
    assert(reorderFinished != null);
    assert(deleted != null);
    return deleted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult reorderFinished(_ReorderFinished value),
    TResult deleted(_Deleted value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (deleted != null) {
      return deleted(this);
    }
    return orElse();
  }
}

abstract class _Deleted implements CategoryActorEvent {
  const factory _Deleted(Category category) = _$_Deleted;

  Category get category;
  @JsonKey(ignore: true)
  _$DeletedCopyWith<_Deleted> get copyWith;
}

/// @nodoc
class _$CategoryActorStateTearOff {
  const _$CategoryActorStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _ActionInProgress actionInProgress() {
    return const _ActionInProgress();
  }

// ignore: unused_element
  _ReorderFailure reorderFailure(CategoryFailure categoryFailure) {
    return _ReorderFailure(
      categoryFailure,
    );
  }

// ignore: unused_element
  _ReorderSuccess reorderSuccess() {
    return const _ReorderSuccess();
  }

// ignore: unused_element
  _DeleteFailure deleteFailure(CategoryFailure categoryFailure) {
    return _DeleteFailure(
      categoryFailure,
    );
  }

// ignore: unused_element
  _DeleteSuccess deleteSuccess() {
    return const _DeleteSuccess();
  }
}

/// @nodoc
// ignore: unused_element
const $CategoryActorState = _$CategoryActorStateTearOff();

/// @nodoc
mixin _$CategoryActorState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult actionInProgress(),
    @required TResult reorderFailure(CategoryFailure categoryFailure),
    @required TResult reorderSuccess(),
    @required TResult deleteFailure(CategoryFailure categoryFailure),
    @required TResult deleteSuccess(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult actionInProgress(),
    TResult reorderFailure(CategoryFailure categoryFailure),
    TResult reorderSuccess(),
    TResult deleteFailure(CategoryFailure categoryFailure),
    TResult deleteSuccess(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult actionInProgress(_ActionInProgress value),
    @required TResult reorderFailure(_ReorderFailure value),
    @required TResult reorderSuccess(_ReorderSuccess value),
    @required TResult deleteFailure(_DeleteFailure value),
    @required TResult deleteSuccess(_DeleteSuccess value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult actionInProgress(_ActionInProgress value),
    TResult reorderFailure(_ReorderFailure value),
    TResult reorderSuccess(_ReorderSuccess value),
    TResult deleteFailure(_DeleteFailure value),
    TResult deleteSuccess(_DeleteSuccess value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $CategoryActorStateCopyWith<$Res> {
  factory $CategoryActorStateCopyWith(
          CategoryActorState value, $Res Function(CategoryActorState) then) =
      _$CategoryActorStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CategoryActorStateCopyWithImpl<$Res>
    implements $CategoryActorStateCopyWith<$Res> {
  _$CategoryActorStateCopyWithImpl(this._value, this._then);

  final CategoryActorState _value;
  // ignore: unused_field
  final $Res Function(CategoryActorState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$CategoryActorStateCopyWithImpl<$Res>
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
    return 'CategoryActorState.initial()';
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
    @required TResult actionInProgress(),
    @required TResult reorderFailure(CategoryFailure categoryFailure),
    @required TResult reorderSuccess(),
    @required TResult deleteFailure(CategoryFailure categoryFailure),
    @required TResult deleteSuccess(),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(reorderFailure != null);
    assert(reorderSuccess != null);
    assert(deleteFailure != null);
    assert(deleteSuccess != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult actionInProgress(),
    TResult reorderFailure(CategoryFailure categoryFailure),
    TResult reorderSuccess(),
    TResult deleteFailure(CategoryFailure categoryFailure),
    TResult deleteSuccess(),
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
    @required TResult actionInProgress(_ActionInProgress value),
    @required TResult reorderFailure(_ReorderFailure value),
    @required TResult reorderSuccess(_ReorderSuccess value),
    @required TResult deleteFailure(_DeleteFailure value),
    @required TResult deleteSuccess(_DeleteSuccess value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(reorderFailure != null);
    assert(reorderSuccess != null);
    assert(deleteFailure != null);
    assert(deleteSuccess != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult actionInProgress(_ActionInProgress value),
    TResult reorderFailure(_ReorderFailure value),
    TResult reorderSuccess(_ReorderSuccess value),
    TResult deleteFailure(_DeleteFailure value),
    TResult deleteSuccess(_DeleteSuccess value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CategoryActorState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$ActionInProgressCopyWith<$Res> {
  factory _$ActionInProgressCopyWith(
          _ActionInProgress value, $Res Function(_ActionInProgress) then) =
      __$ActionInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$ActionInProgressCopyWithImpl<$Res>
    extends _$CategoryActorStateCopyWithImpl<$Res>
    implements _$ActionInProgressCopyWith<$Res> {
  __$ActionInProgressCopyWithImpl(
      _ActionInProgress _value, $Res Function(_ActionInProgress) _then)
      : super(_value, (v) => _then(v as _ActionInProgress));

  @override
  _ActionInProgress get _value => super._value as _ActionInProgress;
}

/// @nodoc
class _$_ActionInProgress implements _ActionInProgress {
  const _$_ActionInProgress();

  @override
  String toString() {
    return 'CategoryActorState.actionInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ActionInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult actionInProgress(),
    @required TResult reorderFailure(CategoryFailure categoryFailure),
    @required TResult reorderSuccess(),
    @required TResult deleteFailure(CategoryFailure categoryFailure),
    @required TResult deleteSuccess(),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(reorderFailure != null);
    assert(reorderSuccess != null);
    assert(deleteFailure != null);
    assert(deleteSuccess != null);
    return actionInProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult actionInProgress(),
    TResult reorderFailure(CategoryFailure categoryFailure),
    TResult reorderSuccess(),
    TResult deleteFailure(CategoryFailure categoryFailure),
    TResult deleteSuccess(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (actionInProgress != null) {
      return actionInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult actionInProgress(_ActionInProgress value),
    @required TResult reorderFailure(_ReorderFailure value),
    @required TResult reorderSuccess(_ReorderSuccess value),
    @required TResult deleteFailure(_DeleteFailure value),
    @required TResult deleteSuccess(_DeleteSuccess value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(reorderFailure != null);
    assert(reorderSuccess != null);
    assert(deleteFailure != null);
    assert(deleteSuccess != null);
    return actionInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult actionInProgress(_ActionInProgress value),
    TResult reorderFailure(_ReorderFailure value),
    TResult reorderSuccess(_ReorderSuccess value),
    TResult deleteFailure(_DeleteFailure value),
    TResult deleteSuccess(_DeleteSuccess value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (actionInProgress != null) {
      return actionInProgress(this);
    }
    return orElse();
  }
}

abstract class _ActionInProgress implements CategoryActorState {
  const factory _ActionInProgress() = _$_ActionInProgress;
}

/// @nodoc
abstract class _$ReorderFailureCopyWith<$Res> {
  factory _$ReorderFailureCopyWith(
          _ReorderFailure value, $Res Function(_ReorderFailure) then) =
      __$ReorderFailureCopyWithImpl<$Res>;
  $Res call({CategoryFailure categoryFailure});

  $CategoryFailureCopyWith<$Res> get categoryFailure;
}

/// @nodoc
class __$ReorderFailureCopyWithImpl<$Res>
    extends _$CategoryActorStateCopyWithImpl<$Res>
    implements _$ReorderFailureCopyWith<$Res> {
  __$ReorderFailureCopyWithImpl(
      _ReorderFailure _value, $Res Function(_ReorderFailure) _then)
      : super(_value, (v) => _then(v as _ReorderFailure));

  @override
  _ReorderFailure get _value => super._value as _ReorderFailure;

  @override
  $Res call({
    Object categoryFailure = freezed,
  }) {
    return _then(_ReorderFailure(
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
class _$_ReorderFailure implements _ReorderFailure {
  const _$_ReorderFailure(this.categoryFailure)
      : assert(categoryFailure != null);

  @override
  final CategoryFailure categoryFailure;

  @override
  String toString() {
    return 'CategoryActorState.reorderFailure(categoryFailure: $categoryFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ReorderFailure &&
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
  _$ReorderFailureCopyWith<_ReorderFailure> get copyWith =>
      __$ReorderFailureCopyWithImpl<_ReorderFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult actionInProgress(),
    @required TResult reorderFailure(CategoryFailure categoryFailure),
    @required TResult reorderSuccess(),
    @required TResult deleteFailure(CategoryFailure categoryFailure),
    @required TResult deleteSuccess(),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(reorderFailure != null);
    assert(reorderSuccess != null);
    assert(deleteFailure != null);
    assert(deleteSuccess != null);
    return reorderFailure(categoryFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult actionInProgress(),
    TResult reorderFailure(CategoryFailure categoryFailure),
    TResult reorderSuccess(),
    TResult deleteFailure(CategoryFailure categoryFailure),
    TResult deleteSuccess(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (reorderFailure != null) {
      return reorderFailure(categoryFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult actionInProgress(_ActionInProgress value),
    @required TResult reorderFailure(_ReorderFailure value),
    @required TResult reorderSuccess(_ReorderSuccess value),
    @required TResult deleteFailure(_DeleteFailure value),
    @required TResult deleteSuccess(_DeleteSuccess value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(reorderFailure != null);
    assert(reorderSuccess != null);
    assert(deleteFailure != null);
    assert(deleteSuccess != null);
    return reorderFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult actionInProgress(_ActionInProgress value),
    TResult reorderFailure(_ReorderFailure value),
    TResult reorderSuccess(_ReorderSuccess value),
    TResult deleteFailure(_DeleteFailure value),
    TResult deleteSuccess(_DeleteSuccess value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (reorderFailure != null) {
      return reorderFailure(this);
    }
    return orElse();
  }
}

abstract class _ReorderFailure implements CategoryActorState {
  const factory _ReorderFailure(CategoryFailure categoryFailure) =
      _$_ReorderFailure;

  CategoryFailure get categoryFailure;
  @JsonKey(ignore: true)
  _$ReorderFailureCopyWith<_ReorderFailure> get copyWith;
}

/// @nodoc
abstract class _$ReorderSuccessCopyWith<$Res> {
  factory _$ReorderSuccessCopyWith(
          _ReorderSuccess value, $Res Function(_ReorderSuccess) then) =
      __$ReorderSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$ReorderSuccessCopyWithImpl<$Res>
    extends _$CategoryActorStateCopyWithImpl<$Res>
    implements _$ReorderSuccessCopyWith<$Res> {
  __$ReorderSuccessCopyWithImpl(
      _ReorderSuccess _value, $Res Function(_ReorderSuccess) _then)
      : super(_value, (v) => _then(v as _ReorderSuccess));

  @override
  _ReorderSuccess get _value => super._value as _ReorderSuccess;
}

/// @nodoc
class _$_ReorderSuccess implements _ReorderSuccess {
  const _$_ReorderSuccess();

  @override
  String toString() {
    return 'CategoryActorState.reorderSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ReorderSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult actionInProgress(),
    @required TResult reorderFailure(CategoryFailure categoryFailure),
    @required TResult reorderSuccess(),
    @required TResult deleteFailure(CategoryFailure categoryFailure),
    @required TResult deleteSuccess(),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(reorderFailure != null);
    assert(reorderSuccess != null);
    assert(deleteFailure != null);
    assert(deleteSuccess != null);
    return reorderSuccess();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult actionInProgress(),
    TResult reorderFailure(CategoryFailure categoryFailure),
    TResult reorderSuccess(),
    TResult deleteFailure(CategoryFailure categoryFailure),
    TResult deleteSuccess(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (reorderSuccess != null) {
      return reorderSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult actionInProgress(_ActionInProgress value),
    @required TResult reorderFailure(_ReorderFailure value),
    @required TResult reorderSuccess(_ReorderSuccess value),
    @required TResult deleteFailure(_DeleteFailure value),
    @required TResult deleteSuccess(_DeleteSuccess value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(reorderFailure != null);
    assert(reorderSuccess != null);
    assert(deleteFailure != null);
    assert(deleteSuccess != null);
    return reorderSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult actionInProgress(_ActionInProgress value),
    TResult reorderFailure(_ReorderFailure value),
    TResult reorderSuccess(_ReorderSuccess value),
    TResult deleteFailure(_DeleteFailure value),
    TResult deleteSuccess(_DeleteSuccess value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (reorderSuccess != null) {
      return reorderSuccess(this);
    }
    return orElse();
  }
}

abstract class _ReorderSuccess implements CategoryActorState {
  const factory _ReorderSuccess() = _$_ReorderSuccess;
}

/// @nodoc
abstract class _$DeleteFailureCopyWith<$Res> {
  factory _$DeleteFailureCopyWith(
          _DeleteFailure value, $Res Function(_DeleteFailure) then) =
      __$DeleteFailureCopyWithImpl<$Res>;
  $Res call({CategoryFailure categoryFailure});

  $CategoryFailureCopyWith<$Res> get categoryFailure;
}

/// @nodoc
class __$DeleteFailureCopyWithImpl<$Res>
    extends _$CategoryActorStateCopyWithImpl<$Res>
    implements _$DeleteFailureCopyWith<$Res> {
  __$DeleteFailureCopyWithImpl(
      _DeleteFailure _value, $Res Function(_DeleteFailure) _then)
      : super(_value, (v) => _then(v as _DeleteFailure));

  @override
  _DeleteFailure get _value => super._value as _DeleteFailure;

  @override
  $Res call({
    Object categoryFailure = freezed,
  }) {
    return _then(_DeleteFailure(
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
class _$_DeleteFailure implements _DeleteFailure {
  const _$_DeleteFailure(this.categoryFailure)
      : assert(categoryFailure != null);

  @override
  final CategoryFailure categoryFailure;

  @override
  String toString() {
    return 'CategoryActorState.deleteFailure(categoryFailure: $categoryFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DeleteFailure &&
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
  _$DeleteFailureCopyWith<_DeleteFailure> get copyWith =>
      __$DeleteFailureCopyWithImpl<_DeleteFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult actionInProgress(),
    @required TResult reorderFailure(CategoryFailure categoryFailure),
    @required TResult reorderSuccess(),
    @required TResult deleteFailure(CategoryFailure categoryFailure),
    @required TResult deleteSuccess(),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(reorderFailure != null);
    assert(reorderSuccess != null);
    assert(deleteFailure != null);
    assert(deleteSuccess != null);
    return deleteFailure(categoryFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult actionInProgress(),
    TResult reorderFailure(CategoryFailure categoryFailure),
    TResult reorderSuccess(),
    TResult deleteFailure(CategoryFailure categoryFailure),
    TResult deleteSuccess(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (deleteFailure != null) {
      return deleteFailure(categoryFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult actionInProgress(_ActionInProgress value),
    @required TResult reorderFailure(_ReorderFailure value),
    @required TResult reorderSuccess(_ReorderSuccess value),
    @required TResult deleteFailure(_DeleteFailure value),
    @required TResult deleteSuccess(_DeleteSuccess value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(reorderFailure != null);
    assert(reorderSuccess != null);
    assert(deleteFailure != null);
    assert(deleteSuccess != null);
    return deleteFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult actionInProgress(_ActionInProgress value),
    TResult reorderFailure(_ReorderFailure value),
    TResult reorderSuccess(_ReorderSuccess value),
    TResult deleteFailure(_DeleteFailure value),
    TResult deleteSuccess(_DeleteSuccess value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (deleteFailure != null) {
      return deleteFailure(this);
    }
    return orElse();
  }
}

abstract class _DeleteFailure implements CategoryActorState {
  const factory _DeleteFailure(CategoryFailure categoryFailure) =
      _$_DeleteFailure;

  CategoryFailure get categoryFailure;
  @JsonKey(ignore: true)
  _$DeleteFailureCopyWith<_DeleteFailure> get copyWith;
}

/// @nodoc
abstract class _$DeleteSuccessCopyWith<$Res> {
  factory _$DeleteSuccessCopyWith(
          _DeleteSuccess value, $Res Function(_DeleteSuccess) then) =
      __$DeleteSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$DeleteSuccessCopyWithImpl<$Res>
    extends _$CategoryActorStateCopyWithImpl<$Res>
    implements _$DeleteSuccessCopyWith<$Res> {
  __$DeleteSuccessCopyWithImpl(
      _DeleteSuccess _value, $Res Function(_DeleteSuccess) _then)
      : super(_value, (v) => _then(v as _DeleteSuccess));

  @override
  _DeleteSuccess get _value => super._value as _DeleteSuccess;
}

/// @nodoc
class _$_DeleteSuccess implements _DeleteSuccess {
  const _$_DeleteSuccess();

  @override
  String toString() {
    return 'CategoryActorState.deleteSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _DeleteSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult actionInProgress(),
    @required TResult reorderFailure(CategoryFailure categoryFailure),
    @required TResult reorderSuccess(),
    @required TResult deleteFailure(CategoryFailure categoryFailure),
    @required TResult deleteSuccess(),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(reorderFailure != null);
    assert(reorderSuccess != null);
    assert(deleteFailure != null);
    assert(deleteSuccess != null);
    return deleteSuccess();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult actionInProgress(),
    TResult reorderFailure(CategoryFailure categoryFailure),
    TResult reorderSuccess(),
    TResult deleteFailure(CategoryFailure categoryFailure),
    TResult deleteSuccess(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (deleteSuccess != null) {
      return deleteSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult actionInProgress(_ActionInProgress value),
    @required TResult reorderFailure(_ReorderFailure value),
    @required TResult reorderSuccess(_ReorderSuccess value),
    @required TResult deleteFailure(_DeleteFailure value),
    @required TResult deleteSuccess(_DeleteSuccess value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(reorderFailure != null);
    assert(reorderSuccess != null);
    assert(deleteFailure != null);
    assert(deleteSuccess != null);
    return deleteSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult actionInProgress(_ActionInProgress value),
    TResult reorderFailure(_ReorderFailure value),
    TResult reorderSuccess(_ReorderSuccess value),
    TResult deleteFailure(_DeleteFailure value),
    TResult deleteSuccess(_DeleteSuccess value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (deleteSuccess != null) {
      return deleteSuccess(this);
    }
    return orElse();
  }
}

abstract class _DeleteSuccess implements CategoryActorState {
  const factory _DeleteSuccess() = _$_DeleteSuccess;
}
