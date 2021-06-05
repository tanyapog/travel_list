import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';
import 'package:travel_list/domain/categories/category.dart';
import 'package:travel_list/domain/categories/i_category_repository.dart';
import 'package:travel_list/infrastructure/categories/category_dtos.dart';
import 'package:travel_list/infrastructure/core/firestore_helpers.dart';

@LazySingleton(as: ICategoryRepository)
class CategoryRepository implements ICategoryRepository {
  final FirebaseFirestore _firestore;

  CategoryRepository(this._firestore);

  @override
  Stream<List<Category>> watchAll() async* {
    final userDoc = await _firestore.userDocument();
    yield* userDoc.categoryCollection
      .orderBy('position')
      .snapshots()
      .map((snapshot) =>
        snapshot.docs
          .map((doc) => CategoryDto.fromFirestore(doc).toDomain())
          .toList(),
    );
  }

  @override
  Future<void> create(Category category) {
    // TODO: implement create
    throw UnimplementedError();
  }

  @override
  Future<void> delete(Category category) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<void> update(Category category) {
    // TODO: implement update
    throw UnimplementedError();
  }
}