// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CategoryFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Category initialCategory) initialized,
    required TResult Function(String nameStr) nameChanged,
    required TResult Function() saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Category initialCategory)? initialized,
    TResult? Function(String nameStr)? nameChanged,
    TResult? Function()? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Category initialCategory)? initialized,
    TResult Function(String nameStr)? nameChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_Saved value) saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_Saved value)? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryFormEventCopyWith<$Res> {
  factory $CategoryFormEventCopyWith(
          CategoryFormEvent value, $Res Function(CategoryFormEvent) then) =
      _$CategoryFormEventCopyWithImpl<$Res, CategoryFormEvent>;
}

/// @nodoc
class _$CategoryFormEventCopyWithImpl<$Res, $Val extends CategoryFormEvent>
    implements $CategoryFormEventCopyWith<$Res> {
  _$CategoryFormEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitializedImplCopyWith<$Res> {
  factory _$$InitializedImplCopyWith(
          _$InitializedImpl value, $Res Function(_$InitializedImpl) then) =
      __$$InitializedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Category initialCategory});

  $CategoryCopyWith<$Res> get initialCategory;
}

/// @nodoc
class __$$InitializedImplCopyWithImpl<$Res>
    extends _$CategoryFormEventCopyWithImpl<$Res, _$InitializedImpl>
    implements _$$InitializedImplCopyWith<$Res> {
  __$$InitializedImplCopyWithImpl(
      _$InitializedImpl _value, $Res Function(_$InitializedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? initialCategory = null,
  }) {
    return _then(_$InitializedImpl(
      null == initialCategory
          ? _value.initialCategory
          : initialCategory // ignore: cast_nullable_to_non_nullable
              as Category,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CategoryCopyWith<$Res> get initialCategory {
    return $CategoryCopyWith<$Res>(_value.initialCategory, (value) {
      return _then(_value.copyWith(initialCategory: value));
    });
  }
}

/// @nodoc

class _$InitializedImpl implements _Initialized {
  const _$InitializedImpl(this.initialCategory);

  @override
  final Category initialCategory;

  @override
  String toString() {
    return 'CategoryFormEvent.initialized(initialCategory: $initialCategory)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitializedImpl &&
            (identical(other.initialCategory, initialCategory) ||
                other.initialCategory == initialCategory));
  }

  @override
  int get hashCode => Object.hash(runtimeType, initialCategory);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitializedImplCopyWith<_$InitializedImpl> get copyWith =>
      __$$InitializedImplCopyWithImpl<_$InitializedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Category initialCategory) initialized,
    required TResult Function(String nameStr) nameChanged,
    required TResult Function() saved,
  }) {
    return initialized(initialCategory);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Category initialCategory)? initialized,
    TResult? Function(String nameStr)? nameChanged,
    TResult? Function()? saved,
  }) {
    return initialized?.call(initialCategory);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Category initialCategory)? initialized,
    TResult Function(String nameStr)? nameChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(initialCategory);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_Saved value)? saved,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements CategoryFormEvent {
  const factory _Initialized(final Category initialCategory) =
      _$InitializedImpl;

  Category get initialCategory;
  @JsonKey(ignore: true)
  _$$InitializedImplCopyWith<_$InitializedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NameChangedImplCopyWith<$Res> {
  factory _$$NameChangedImplCopyWith(
          _$NameChangedImpl value, $Res Function(_$NameChangedImpl) then) =
      __$$NameChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String nameStr});
}

