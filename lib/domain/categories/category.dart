import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:travel_list/domain/core/value_objects.dart';

part 'category.freezed.dart';

@freezed
class Category with _$Category {
  const Category._();

  static const maxNameLength = 70;

  const factory Category({
    @required UniqueId id,
    @required String name,
    int position,
  }) = _Category;

  factory Category.empty() => Category(
      id: UniqueId(),
      name: '',
  );
}