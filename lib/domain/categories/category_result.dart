import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:travel_list/domain/categories/category.dart';
import 'package:travel_list/domain/categories/category_failure.dart';

part 'category_result.freezed.dart';

@freezed
abstract class CategoryResult with _$CategoryResult {
    const factory CategoryResult.success({Category category, List<Category> categories}) = _Success;
    const factory CategoryResult.failure({@required CategoryFailure failure}) = _Failure;
}