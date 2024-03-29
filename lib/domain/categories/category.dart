import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:travel_list/domain/core/value_objects.dart';

part 'category.freezed.dart';

@freezed
class Category with _$Category {

  static const maxNameLength = 70;

  const factory Category({
    required UniqueId id,
    required String name,
    int? position, // initial position will be define on the base of total amount of categories
  }) = _Category;

  factory Category.empty() => Category(
      id: UniqueId(),
      name: '',
  );
}
