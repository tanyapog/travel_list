import 'package:flutter/material.dart';
import 'package:travel_list/domain/categories/category.dart';

class CategoryCard extends StatelessWidget {
  final Category category;

  const CategoryCard({Key key, this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(category.name),
        trailing: const Icon(Icons.drag_handle, color: Colors.grey,),
      ),
    );
  }
}
