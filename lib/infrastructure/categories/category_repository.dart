import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:travel_list/domain/categories/category.dart';
import 'package:travel_list/domain/categories/category_failure.dart';
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
  Future<void> create(Category category) async {
    try {
      final userDoc = await _firestore.userDocument();
      final categoryDto =  CategoryDto.fromDomain(category);
      userDoc.categoryCollection.add(categoryDto.toJson());
      return;
    } on PlatformException catch (e) {
      if (e is PlatformException && e.message.contains('PERMISSION_DENIED')) {
        return const CategoryFailure.insufficientPermission();
      } else {
        // TODO: Log these unexpected errors everywhere
        return const CategoryFailure.unexpected();
      }
    }
  }

  @override
  Future<void> update(Category category) async {
    try {
      final userDoc = await _firestore.userDocument();
      final categoryDto =  CategoryDto.fromDomain(category);
      await userDoc.categoryCollection.doc(categoryDto.id).update(categoryDto.toJson());
      return;
    } on PlatformException catch (e) {
      if (e is PlatformException && e.message.contains('PERMISSION_DENIED')) {
        return const CategoryFailure.insufficientPermission();
      } else if (e is PlatformException && e.message.contains('NOT_FOUND')) {
        return const CategoryFailure.unableToUpdate();
      } else {
        // TODO: Log these unexpected errors everywhere
        return const CategoryFailure.unexpected();
      }
    }
  }

  @override
  Future<void> delete(Category category) async {
    try {
      final userDoc = await _firestore.userDocument();
      final categoryDto =  CategoryDto.fromDomain(category);
      await userDoc.categoryCollection.doc(categoryDto.id).delete();
      return;
    } on PlatformException catch (e) {
      if (e is PlatformException && e.message.contains('PERMISSION_DENIED')) {
        return const CategoryFailure.insufficientPermission();
      } else if (e is PlatformException && e.message.contains('NOT_FOUND')) {
        return const CategoryFailure.unableToUpdate();
      } else {
        // TODO: Log these unexpected errors everywhere
        return const CategoryFailure.unexpected();
      }
    }
  }

  @override
  Future<void> reorder(List<Category> categories) async {
    categories.asMap().forEach((i, category) async {
      if (category.position != i) {
        await update(category.copyWith(position: i));
      }
    });
    return;
  }
}