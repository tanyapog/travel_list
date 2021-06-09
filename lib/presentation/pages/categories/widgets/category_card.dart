import 'package:flutter/material.dart';
import 'package:implicitly_animated_reorderable_list/implicitly_animated_reorderable_list.dart';
import 'package:travel_list/domain/categories/category.dart';

class CategoryCard extends StatelessWidget {
  final Category category;
  final double elevation;

  const CategoryCard({
    Key key,
    @required this.category,
    double elevation,
  }) : elevation = elevation ?? 0,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: elevation,
      child: ListTile(
        title: Text(category.name),
        trailing: const Handle(
          child: Icon(Icons.drag_handle, color: Colors.grey,)
        ),
      ),
    );
  }
}
