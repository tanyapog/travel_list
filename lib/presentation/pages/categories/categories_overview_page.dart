import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:implicitly_animated_reorderable_list/implicitly_animated_reorderable_list.dart';
import 'package:travel_list/application/categories/category_actor/category_actor_bloc.dart';
import 'package:travel_list/application/categories/category_watcher/category_watcher_bloc.dart';
import 'package:travel_list/domain/categories/category.dart';
import 'package:travel_list/injection.dart';
import 'package:travel_list/presentation/core/custom_widgets/custom_flushbar_helper.dart';
import 'package:travel_list/presentation/pages/categories/widgets/category_editing_dialog.dart';
import 'package:travel_list/presentation/pages/categories/widgets/category_card.dart';
import 'package:travel_list/presentation/pages/categories/widgets/critical_failure_display.dart';
import 'package:travel_list/presentation/pages/navigation/navigation_drawer.dart';

class CategoriesOverviewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<CategoryWatcherBloc>(
          create: (context) => getIt<CategoryWatcherBloc>()
            ..add(const CategoryWatcherEvent.watchAllStarted()),
        ),
        BlocProvider<CategoryActorBloc>(
          create: (context) => getIt<CategoryActorBloc>(),
        ),
      ],
      child: BlocListener<CategoryActorBloc, CategoryActorState>(
        listener: (context, state) {
          state.maybeMap(
            reorderFailure: (state) => customErrorFlushbar(
              message: state.categoryFailure.message,).show(context),
            orElse: () {},
          );
        },
        child: Scaffold(
          drawer: NavigationDrawer(),
          appBar: AppBar(
            title: const Text('Categories'),
          ),
          body: BlocBuilder<CategoryWatcherBloc, CategoryWatcherState>(
            builder: (context, state) => state.map(
              initial: (_) => Container(),
              loadInProgress: (_) => const Center(child: CircularProgressIndicator()),
              loadSuccess: (state) => ImplicitlyAnimatedReorderableList<Category>(
                itemBuilder: (context, itemAnimation, item, index) {
                  return Reorderable(
                    builder: (context, dragAnimation, inDrag) =>
                      ScaleTransition(
                        scale: Tween<double>(begin: 1, end: 0.95).animate(dragAnimation),
                        child: CategoryCard(
                          category: state.categories[index],
                          elevation: dragAnimation.value * 4,
                        ),
                      ),
                    key: ValueKey(item.id),
                  );
                },
                items: state.categories,
                areItemsTheSame: (oldItem, newItem) => oldItem.id == newItem.id,
                onReorderFinished: (item, from, to, newItems) {
                  context.read<CategoryActorBloc>()
                    .add(CategoryActorEvent.reorderFinished(newItems));
                },
              ),
              loadFailure: (state) => CriticalFailureDisplay(failure: state.categoryFailure),
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () => showDialog(
              barrierDismissible: false,
              context: context,
              builder: (BuildContext context) => const CategoryEditDialog(),
            ),
            child: const Icon(Icons.add),
          ),
        ),
      ),
    );
  }
}
