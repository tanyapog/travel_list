import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:travel_list/application/categories/category_form/category_form_bloc.dart';
import 'package:travel_list/domain/categories/category.dart';
import 'package:travel_list/presentation/core/custom_widgets/custom_buttons.dart';
import 'package:travel_list/presentation/core/custom_widgets/custom_flushbar_helper.dart';
import 'package:travel_list/presentation/core/custom_widgets/dialog_box_decoration.dart';
import 'package:travel_list/presentation/routes/router.gr.dart' as app_router;

class CategoryEditingDialogBody extends HookWidget {
  const CategoryEditingDialogBody({Key? key,}) : super(key: key);
  static final GlobalKey<FormState> _globalCategoryFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final nameEditingController = useTextEditingController();

    return MultiBlocListener(
      listeners: [
        BlocListener<CategoryFormBloc, CategoryFormState> (
          listenWhen: (previous, current) => previous.isEditing != current.isEditing,
          listener: (context, state) {
            nameEditingController.text = state.category.name;
          },
        ),
        BlocListener<CategoryFormBloc, CategoryFormState> (
          listenWhen: (previous, current) =>
            previous.savedSuccessfully != current.savedSuccessfully ||
            previous.categoryFailure != current.categoryFailure,
          listener: (context, state) =>
            (state.categoryFailure != null)
              ? customErrorFlushbar(message: state.categoryFailure!.message).show(context)
              : AutoRouter.of(context).popUntil((route) =>
                route.settings.name == app_router.CategoriesOverviewRoute.name,),
        ),
      ],
      child: customDialog(
          child: Form(
            key: _globalCategoryFormKey,
            child: Column(
              mainAxisSize: MainAxisSize.min, // To make the card compact
              children: <Widget>[
                BlocBuilder<CategoryFormBloc, CategoryFormState>( // TODO check does it really reduce rebuilding count
                  builder: (context, state) => Padding(
                    padding: const EdgeInsets.only(bottom: 16.0),
                    child: Text(state.isEditing
                      ? "Edit category"
                      : "Create category",
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                TextFormField( // name field
                  controller: nameEditingController,
                  decoration: const InputDecoration(
                    hintText: 'category name',
                    counterText: '',
                  ),
                  maxLength: Category.maxNameLength,
                  onChanged: (value) => context.read<CategoryFormBloc>()
                    .add(CategoryFormEvent.nameChanged(value)),
                  validator: (value) => (value == null || value.isEmpty)
                    ? "Cannot be empty"
                    : null,
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GreyButton(
                      onPressed: () => Navigator.of(context).pop(),
                      title: "CANCEL",
                    ),
                    const SizedBox(width: 10),
                    AmberButton(
                      onPressed: () {
                        if (_globalCategoryFormKey.currentState?.validate() ?? false) {
                          context.read<CategoryFormBloc>()
                            .add(const CategoryFormEvent.saved());
                        }
                      },
                      title: "SAVE",
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
    );
  }
}
