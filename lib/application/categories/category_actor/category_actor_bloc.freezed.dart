// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_actor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
    TResult? Function(List<Category> categories)? reorderFinished,
    TResult? Function(Category category)? deleted,
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
    TResult? Function(_ReorderFinished value)? reorderFinished,
    TResult? Function(_Deleted value)? deleted,
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
      _$CategoryActorEventCopyWithImpl<$Res, CategoryActorEvent>;
}

/// @nodoc
class _$CategoryActorEventCopyWithImpl<$Res, $Val extends CategoryActorEvent>
    implements $CategoryActorEventCopyWith<$Res> {
  _$CategoryActorEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ReorderFinishedImplCopyWith<$Res> {
  factory _$$ReorderFinishedImplCopyWith(_$ReorderFinishedImpl value,
          $Res Function(_$ReorderFinishedImpl) then) =
      __$$ReorderFinishedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Category> categories});
}

/// @nodoc
class __$$ReorderFinishedImplCopyWithImpl<$Res>
    extends _$CategoryActorEventCopyWithImpl<$Res, _$ReorderFinishedImpl>
    implements _$$ReorderFinishedImplCopyWith<$Res> {
  __$$ReorderFinishedImplCopyWithImpl(
      _$ReorderFinishedImpl _value, $Res Function(_$ReorderFinishedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = null,
  }) {
    return _then(_$ReorderFinishedImpl(
      null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<Category>,
    ));
  }
}

/// @nodoc

class _$ReorderFinishedImpl implements _ReorderFinished {
  const _$ReorderFinishedImpl(final List<Category> categories)
      : _categories = categories;

  final List<Category> _categories;
  @override
  List<Category> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  @override
  String toString() {
    return 'CategoryActorEvent.reorderFinished(categories: $categories)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReorderFinishedImpl &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_categories));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReorderFinishedImplCopyWith<_$ReorderFinishedImpl> get copyWith =>
      __$$ReorderFinishedImplCopyWithImpl<_$ReorderFinishedImpl>(
          this, _$identity);

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
    TResult? Function(List<Category> categories)? reorderFinished,
    TResult? Function(Category category)? deleted,
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
    TResult? Function(_ReorderFinished value)? reorderFinished,
    TResult? Function(_Deleted value)? deleted,
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
  const factory _ReorderFinished(final List<Category> categories) =
      _$ReorderFinishedImpl;

  List<Category> get categories;
  @JsonKey(ignore: true)
  _$$ReorderFinishedImplCopyWith<_$ReorderFinishedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeletedImplCopyWith<$Res> {
  factory _$$DeletedImplCopyWith(
          _$DeletedImpl value, $Res Function(_$DeletedImpl) then) =
      __$$DeletedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Category category});

  $CategoryCopyWith<$Res> get category;
}

