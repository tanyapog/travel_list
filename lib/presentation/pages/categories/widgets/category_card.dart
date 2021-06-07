import 'package:flutter/material.dart';
import 'package:travel_list/domain/categories/category.dart';

class CategoryCard extends StatelessWidget {
  final Category category;

  const CategoryCard({Key key, this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20),
        Text(
          "${category.position}. ${category.name}",
          style: const TextStyle(fontSize: 16),
        ),
      ],
    );
  }
}
