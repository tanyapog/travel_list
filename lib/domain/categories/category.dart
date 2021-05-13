import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:travel_list/domain/core/value_objects.dart';

part 'category.freezed.dart';

@freezed
abstract class Category implements _$Category {
  const Category._();

  const factory Category({
    @required UniqueId id,
    @required String name,
  }) = _Category;

  factory Category.empty() => Category(
      id: UniqueId(),
      name: '',
  );
}