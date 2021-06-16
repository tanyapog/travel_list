import 'package:flutter/material.dart';
import 'package:travel_list/domain/categories/category.dart';
import 'package:travel_list/presentation/core/common_widgets/custom_buttons.dart';
import 'package:travel_list/presentation/core/common_widgets/dialog_box_decoration.dart';

class CategoryEditDialog extends StatelessWidget {
  final Category category;

  const CategoryEditDialog({Key key, this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return customDialog(
      child: Column(
        mainAxisSize: MainAxisSize.min, // To make the card compact
        children: <Widget>[
          TextFormField( // name field
            // controller: nameEditingController,
            decoration: const InputDecoration(
              hintText: 'category name',
              counterText: '',
            ),
            autofocus: true,
          ),
          const SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              greyButton(onPressed: () => Navigator.of(context).pop(), title: "CANCEL"),
              const SizedBox(width: 10),
              amberButton(onPressed: () => Navigator.of(context).pop(), title:  "SAVE"),
            ],
          ),
        ],
      ),
    );
  }
}
