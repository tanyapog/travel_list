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
    @JsonKey(ignore: true) String id,
    required String name,
    required int position,
  }) = _CategoryDto;

  factory CategoryDto.fromDomain(Category category) =>
    CategoryDto(
      id: category.id.getOrCrash().toString(),
      name: category.name,
      position: category.position,
    );

  Category toDomain() => Category(
    id: UniqueId.fromUniqueString(id),
    name: name,
    position: position,
  );

  factory CategoryDto.fromJson(Map<String, dynamic> json) =>
    _$CategoryDtoFromJson(json);

  factory CategoryDto.fromFirestore(DocumentSnapshot doc) =>
    CategoryDto.fromJson(doc.data()).copyWith(id: doc.id);
}