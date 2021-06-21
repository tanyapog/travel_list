import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';
import 'package:travel_list/domain/categories/category.dart';
import 'package:travel_list/domain/categories/category_failure.dart';
import 'package:travel_list/domain/categories/category_result.dart';
import 'package:travel_list/domain/categories/i_category_repository.dart';
import 'package:travel_list/infrastructure/categories/category_dtos.dart';
import 'package:travel_list/infrastructure/core/firestore_helpers.dart';

@LazySingleton(as: ICategoryRepository)
class CategoryRepository implements ICategoryRepository {
  final FirebaseFirestore _firestore;

  CategoryRepository(this._firestore);

  @override
  Stream<CategoryResult> watchAll() async* {
    final userDoc = await _firestore.userDocument();
    yield* userDoc.categoryCollection
      .orderBy('position')
      .snapshots()
      .map((snapshot) => CategoryResult.success(
        categories: snapshot.docs
          .map((doc) => CategoryDto.fromFirestore(doc).toDomain()).toList(),))
      .onErrorReturnWith((e) => CategoryResult.failure(
        failure: CategoryFailure.fromError(e)));
  }

  @override
  Future<CategoryResult> create(Category category) async {
    try {
      final userDoc = await _firestore.userDocument();
      final categoryDto =  CategoryDto.fromDomain(category);
      userDoc.categoryCollection.add(categoryDto.toJson());
      return const CategoryResult.success();
    } catch (e) {
      return CategoryResult.failure(failure: CategoryFailure.fromError(e));
    }
  }

  @override
  Future<CategoryResult> update(Category category) async {
    try {
      final userDoc = await _firestore.userDocument();
      final categoryDto =  CategoryDto.fromDomain(category);
      await userDoc.categoryCollection.doc(categoryDto.id).update(categoryDto.toJson());
      return const CategoryResult.success();
    } catch (e) {
      return CategoryResult.failure(failure: CategoryFailure.fromError(e));
    }
  }

  @override
  Future<CategoryResult> delete(Category category) async {
    try {
      final userDoc = await _firestore.userDocument();
      final categoryDto =  CategoryDto.fromDomain(category);
      await userDoc.categoryCollection.doc(categoryDto.id).delete();
      return const CategoryResult.success();
    } catch (e) {
      return CategoryResult.failure(failure: CategoryFailure.fromError(e));
    }
  }

  @override
  Future<CategoryResult> reorder(List<Category> categories) async {
    try {
      categories.asMap().forEach((i, category) async {
        if (category.position != i) {
          await update(category.copyWith(position: i));
        }
      });
      return const CategoryResult.success();
    } catch (e) {
      return CategoryResult.failure(failure: CategoryFailure.fromError(e));
    }
  }
}