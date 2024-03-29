import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:travel_list/domain/categories/category.dart';
import 'package:travel_list/presentation/core/custom_widgets/custom_delete_slide_action.dart';
import 'package:travel_list/presentation/pages/categories/widgets/category_deleting_dialog.dart';
import 'package:travel_list/presentation/pages/categories/widgets/category_editing_dialog.dart';

class CategoryCard extends StatelessWidget {
  final Category category;
  final double elevation;

  const CategoryCard({
    Key? key,
    required this.category,
    required this.elevation,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => showDialog(
        barrierDismissible: false,
        context: context,
        builder: (BuildContext context) => CategoryEditingDialog(category: category),
      ),
      child: Slidable(
        endActionPane: ActionPane(
          motion: const DrawerMotion(),
          children: [
            customDeleteSlideAction(
              onPressed: (context) => showDialog(
                barrierDismissible: false,
                context: context,
                builder: (context) => CategoryDeletionDialog(category: category),
              ),
            ),
          ],
        ),
        child: Card(
          elevation: elevation,
          child: ListTile(
            title: Text(category.name),
            trailing: Icon(Icons.drag_handle, color: Colors.grey),
            // trailing: const Handle(
            //   child: Icon(Icons.drag_handle, color: Colors.grey),
            // ),
          ),
        ),
      ),
    );
  }
}
