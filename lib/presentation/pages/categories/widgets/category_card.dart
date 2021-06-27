import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:implicitly_animated_reorderable_list/implicitly_animated_reorderable_list.dart';
import 'package:travel_list/domain/categories/category.dart';
import 'package:travel_list/presentation/pages/categories/widgets/category_edit_dialog.dart';

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
    return InkWell(
      onTap: () => showDialog(
        barrierDismissible: false,
        context: context,
        builder: (BuildContext context) => CategoryEditDialog(category: category),
      ),
      child: Card(
        elevation: elevation,
        child: ListTile(
          title: Text(category.name),
          trailing: const Handle(
            child: Icon(Icons.drag_handle, color: Colors.grey,)
          ),
        ),
      ),
    );
  }
}