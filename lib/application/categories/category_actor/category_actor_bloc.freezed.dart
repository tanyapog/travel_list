// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'category_actor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CategoryActorEventTearOff {
  const _$CategoryActorEventTearOff();

  _ReorderFinished reorderFinished(List<Category> categories) {
    return _ReorderFinished(
      categories,
    );
  }

  _Deleted deleted(Category category) {
    return _Deleted(
      category,
    );
  }
}

/// @nodoc
const $CategoryActorEvent = _$CategoryActorEventTearOff();

/// @nodoc
mixin _$CategoryActorEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Category> categories) reorderFinished,
    required TResult Function(Category category) deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Category> categories)? reorderFinished,
    TResult Function(Category category)? deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Category> categories)? reorderFinished,
    TResult Function(Category category)? deleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ReorderFinished value) reorderFinished,
    required TResult Function(_Deleted value) deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ReorderFinished value)? reorderFinished,
    TResult Function(_Deleted value)? deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ReorderFinished value)? reorderFinished,
    TResult Function(_Deleted value)? deleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
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
    Object? categories = freezed,
  }) {
    return _then(_ReorderFinished(
      categories == freezed
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<Category>,
    ));
  }
}

/// @nodoc

class _$_ReorderFinished implements _ReorderFinished {
  const _$_ReorderFinished(this.categories);

  @override
  final List<Category> categories;

  @override
  String toString() {
    return 'CategoryActorEvent.reorderFinished(categories: $categories)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ReorderFinished &&
            const DeepCollectionEquality()
                .equals(other.categories, categories));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(categories));

  @JsonKey(ignore: true)
  @override
  _$ReorderFinishedCopyWith<_ReorderFinished> get copyWith =>
      __$ReorderFinishedCopyWithImpl<_ReorderFinished>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Category> categories) reorderFinished,
    required TResult Function(Category category) deleted,
  }) {
    return reorderFinished(categories);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Category> categories)? reorderFinished,
    TResult Function(Category category)? deleted,
  }) {
    return reorderFinished?.call(categories);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Category> categories)? reorderFinished,
    TResult Function(Category category)? deleted,
    required TResult orElse(),
  }) {
    if (reorderFinished != null) {
      return reorderFinished(categories);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ReorderFinished value) reorderFinished,
    required TResult Function(_Deleted value) deleted,
  }) {
    return reorderFinished(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ReorderFinished value)? reorderFinished,
    TResult Function(_Deleted value)? deleted,
  }) {
    return reorderFinished?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ReorderFinished value)? reorderFinished,
    TResult Function(_Deleted value)? deleted,
    required TResult orElse(),
  }) {
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
  _$ReorderFinishedCopyWith<_ReorderFinished> get copyWith =>
      throw _privateConstructorUsedError;
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
    Object? category = freezed,
  }) {
    return _then(_Deleted(
      category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as Category,
    ));
  }

  @override
  $CategoryCopyWith<$Res> get category {
    return $CategoryCopyWith<$Res>(_value.category, (value) {
      return _then(_value.copyWith(category: value));
    });
  }
}

/// @nodoc

class _$_Deleted implements _Deleted {
  const _$_Deleted(this.category);

  @override
  final Category category;

