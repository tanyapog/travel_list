import 'package:auto_route/auto_route.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:travel_list/application/categories/category_form/category_form_bloc.dart';
import 'package:travel_list/domain/categories/category.dart';
import 'package:travel_list/presentation/core/common_widgets/custom_buttons.dart';
import 'package:travel_list/presentation/core/common_widgets/dialog_box_decoration.dart';
import 'package:travel_list/presentation/routes/router.gr.dart';

class CategoryDialogBody extends HookWidget {

  @override
  Widget build(BuildContext context) {
    final nameEditingController = useTextEditingController();
    final _globalCategoryFormKey = GlobalKey<FormState>();

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
              ? FlushbarHelper.createError(message: state.categoryFailure.message).show(context)
              : ExtendedNavigator.of(context)
                .popUntil((route) => route.settings.name == Routes.categoriesOverviewPage,),
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
                  validator: (value) => value.isEmpty
                    ? "Cannot be empty"
                    : null,
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    greyButton(
                      onPressed: () => Navigator.of(context).pop(),
                      title: "CANCEL",
                    ),
                    const SizedBox(width: 10),
                    amberButton(
                      onPressed: () {
                        if (_globalCategoryFormKey.currentState.validate()) {
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