/// @nodoc
class __$$DeletedImplCopyWithImpl<$Res>
    extends _$CategoryActorEventCopyWithImpl<$Res, _$DeletedImpl>
    implements _$$DeletedImplCopyWith<$Res> {
  __$$DeletedImplCopyWithImpl(
      _$DeletedImpl _value, $Res Function(_$DeletedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
  }) {
    return _then(_$DeletedImpl(
      null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as Category,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CategoryCopyWith<$Res> get category {
    return $CategoryCopyWith<$Res>(_value.category, (value) {
      return _then(_value.copyWith(category: value));
    });
  }
}

/// @nodoc

class _$DeletedImpl implements _Deleted {
  const _$DeletedImpl(this.category);

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
            other is _$DeletedImpl &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @override
  int get hashCode => Object.hash(runtimeType, category);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeletedImplCopyWith<_$DeletedImpl> get copyWith =>
      __$$DeletedImplCopyWithImpl<_$DeletedImpl>(this, _$identity);

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
    TResult? Function(List<Category> categories)? reorderFinished,
    TResult? Function(Category category)? deleted,
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
    TResult? Function(_ReorderFinished value)? reorderFinished,
    TResult? Function(_Deleted value)? deleted,
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
  const factory _Deleted(final Category category) = _$DeletedImpl;

  Category get category;
  @JsonKey(ignore: true)
  _$$DeletedImplCopyWith<_$DeletedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

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
    TResult? Function()? initial,
    TResult? Function()? actionInProgress,
    TResult? Function(CategoryFailure categoryFailure)? reorderFailure,
    TResult? Function()? reorderSuccess,
    TResult? Function(CategoryFailure categoryFailure)? deleteFailure,
    TResult? Function()? deleteSuccess,
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
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ActionInProgress value)? actionInProgress,
    TResult? Function(_ReorderFailure value)? reorderFailure,
    TResult? Function(_ReorderSuccess value)? reorderSuccess,
    TResult? Function(_DeleteFailure value)? deleteFailure,
    TResult? Function(_DeleteSuccess value)? deleteSuccess,
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
      _$CategoryActorStateCopyWithImpl<$Res, CategoryActorState>;
}

/// @nodoc
class _$CategoryActorStateCopyWithImpl<$Res, $Val extends CategoryActorState>
    implements $CategoryActorStateCopyWith<$Res> {
  _$CategoryActorStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$CategoryActorStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'CategoryActorState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
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
    TResult? Function()? initial,
    TResult? Function()? actionInProgress,
    TResult? Function(CategoryFailure categoryFailure)? reorderFailure,
    TResult? Function()? reorderSuccess,
    TResult? Function(CategoryFailure categoryFailure)? deleteFailure,
    TResult? Function()? deleteSuccess,
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
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ActionInProgress value)? actionInProgress,
    TResult? Function(_ReorderFailure value)? reorderFailure,
    TResult? Function(_ReorderSuccess value)? reorderSuccess,
    TResult? Function(_DeleteFailure value)? deleteFailure,
    TResult? Function(_DeleteSuccess value)? deleteSuccess,
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
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$ActionInProgressImplCopyWith<$Res> {
  factory _$$ActionInProgressImplCopyWith(_$ActionInProgressImpl value,
          $Res Function(_$ActionInProgressImpl) then) =
      __$$ActionInProgressImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ActionInProgressImplCopyWithImpl<$Res>
    extends _$CategoryActorStateCopyWithImpl<$Res, _$ActionInProgressImpl>
    implements _$$ActionInProgressImplCopyWith<$Res> {
  __$$ActionInProgressImplCopyWithImpl(_$ActionInProgressImpl _value,
      $Res Function(_$ActionInProgressImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ActionInProgressImpl implements _ActionInProgress {
  const _$ActionInProgressImpl();

  @override
  String toString() {
    return 'CategoryActorState.actionInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ActionInProgressImpl);
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
    TResult? Function()? initial,
    TResult? Function()? actionInProgress,
    TResult? Function(CategoryFailure categoryFailure)? reorderFailure,
    TResult? Function()? reorderSuccess,
    TResult? Function(CategoryFailure categoryFailure)? deleteFailure,
    TResult? Function()? deleteSuccess,
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
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ActionInProgress value)? actionInProgress,
    TResult? Function(_ReorderFailure value)? reorderFailure,
    TResult? Function(_ReorderSuccess value)? reorderSuccess,
    TResult? Function(_DeleteFailure value)? deleteFailure,
    TResult? Function(_DeleteSuccess value)? deleteSuccess,
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
  const factory _ActionInProgress() = _$ActionInProgressImpl;
}

/// @nodoc
abstract class _$$ReorderFailureImplCopyWith<$Res> {
  factory _$$ReorderFailureImplCopyWith(_$ReorderFailureImpl value,
          $Res Function(_$ReorderFailureImpl) then) =
      __$$ReorderFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CategoryFailure categoryFailure});

  $CategoryFailureCopyWith<$Res> get categoryFailure;
}

/// @nodoc
class __$$ReorderFailureImplCopyWithImpl<$Res>
    extends _$CategoryActorStateCopyWithImpl<$Res, _$ReorderFailureImpl>
    implements _$$ReorderFailureImplCopyWith<$Res> {
  __$$ReorderFailureImplCopyWithImpl(
      _$ReorderFailureImpl _value, $Res Function(_$ReorderFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryFailure = null,
  }) {
    return _then(_$ReorderFailureImpl(
      null == categoryFailure
          ? _value.categoryFailure
          : categoryFailure // ignore: cast_nullable_to_non_nullable
              as CategoryFailure,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CategoryFailureCopyWith<$Res> get categoryFailure {
    return $CategoryFailureCopyWith<$Res>(_value.categoryFailure, (value) {
      return _then(_value.copyWith(categoryFailure: value));
    });
  }
}

/// @nodoc

class _$ReorderFailureImpl implements _ReorderFailure {
  const _$ReorderFailureImpl(this.categoryFailure);

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
            other is _$ReorderFailureImpl &&
            (identical(other.categoryFailure, categoryFailure) ||
                other.categoryFailure == categoryFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, categoryFailure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReorderFailureImplCopyWith<_$ReorderFailureImpl> get copyWith =>
      __$$ReorderFailureImplCopyWithImpl<_$ReorderFailureImpl>(
          this, _$identity);

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
    TResult? Function()? initial,
    TResult? Function()? actionInProgress,
    TResult? Function(CategoryFailure categoryFailure)? reorderFailure,
    TResult? Function()? reorderSuccess,
    TResult? Function(CategoryFailure categoryFailure)? deleteFailure,
    TResult? Function()? deleteSuccess,
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
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ActionInProgress value)? actionInProgress,
    TResult? Function(_ReorderFailure value)? reorderFailure,
    TResult? Function(_ReorderSuccess value)? reorderSuccess,
    TResult? Function(_DeleteFailure value)? deleteFailure,
    TResult? Function(_DeleteSuccess value)? deleteSuccess,
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
  const factory _ReorderFailure(final CategoryFailure categoryFailure) =
      _$ReorderFailureImpl;

  CategoryFailure get categoryFailure;
  @JsonKey(ignore: true)
  _$$ReorderFailureImplCopyWith<_$ReorderFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReorderSuccessImplCopyWith<$Res> {
  factory _$$ReorderSuccessImplCopyWith(_$ReorderSuccessImpl value,
          $Res Function(_$ReorderSuccessImpl) then) =
      __$$ReorderSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ReorderSuccessImplCopyWithImpl<$Res>
    extends _$CategoryActorStateCopyWithImpl<$Res, _$ReorderSuccessImpl>
    implements _$$ReorderSuccessImplCopyWith<$Res> {
  __$$ReorderSuccessImplCopyWithImpl(
      _$ReorderSuccessImpl _value, $Res Function(_$ReorderSuccessImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ReorderSuccessImpl implements _ReorderSuccess {
  const _$ReorderSuccessImpl();

  @override
  String toString() {
    return 'CategoryActorState.reorderSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ReorderSuccessImpl);
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
    TResult? Function()? initial,
    TResult? Function()? actionInProgress,
    TResult? Function(CategoryFailure categoryFailure)? reorderFailure,
    TResult? Function()? reorderSuccess,
    TResult? Function(CategoryFailure categoryFailure)? deleteFailure,
    TResult? Function()? deleteSuccess,
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
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ActionInProgress value)? actionInProgress,
    TResult? Function(_ReorderFailure value)? reorderFailure,
    TResult? Function(_ReorderSuccess value)? reorderSuccess,
    TResult? Function(_DeleteFailure value)? deleteFailure,
    TResult? Function(_DeleteSuccess value)? deleteSuccess,
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
  const factory _ReorderSuccess() = _$ReorderSuccessImpl;
}

/// @nodoc
abstract class _$$DeleteFailureImplCopyWith<$Res> {
  factory _$$DeleteFailureImplCopyWith(
          _$DeleteFailureImpl value, $Res Function(_$DeleteFailureImpl) then) =
      __$$DeleteFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CategoryFailure categoryFailure});

  $CategoryFailureCopyWith<$Res> get categoryFailure;
}

/// @nodoc
class __$$DeleteFailureImplCopyWithImpl<$Res>
    extends _$CategoryActorStateCopyWithImpl<$Res, _$DeleteFailureImpl>
    implements _$$DeleteFailureImplCopyWith<$Res> {
  __$$DeleteFailureImplCopyWithImpl(
      _$DeleteFailureImpl _value, $Res Function(_$DeleteFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryFailure = null,
  }) {
    return _then(_$DeleteFailureImpl(
      null == categoryFailure
          ? _value.categoryFailure
          : categoryFailure // ignore: cast_nullable_to_non_nullable
              as CategoryFailure,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CategoryFailureCopyWith<$Res> get categoryFailure {
    return $CategoryFailureCopyWith<$Res>(_value.categoryFailure, (value) {
      return _then(_value.copyWith(categoryFailure: value));
    });
  }
}

/// @nodoc

class _$DeleteFailureImpl implements _DeleteFailure {
  const _$DeleteFailureImpl(this.categoryFailure);

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
            other is _$DeleteFailureImpl &&
            (identical(other.categoryFailure, categoryFailure) ||
                other.categoryFailure == categoryFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, categoryFailure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteFailureImplCopyWith<_$DeleteFailureImpl> get copyWith =>
      __$$DeleteFailureImplCopyWithImpl<_$DeleteFailureImpl>(this, _$identity);

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
    TResult? Function()? initial,
    TResult? Function()? actionInProgress,
    TResult? Function(CategoryFailure categoryFailure)? reorderFailure,
    TResult? Function()? reorderSuccess,
    TResult? Function(CategoryFailure categoryFailure)? deleteFailure,
    TResult? Function()? deleteSuccess,
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
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ActionInProgress value)? actionInProgress,
    TResult? Function(_ReorderFailure value)? reorderFailure,
    TResult? Function(_ReorderSuccess value)? reorderSuccess,
    TResult? Function(_DeleteFailure value)? deleteFailure,
    TResult? Function(_DeleteSuccess value)? deleteSuccess,
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
  const factory _DeleteFailure(final CategoryFailure categoryFailure) =
      _$DeleteFailureImpl;

  CategoryFailure get categoryFailure;
  @JsonKey(ignore: true)
  _$$DeleteFailureImplCopyWith<_$DeleteFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteSuccessImplCopyWith<$Res> {
  factory _$$DeleteSuccessImplCopyWith(
          _$DeleteSuccessImpl value, $Res Function(_$DeleteSuccessImpl) then) =
      __$$DeleteSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DeleteSuccessImplCopyWithImpl<$Res>
    extends _$CategoryActorStateCopyWithImpl<$Res, _$DeleteSuccessImpl>
    implements _$$DeleteSuccessImplCopyWith<$Res> {
  __$$DeleteSuccessImplCopyWithImpl(
      _$DeleteSuccessImpl _value, $Res Function(_$DeleteSuccessImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DeleteSuccessImpl implements _DeleteSuccess {
  const _$DeleteSuccessImpl();

  @override
  String toString() {
    return 'CategoryActorState.deleteSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DeleteSuccessImpl);
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
    TResult? Function()? initial,
    TResult? Function()? actionInProgress,
    TResult? Function(CategoryFailure categoryFailure)? reorderFailure,
    TResult? Function()? reorderSuccess,
    TResult? Function(CategoryFailure categoryFailure)? deleteFailure,
    TResult? Function()? deleteSuccess,
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
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ActionInProgress value)? actionInProgress,
    TResult? Function(_ReorderFailure value)? reorderFailure,
    TResult? Function(_ReorderSuccess value)? reorderSuccess,
    TResult? Function(_DeleteFailure value)? deleteFailure,
    TResult? Function(_DeleteSuccess value)? deleteSuccess,
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
  const factory _DeleteSuccess() = _$DeleteSuccessImpl;
}