  @override
  String toString() {
    return 'CategoryActorEvent.deleted(category: $category)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Deleted &&
            const DeepCollectionEquality().equals(other.category, category));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(category));

  @JsonKey(ignore: true)
  @override
  _$DeletedCopyWith<_Deleted> get copyWith =>
      __$DeletedCopyWithImpl<_Deleted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Category> categories) reorderFinished,
    required TResult Function(Category category) deleted,
  }) {
    return deleted(category);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Category> categories)? reorderFinished,
    TResult Function(Category category)? deleted,
  }) {
    return deleted?.call(category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Category> categories)? reorderFinished,
    TResult Function(Category category)? deleted,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(category);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ReorderFinished value) reorderFinished,
    required TResult Function(_Deleted value) deleted,
  }) {
    return deleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ReorderFinished value)? reorderFinished,
    TResult Function(_Deleted value)? deleted,
  }) {
    return deleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ReorderFinished value)? reorderFinished,
    TResult Function(_Deleted value)? deleted,
    required TResult orElse(),
  }) {
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
  _$DeletedCopyWith<_Deleted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$CategoryActorStateTearOff {
  const _$CategoryActorStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _ActionInProgress actionInProgress() {
    return const _ActionInProgress();
  }

  _ReorderFailure reorderFailure(CategoryFailure categoryFailure) {
    return _ReorderFailure(
      categoryFailure,
    );
  }

  _ReorderSuccess reorderSuccess() {
    return const _ReorderSuccess();
  }

  _DeleteFailure deleteFailure(CategoryFailure categoryFailure) {
    return _DeleteFailure(
      categoryFailure,
    );
  }

  _DeleteSuccess deleteSuccess() {
    return const _DeleteSuccess();
  }
}

/// @nodoc
const $CategoryActorState = _$CategoryActorStateTearOff();

/// @nodoc
mixin _$CategoryActorState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function(CategoryFailure categoryFailure) reorderFailure,
    required TResult Function() reorderSuccess,
    required TResult Function(CategoryFailure categoryFailure) deleteFailure,
    required TResult Function() deleteSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(CategoryFailure categoryFailure)? reorderFailure,
    TResult Function()? reorderSuccess,
    TResult Function(CategoryFailure categoryFailure)? deleteFailure,
    TResult Function()? deleteSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(CategoryFailure categoryFailure)? reorderFailure,
    TResult Function()? reorderSuccess,
    TResult Function(CategoryFailure categoryFailure)? deleteFailure,
    TResult Function()? deleteSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_ReorderFailure value) reorderFailure,
    required TResult Function(_ReorderSuccess value) reorderSuccess,
    required TResult Function(_DeleteFailure value) deleteFailure,
    required TResult Function(_DeleteSuccess value) deleteSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_ReorderFailure value)? reorderFailure,
    TResult Function(_ReorderSuccess value)? reorderSuccess,
    TResult Function(_DeleteFailure value)? deleteFailure,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_ReorderFailure value)? reorderFailure,
    TResult Function(_ReorderSuccess value)? reorderSuccess,
    TResult Function(_DeleteFailure value)? deleteFailure,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
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
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function(CategoryFailure categoryFailure) reorderFailure,
    required TResult Function() reorderSuccess,
    required TResult Function(CategoryFailure categoryFailure) deleteFailure,
    required TResult Function() deleteSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(CategoryFailure categoryFailure)? reorderFailure,
    TResult Function()? reorderSuccess,
    TResult Function(CategoryFailure categoryFailure)? deleteFailure,
    TResult Function()? deleteSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(CategoryFailure categoryFailure)? reorderFailure,
    TResult Function()? reorderSuccess,
    TResult Function(CategoryFailure categoryFailure)? deleteFailure,
    TResult Function()? deleteSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_ReorderFailure value) reorderFailure,
    required TResult Function(_ReorderSuccess value) reorderSuccess,
    required TResult Function(_DeleteFailure value) deleteFailure,
    required TResult Function(_DeleteSuccess value) deleteSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_ReorderFailure value)? reorderFailure,
    TResult Function(_ReorderSuccess value)? reorderSuccess,
    TResult Function(_DeleteFailure value)? deleteFailure,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_ReorderFailure value)? reorderFailure,
    TResult Function(_ReorderSuccess value)? reorderSuccess,
    TResult Function(_DeleteFailure value)? deleteFailure,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    required TResult orElse(),
  }) {
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
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _ActionInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function(CategoryFailure categoryFailure) reorderFailure,
    required TResult Function() reorderSuccess,
    required TResult Function(CategoryFailure categoryFailure) deleteFailure,
    required TResult Function() deleteSuccess,
  }) {
    return actionInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(CategoryFailure categoryFailure)? reorderFailure,
    TResult Function()? reorderSuccess,
    TResult Function(CategoryFailure categoryFailure)? deleteFailure,
    TResult Function()? deleteSuccess,
  }) {
    return actionInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(CategoryFailure categoryFailure)? reorderFailure,
    TResult Function()? reorderSuccess,
    TResult Function(CategoryFailure categoryFailure)? deleteFailure,
    TResult Function()? deleteSuccess,
    required TResult orElse(),
  }) {
    if (actionInProgress != null) {
      return actionInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_ReorderFailure value) reorderFailure,
    required TResult Function(_ReorderSuccess value) reorderSuccess,
    required TResult Function(_DeleteFailure value) deleteFailure,
    required TResult Function(_DeleteSuccess value) deleteSuccess,
  }) {
    return actionInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_ReorderFailure value)? reorderFailure,
    TResult Function(_ReorderSuccess value)? reorderSuccess,
    TResult Function(_DeleteFailure value)? deleteFailure,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
  }) {
    return actionInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_ReorderFailure value)? reorderFailure,
    TResult Function(_ReorderSuccess value)? reorderSuccess,
    TResult Function(_DeleteFailure value)? deleteFailure,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    required TResult orElse(),
  }) {
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
    Object? categoryFailure = freezed,
  }) {
    return _then(_ReorderFailure(
      categoryFailure == freezed
          ? _value.categoryFailure
          : categoryFailure // ignore: cast_nullable_to_non_nullable
              as CategoryFailure,
    ));
  }

  @override
  $CategoryFailureCopyWith<$Res> get categoryFailure {
    return $CategoryFailureCopyWith<$Res>(_value.categoryFailure, (value) {
      return _then(_value.copyWith(categoryFailure: value));
    });
  }
}

