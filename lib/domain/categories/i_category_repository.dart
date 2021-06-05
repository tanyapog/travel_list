import 'category.dart';

abstract class ICategoryRepository {
  Stream<List<Category>> watchAll();
  //Stream<Either<CategoryFailure, List<Category>>> watchAll1();
  Future<void> create(Category category);
  Future<void> update(Category category);
  Future<void> delete(Category category);
}