/// @nodoc
class __$$NameChangedImplCopyWithImpl<$Res>
    extends _$CategoryFormEventCopyWithImpl<$Res, _$NameChangedImpl>
    implements _$$NameChangedImplCopyWith<$Res> {
  __$$NameChangedImplCopyWithImpl(
      _$NameChangedImpl _value, $Res Function(_$NameChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nameStr = null,
  }) {
    return _then(_$NameChangedImpl(
      null == nameStr
          ? _value.nameStr
          : nameStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NameChangedImpl implements _NameChanged {
  const _$NameChangedImpl(this.nameStr);

  @override
  final String nameStr;

  @override
  String toString() {
    return 'CategoryFormEvent.nameChanged(nameStr: $nameStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NameChangedImpl &&
            (identical(other.nameStr, nameStr) || other.nameStr == nameStr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, nameStr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NameChangedImplCopyWith<_$NameChangedImpl> get copyWith =>
      __$$NameChangedImplCopyWithImpl<_$NameChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Category initialCategory) initialized,
    required TResult Function(String nameStr) nameChanged,
    required TResult Function() saved,
  }) {
    return nameChanged(nameStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Category initialCategory)? initialized,
    TResult? Function(String nameStr)? nameChanged,
    TResult? Function()? saved,
  }) {
    return nameChanged?.call(nameStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Category initialCategory)? initialized,
    TResult Function(String nameStr)? nameChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(nameStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return nameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_Saved value)? saved,
  }) {
    return nameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(this);
    }
    return orElse();
  }
}

abstract class _NameChanged implements CategoryFormEvent {
  const factory _NameChanged(final String nameStr) = _$NameChangedImpl;

  String get nameStr;
  @JsonKey(ignore: true)
  _$$NameChangedImplCopyWith<_$NameChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SavedImplCopyWith<$Res> {
  factory _$$SavedImplCopyWith(
          _$SavedImpl value, $Res Function(_$SavedImpl) then) =
      __$$SavedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SavedImplCopyWithImpl<$Res>
    extends _$CategoryFormEventCopyWithImpl<$Res, _$SavedImpl>
    implements _$$SavedImplCopyWith<$Res> {
  __$$SavedImplCopyWithImpl(
      _$SavedImpl _value, $Res Function(_$SavedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SavedImpl implements _Saved {
  const _$SavedImpl();

  @override
  String toString() {
    return 'CategoryFormEvent.saved()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SavedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Category initialCategory) initialized,
    required TResult Function(String nameStr) nameChanged,
    required TResult Function() saved,
  }) {
    return saved();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Category initialCategory)? initialized,
    TResult? Function(String nameStr)? nameChanged,
    TResult? Function()? saved,
  }) {
    return saved?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Category initialCategory)? initialized,
    TResult Function(String nameStr)? nameChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return saved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_Saved value)? saved,
  }) {
    return saved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }
}

abstract class _Saved implements CategoryFormEvent {
  const factory _Saved() = _$SavedImpl;
}

