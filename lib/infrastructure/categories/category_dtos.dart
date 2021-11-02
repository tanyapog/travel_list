import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:travel_list/domain/categories/category.dart';
import 'package:travel_list/domain/core/value_objects.dart';

part 'category_dtos.freezed.dart';
part 'category_dtos.g.dart';

@freezed
class CategoryDto with _$CategoryDto {
  const CategoryDto._();

  const factory CategoryDto({
    // I ignore id because of firestore structure. And ignoring field in freezed class should be nullable.
    @JsonKey(ignore: true) String? id,
    required String name,
    required int position,
  }) = _CategoryDto;

  factory CategoryDto.fromDomain(Category category) =>
    CategoryDto(
      id: category.id.getOrCrash(),
      name: category.name,
      position: category.position ?? -1, // -1 position must never appear. If it is, error occurred
    );

  Category toDomain() => Category(
    id: UniqueId.fromUniqueString(id!), // I believe id is never null
    name: name,
    position: position,
  );

  factory CategoryDto.fromJson(Map<String, dynamic> json) =>
    _$CategoryDtoFromJson(json);

  factory CategoryDto.fromFirestore(DocumentSnapshot doc) =>
    CategoryDto.fromJson(doc.data()).copyWith(id: doc.id);
}
