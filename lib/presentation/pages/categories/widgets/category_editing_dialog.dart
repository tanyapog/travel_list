import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_list/application/categories/category_form/category_form_bloc.dart';
import 'package:travel_list/domain/categories/category.dart';
import 'package:travel_list/injection.dart';
import 'package:travel_list/presentation/core/custom_widgets/saving_in_progress_overlay.dart';
import 'package:travel_list/presentation/pages/categories/widgets/category_editing_dialog_body.dart';

class CategoryEditingDialog extends StatelessWidget {
  final Category? category;

  const CategoryEditingDialog({Key? key, this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CategoryFormBloc>(
      create: (context) => (category == null)
        ? getIt<CategoryFormBloc>()
        : (getIt<CategoryFormBloc>()..add(CategoryFormEvent.initialized(category!))),
      child: BlocBuilder<CategoryFormBloc, CategoryFormState>(
        buildWhen: (previous, current) => previous.isSaving != current.isSaving,
        builder: (context, state) =>
          Stack(
            children: [
              const CategoryEditingDialogBody(),
              SavingInProgressOverlay(isSaving: state.isSaving),
            ],
          ),
      ),
    );
  }
}