/// @nodoc

class _$_ReorderFailure implements _ReorderFailure {
  const _$_ReorderFailure(this.categoryFailure);

  @override
  final CategoryFailure categoryFailure;

  @override
  String toString() {
    return 'CategoryActorState.reorderFailure(categoryFailure: $categoryFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ReorderFailure &&
            const DeepCollectionEquality()
                .equals(other.categoryFailure, categoryFailure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(categoryFailure));

  @JsonKey(ignore: true)
  @override
  _$ReorderFailureCopyWith<_ReorderFailure> get copyWith =>
      __$ReorderFailureCopyWithImpl<_ReorderFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function(CategoryFailure categoryFailure) reorderFailure,
    required TResult Function() reorderSuccess,
    required TResult Function(CategoryFailure categoryFailure) deleteFailure,
    required TResult Function() deleteSuccess,
  }) {
    return reorderFailure(categoryFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(CategoryFailure categoryFailure)? reorderFailure,
    TResult Function()? reorderSuccess,
    TResult Function(CategoryFailure categoryFailure)? deleteFailure,
    TResult Function()? deleteSuccess,
  }) {
    return reorderFailure?.call(categoryFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(CategoryFailure categoryFailure)? reorderFailure,
    TResult Function()? reorderSuccess,
    TResult Function(CategoryFailure categoryFailure)? deleteFailure,
    TResult Function()? deleteSuccess,
    required TResult orElse(),
  }) {
    if (reorderFailure != null) {
      return reorderFailure(categoryFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_ReorderFailure value) reorderFailure,
    required TResult Function(_ReorderSuccess value) reorderSuccess,
    required TResult Function(_DeleteFailure value) deleteFailure,
    required TResult Function(_DeleteSuccess value) deleteSuccess,
  }) {
    return reorderFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_ReorderFailure value)? reorderFailure,
    TResult Function(_ReorderSuccess value)? reorderSuccess,
    TResult Function(_DeleteFailure value)? deleteFailure,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
  }) {
    return reorderFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_ReorderFailure value)? reorderFailure,
    TResult Function(_ReorderSuccess value)? reorderSuccess,
    TResult Function(_DeleteFailure value)? deleteFailure,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    required TResult orElse(),
  }) {
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
  _$ReorderFailureCopyWith<_ReorderFailure> get copyWith =>
      throw _privateConstructorUsedError;
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
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _ReorderSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function(CategoryFailure categoryFailure) reorderFailure,
    required TResult Function() reorderSuccess,
    required TResult Function(CategoryFailure categoryFailure) deleteFailure,
    required TResult Function() deleteSuccess,
  }) {
    return reorderSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(CategoryFailure categoryFailure)? reorderFailure,
    TResult Function()? reorderSuccess,
    TResult Function(CategoryFailure categoryFailure)? deleteFailure,
    TResult Function()? deleteSuccess,
  }) {
    return reorderSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(CategoryFailure categoryFailure)? reorderFailure,
    TResult Function()? reorderSuccess,
    TResult Function(CategoryFailure categoryFailure)? deleteFailure,
    TResult Function()? deleteSuccess,
    required TResult orElse(),
  }) {
    if (reorderSuccess != null) {
      return reorderSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_ReorderFailure value) reorderFailure,
    required TResult Function(_ReorderSuccess value) reorderSuccess,
    required TResult Function(_DeleteFailure value) deleteFailure,
    required TResult Function(_DeleteSuccess value) deleteSuccess,
  }) {
    return reorderSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_ReorderFailure value)? reorderFailure,
    TResult Function(_ReorderSuccess value)? reorderSuccess,
    TResult Function(_DeleteFailure value)? deleteFailure,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
  }) {
    return reorderSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_ReorderFailure value)? reorderFailure,
    TResult Function(_ReorderSuccess value)? reorderSuccess,
    TResult Function(_DeleteFailure value)? deleteFailure,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    required TResult orElse(),
  }) {
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
    Object? categoryFailure = freezed,
  }) {
    return _then(_DeleteFailure(
      categoryFailure == freezed
          ? _value.categoryFailure
          : categoryFailure // ignore: cast_nullable_to_non_nullable
              as CategoryFailure,
    ));
  }

  @override
  $CategoryFailureCopyWith<$Res> get categoryFailure {
    return $CategoryFailureCopyWith<$Res>(_value.categoryFailure, (value) {
      return _then(_value.copyWith(categoryFailure: value));
    });
  }
}

