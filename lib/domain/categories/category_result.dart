import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:travel_list/domain/categories/category.dart';
import 'package:travel_list/domain/categories/category_failure.dart';

part 'category_result.freezed.dart';

@freezed
class CategoryResult with _$CategoryResult {
    // Parameter categories is nullable to make success constructor usable for all kind of success CRUD operations on Category
    const factory CategoryResult.success({List<Category>? categories}) = _Success;
    const factory CategoryResult.failure({required CategoryFailure failure}) = _Failure;
}
