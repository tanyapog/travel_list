import 'package:travel_list/domain/categories/category_result.dart';

import 'category.dart';

abstract class ICategoryRepository {
  Stream<CategoryResult> watchAll();
  Future<CategoryResult> create(Category category);
  Future<CategoryResult> update(Category category);
  Future<CategoryResult> delete(Category category);
  Future<CategoryResult> reorder(List<Category> categories);
}