/// @nodoc
mixin _$CategoryFormState {
  Category get category => throw _privateConstructorUsedError;
  bool get isEditing =>
      throw _privateConstructorUsedError; // is this editing an existing category or creating a new one
  bool get isSaving => throw _privateConstructorUsedError;
  CategoryFailure? get categoryFailure => throw _privateConstructorUsedError;
  bool? get savedSuccessfully => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CategoryFormStateCopyWith<CategoryFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryFormStateCopyWith<$Res> {
  factory $CategoryFormStateCopyWith(
          CategoryFormState value, $Res Function(CategoryFormState) then) =
      _$CategoryFormStateCopyWithImpl<$Res, CategoryFormState>;
  @useResult
  $Res call(
      {Category category,
      bool isEditing,
      bool isSaving,
      CategoryFailure? categoryFailure,
      bool? savedSuccessfully});

  $CategoryCopyWith<$Res> get category;
  $CategoryFailureCopyWith<$Res>? get categoryFailure;
}

/// @nodoc
class _$CategoryFormStateCopyWithImpl<$Res, $Val extends CategoryFormState>
    implements $CategoryFormStateCopyWith<$Res> {
  _$CategoryFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
    Object? isEditing = null,
    Object? isSaving = null,
    Object? categoryFailure = freezed,
    Object? savedSuccessfully = freezed,
  }) {
    return _then(_value.copyWith(
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as Category,
      isEditing: null == isEditing
          ? _value.isEditing
          : isEditing // ignore: cast_nullable_to_non_nullable
              as bool,
      isSaving: null == isSaving
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      categoryFailure: freezed == categoryFailure
          ? _value.categoryFailure
          : categoryFailure // ignore: cast_nullable_to_non_nullable
              as CategoryFailure?,
      savedSuccessfully: freezed == savedSuccessfully
          ? _value.savedSuccessfully
          : savedSuccessfully // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CategoryCopyWith<$Res> get category {
    return $CategoryCopyWith<$Res>(_value.category, (value) {
      return _then(_value.copyWith(category: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CategoryFailureCopyWith<$Res>? get categoryFailure {
    if (_value.categoryFailure == null) {
      return null;
    }

    return $CategoryFailureCopyWith<$Res>(_value.categoryFailure!, (value) {
      return _then(_value.copyWith(categoryFailure: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CategoryFormStateImplCopyWith<$Res>
    implements $CategoryFormStateCopyWith<$Res> {
  factory _$$CategoryFormStateImplCopyWith(_$CategoryFormStateImpl value,
          $Res Function(_$CategoryFormStateImpl) then) =
      __$$CategoryFormStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Category category,
      bool isEditing,
      bool isSaving,
      CategoryFailure? categoryFailure,
      bool? savedSuccessfully});

  @override
  $CategoryCopyWith<$Res> get category;
  @override
  $CategoryFailureCopyWith<$Res>? get categoryFailure;
}

/// @nodoc
class __$$CategoryFormStateImplCopyWithImpl<$Res>
    extends _$CategoryFormStateCopyWithImpl<$Res, _$CategoryFormStateImpl>
    implements _$$CategoryFormStateImplCopyWith<$Res> {
  __$$CategoryFormStateImplCopyWithImpl(_$CategoryFormStateImpl _value,
      $Res Function(_$CategoryFormStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
    Object? isEditing = null,
    Object? isSaving = null,
    Object? categoryFailure = freezed,
    Object? savedSuccessfully = freezed,
  }) {
    return _then(_$CategoryFormStateImpl(
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as Category,
      isEditing: null == isEditing
          ? _value.isEditing
          : isEditing // ignore: cast_nullable_to_non_nullable
              as bool,
      isSaving: null == isSaving
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      categoryFailure: freezed == categoryFailure
          ? _value.categoryFailure
          : categoryFailure // ignore: cast_nullable_to_non_nullable
              as CategoryFailure?,
      savedSuccessfully: freezed == savedSuccessfully
          ? _value.savedSuccessfully
          : savedSuccessfully // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$CategoryFormStateImpl implements _CategoryFormState {
  const _$CategoryFormStateImpl(
      {required this.category,
      required this.isEditing,
      required this.isSaving,
      this.categoryFailure,
      this.savedSuccessfully});

  @override
  final Category category;
  @override
  final bool isEditing;
// is this editing an existing category or creating a new one
  @override
  final bool isSaving;
  @override
  final CategoryFailure? categoryFailure;
  @override
  final bool? savedSuccessfully;

  @override
  String toString() {
    return 'CategoryFormState(category: $category, isEditing: $isEditing, isSaving: $isSaving, categoryFailure: $categoryFailure, savedSuccessfully: $savedSuccessfully)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryFormStateImpl &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.isEditing, isEditing) ||
                other.isEditing == isEditing) &&
            (identical(other.isSaving, isSaving) ||
                other.isSaving == isSaving) &&
            (identical(other.categoryFailure, categoryFailure) ||
                other.categoryFailure == categoryFailure) &&
            (identical(other.savedSuccessfully, savedSuccessfully) ||
                other.savedSuccessfully == savedSuccessfully));
  }

  @override
  int get hashCode => Object.hash(runtimeType, category, isEditing, isSaving,
      categoryFailure, savedSuccessfully);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryFormStateImplCopyWith<_$CategoryFormStateImpl> get copyWith =>
      __$$CategoryFormStateImplCopyWithImpl<_$CategoryFormStateImpl>(
          this, _$identity);
}

abstract class _CategoryFormState implements CategoryFormState {
  const factory _CategoryFormState(
      {required final Category category,
      required final bool isEditing,
      required final bool isSaving,
      final CategoryFailure? categoryFailure,
      final bool? savedSuccessfully}) = _$CategoryFormStateImpl;

  @override
  Category get category;
  @override
  bool get isEditing;
  @override // is this editing an existing category or creating a new one
  bool get isSaving;
  @override
  CategoryFailure? get categoryFailure;
  @override
  bool? get savedSuccessfully;
  @override
  @JsonKey(ignore: true)
  _$$CategoryFormStateImplCopyWith<_$CategoryFormStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
