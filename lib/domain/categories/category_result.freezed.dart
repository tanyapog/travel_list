// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'category_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$CategoryResultTearOff {
  const _$CategoryResultTearOff();

// ignore: unused_element
  _Success success({Category category, List<Category> categories}) {
    return _Success(
      category: category,
      categories: categories,
    );
  }

// ignore: unused_element
  _Failure failure({@required CategoryFailure failure}) {
    return _Failure(
      failure: failure,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $CategoryResult = _$CategoryResultTearOff();

/// @nodoc
mixin _$CategoryResult {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult success(Category category, List<Category> categories),
    @required TResult failure(CategoryFailure failure),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult success(Category category, List<Category> categories),
    TResult failure(CategoryFailure failure),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult success(_Success value),
    @required TResult failure(_Failure value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult success(_Success value),
    TResult failure(_Failure value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $CategoryResultCopyWith<$Res> {
  factory $CategoryResultCopyWith(
          CategoryResult value, $Res Function(CategoryResult) then) =
      _$CategoryResultCopyWithImpl<$Res>;
}

/// @nodoc
class _$CategoryResultCopyWithImpl<$Res>
    implements $CategoryResultCopyWith<$Res> {
  _$CategoryResultCopyWithImpl(this._value, this._then);

  final CategoryResult _value;
  // ignore: unused_field
  final $Res Function(CategoryResult) _then;
}

/// @nodoc
abstract class _$SuccessCopyWith<$Res> {
  factory _$SuccessCopyWith(_Success value, $Res Function(_Success) then) =
      __$SuccessCopyWithImpl<$Res>;
  $Res call({Category category, List<Category> categories});

  $CategoryCopyWith<$Res> get category;
}

/// @nodoc
class __$SuccessCopyWithImpl<$Res> extends _$CategoryResultCopyWithImpl<$Res>
    implements _$SuccessCopyWith<$Res> {
  __$SuccessCopyWithImpl(_Success _value, $Res Function(_Success) _then)
      : super(_value, (v) => _then(v as _Success));

  @override
  _Success get _value => super._value as _Success;

  @override
  $Res call({
    Object category = freezed,
    Object categories = freezed,
  }) {
    return _then(_Success(
      category: category == freezed ? _value.category : category as Category,
      categories: categories == freezed
          ? _value.categories
          : categories as List<Category>,
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
class _$_Success implements _Success {
  const _$_Success({this.category, this.categories});

  @override
  final Category category;
  @override
  final List<Category> categories;

  @override
  String toString() {
    return 'CategoryResult.success(category: $category, categories: $categories)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Success &&
            (identical(other.category, category) ||
                const DeepCollectionEquality()
                    .equals(other.category, category)) &&
            (identical(other.categories, categories) ||
                const DeepCollectionEquality()
                    .equals(other.categories, categories)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(category) ^
      const DeepCollectionEquality().hash(categories);

  @JsonKey(ignore: true)
  @override
  _$SuccessCopyWith<_Success> get copyWith =>
      __$SuccessCopyWithImpl<_Success>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult success(Category category, List<Category> categories),
    @required TResult failure(CategoryFailure failure),
  }) {
    assert(success != null);
    assert(failure != null);
    return success(category, categories);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult success(Category category, List<Category> categories),
    TResult failure(CategoryFailure failure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(category, categories);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult success(_Success value),
    @required TResult failure(_Failure value),
  }) {
    assert(success != null);
    assert(failure != null);
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult success(_Success value),
    TResult failure(_Failure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements CategoryResult {
  const factory _Success({Category category, List<Category> categories}) =
      _$_Success;

  Category get category;
  List<Category> get categories;
  @JsonKey(ignore: true)
  _$SuccessCopyWith<_Success> get copyWith;
}

/// @nodoc
abstract class _$FailureCopyWith<$Res> {
  factory _$FailureCopyWith(_Failure value, $Res Function(_Failure) then) =
      __$FailureCopyWithImpl<$Res>;
  $Res call({CategoryFailure failure});

  $CategoryFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$FailureCopyWithImpl<$Res> extends _$CategoryResultCopyWithImpl<$Res>
    implements _$FailureCopyWith<$Res> {
  __$FailureCopyWithImpl(_Failure _value, $Res Function(_Failure) _then)
      : super(_value, (v) => _then(v as _Failure));

  @override
  _Failure get _value => super._value as _Failure;

  @override
  $Res call({
    Object failure = freezed,
  }) {
    return _then(_Failure(
      failure: failure == freezed ? _value.failure : failure as CategoryFailure,
    ));
  }

  @override
  $CategoryFailureCopyWith<$Res> get failure {
    if (_value.failure == null) {
      return null;
    }
    return $CategoryFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc
class _$_Failure implements _Failure {
  const _$_Failure({@required this.failure}) : assert(failure != null);

  @override
  final CategoryFailure failure;

  @override
  String toString() {
    return 'CategoryResult.failure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Failure &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @JsonKey(ignore: true)
  @override
  _$FailureCopyWith<_Failure> get copyWith =>
      __$FailureCopyWithImpl<_Failure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult success(Category category, List<Category> categories),
    @required TResult failure(CategoryFailure failure),
  }) {
    assert(success != null);
    assert(failure != null);
    return failure(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult success(Category category, List<Category> categories),
    TResult failure(CategoryFailure failure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (failure != null) {
      return failure(this.failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult success(_Success value),
    @required TResult failure(_Failure value),
  }) {
    assert(success != null);
    assert(failure != null);
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult success(_Success value),
    TResult failure(_Failure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements CategoryResult {
  const factory _Failure({@required CategoryFailure failure}) = _$_Failure;

  CategoryFailure get failure;
  @JsonKey(ignore: true)
  _$FailureCopyWith<_Failure> get copyWith;
}
