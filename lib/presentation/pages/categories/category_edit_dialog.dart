import 'package:flutter/material.dart';
import 'package:travel_list/domain/categories/category.dart';

class CategoryEditDialog extends StatelessWidget {
  final Category category;

  const CategoryEditDialog({Key key, this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      elevation: 0.0,
      backgroundColor: Colors.transparent,
      child: dialogContent(context),
    );
  }

  Widget dialogContent(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10.0,
            offset: Offset(0.0, 10.0),
          ),
        ],
      ),
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
              FlatButton(
                color: Colors.blueGrey.shade50,
                onPressed: () => Navigator.of(context).pop(),
                child: const Text("CANCEL"),
              ),
              const SizedBox(width: 10),
              FlatButton(
                color: Colors.amber,
                onPressed: () => Navigator.of(context).pop(),
                child: const Text("SAVE"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
