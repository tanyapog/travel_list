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
          .map((doc) => CategoryDto.fromFirestore(doc).toDomain()).toList(),),)
      .onErrorReturnWith((e) => CategoryResult.failure(
        failure: CategoryFailure.fromError(e),),);
  }

  @override
  Future<CategoryResult> create(Category category) async {
    try {
      final userDoc = await _firestore.userDocument();
      final int position = await _spotThePosition();
      final newCategory = category.copyWith(position: position);
      final categoryDto = CategoryDto.fromDomain(newCategory);
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

  // In the case of success reorder, watchAll method will refresh categories
  // as it's a Stream subscribed on categoryCollection
  @override
  Future<CategoryResult> reorder(List<Category> categories) async {
    try {
      final List<CategoryFailure> failures = [];
      await Future.wait(
        // map each entry into a Future object
        // https://stackoverflow.com/questions/59056887/await-an-anonymous-function
        categories.asMap().entries.map((entry) async {
          final i = entry.key;
          final category = entry.value;

          if (category.position != i) {
            final result = await update(category.copyWith(position: i));
            result.maybeWhen(
              failure: (failure) => failures.add(failure),
              orElse: () {},
            );
          }
        }),
      );
      return (failures.isEmpty)
        ? const CategoryResult.success()
        // only the first failure will shown in UI because it's easy to code. todo log all failures
        : CategoryResult.failure(failure: failures.first);
    } catch (e) {
      return CategoryResult.failure(failure: CategoryFailure.fromError(e));
    }
  }

  // - first category will get position 0
  // - non first category will get position after the last one.
  // We search the category with max value of position field because it could be
  // different from count of categories minus 1 after deletion some category
  // - in case of error method rethrow exception
  Future<int> _spotThePosition() async {
    try {
      int positionForNewCategory = 0;
      final userDoc = await _firestore.userDocument();
      final docSnapshots = await userDoc.categoryCollection
        .orderBy('position', descending: true)
          .limit(1).get().then((querySnapshot) => querySnapshot.docs);
      if (docSnapshots.isNotEmpty ) {
        final DocumentSnapshot snapshot = docSnapshots.elementAt(0);
        if (snapshot.exists) {
          positionForNewCategory = CategoryDto.fromFirestore(snapshot).toDomain()
            .position + 1;
        }
      }
      return positionForNewCategory;
    } on Exception {
      rethrow;
    }
  }
}
