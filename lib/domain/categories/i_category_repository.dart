import 'category.dart';

abstract class ICategoryRepository {
  Stream<List<Category>> watchAll();
  Future<void> create(Category category);
  Future<void> update(Category category);
  Future<void> delete(Category category);
  Future<void> reorder(List<Category> categories);
}