/// @nodoc

class _$_DeleteFailure implements _DeleteFailure {
  const _$_DeleteFailure(this.categoryFailure);

  @override
  final CategoryFailure categoryFailure;

  @override
  String toString() {
    return 'CategoryActorState.deleteFailure(categoryFailure: $categoryFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DeleteFailure &&
            const DeepCollectionEquality()
                .equals(other.categoryFailure, categoryFailure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(categoryFailure));

  @JsonKey(ignore: true)
  @override
  _$DeleteFailureCopyWith<_DeleteFailure> get copyWith =>
      __$DeleteFailureCopyWithImpl<_DeleteFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function(CategoryFailure categoryFailure) reorderFailure,
    required TResult Function() reorderSuccess,
    required TResult Function(CategoryFailure categoryFailure) deleteFailure,
    required TResult Function() deleteSuccess,
  }) {
    return deleteFailure(categoryFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(CategoryFailure categoryFailure)? reorderFailure,
    TResult Function()? reorderSuccess,
    TResult Function(CategoryFailure categoryFailure)? deleteFailure,
    TResult Function()? deleteSuccess,
  }) {
    return deleteFailure?.call(categoryFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(CategoryFailure categoryFailure)? reorderFailure,
    TResult Function()? reorderSuccess,
    TResult Function(CategoryFailure categoryFailure)? deleteFailure,
    TResult Function()? deleteSuccess,
    required TResult orElse(),
  }) {
    if (deleteFailure != null) {
      return deleteFailure(categoryFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_ReorderFailure value) reorderFailure,
    required TResult Function(_ReorderSuccess value) reorderSuccess,
    required TResult Function(_DeleteFailure value) deleteFailure,
    required TResult Function(_DeleteSuccess value) deleteSuccess,
  }) {
    return deleteFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_ReorderFailure value)? reorderFailure,
    TResult Function(_ReorderSuccess value)? reorderSuccess,
    TResult Function(_DeleteFailure value)? deleteFailure,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
  }) {
    return deleteFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_ReorderFailure value)? reorderFailure,
    TResult Function(_ReorderSuccess value)? reorderSuccess,
    TResult Function(_DeleteFailure value)? deleteFailure,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    required TResult orElse(),
  }) {
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
  _$DeleteFailureCopyWith<_DeleteFailure> get copyWith =>
      throw _privateConstructorUsedError;
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
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _DeleteSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function(CategoryFailure categoryFailure) reorderFailure,
    required TResult Function() reorderSuccess,
    required TResult Function(CategoryFailure categoryFailure) deleteFailure,
    required TResult Function() deleteSuccess,
  }) {
    return deleteSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(CategoryFailure categoryFailure)? reorderFailure,
    TResult Function()? reorderSuccess,
    TResult Function(CategoryFailure categoryFailure)? deleteFailure,
    TResult Function()? deleteSuccess,
  }) {
    return deleteSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(CategoryFailure categoryFailure)? reorderFailure,
    TResult Function()? reorderSuccess,
    TResult Function(CategoryFailure categoryFailure)? deleteFailure,
    TResult Function()? deleteSuccess,
    required TResult orElse(),
  }) {
    if (deleteSuccess != null) {
      return deleteSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_ReorderFailure value) reorderFailure,
    required TResult Function(_ReorderSuccess value) reorderSuccess,
    required TResult Function(_DeleteFailure value) deleteFailure,
    required TResult Function(_DeleteSuccess value) deleteSuccess,
  }) {
    return deleteSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_ReorderFailure value)? reorderFailure,
    TResult Function(_ReorderSuccess value)? reorderSuccess,
    TResult Function(_DeleteFailure value)? deleteFailure,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
  }) {
    return deleteSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_ReorderFailure value)? reorderFailure,
    TResult Function(_ReorderSuccess value)? reorderSuccess,
    TResult Function(_DeleteFailure value)? deleteFailure,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    required TResult orElse(),
  }) {
    if (deleteSuccess != null) {
      return deleteSuccess(this);
    }
    return orElse();
  }
}

abstract class _DeleteSuccess implements CategoryActorState {
  const factory _DeleteSuccess() = _$_DeleteSuccess;
}
