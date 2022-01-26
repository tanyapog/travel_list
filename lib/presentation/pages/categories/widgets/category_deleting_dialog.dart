import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_list/application/categories/category_actor/category_actor_bloc.dart';
import 'package:travel_list/domain/categories/category.dart';
import 'package:travel_list/injection.dart';
import 'package:travel_list/presentation/core/custom_widgets/custom_buttons.dart';
import 'package:travel_list/presentation/core/custom_widgets/custom_flushbar_helper.dart';
import 'package:travel_list/presentation/core/custom_widgets/dialog_box_decoration.dart';

class CategoryDeletionDialog extends StatelessWidget {
  final Category category;

  const CategoryDeletionDialog({Key? key, required this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CategoryActorBloc>(
      create: (context) => getIt<CategoryActorBloc>(),
      child: customDialog(
        child: BlocListener<CategoryActorBloc, CategoryActorState>(
          listener: (context, state) {
            state.maybeMap(
              deleteFailure: (state) => customErrorFlushbar(
                  message: state.categoryFailure.message,).show(context),
              orElse: () {},
            );
          },
          child: Column(
            mainAxisSize: MainAxisSize.min, // To make the card compact
            children: <Widget>[
              const Text("Deleting a category",
                style: TextStyle(fontWeight: FontWeight.bold),),
              const SizedBox(height: 10),
              ListTile(
                title: Text(category.name, key: const Key('categoryName')),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  greyButton(
                    onPressed: () => Navigator.of(context).pop(),
                    title: "CANCEL",),
                  const SizedBox(width: 10),
                  BlocBuilder<CategoryActorBloc, CategoryActorState>(
                    builder: (context, state) => amberButton(
                      onPressed: () {
                        context.read<CategoryActorBloc>().add(CategoryActorEvent.deleted(category));
                        Navigator.of(context).pop();
                      },
                      title: "DELETE",),),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
