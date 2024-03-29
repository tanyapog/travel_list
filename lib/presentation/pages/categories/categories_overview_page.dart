import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_list/application/categories/category_actor/category_actor_bloc.dart';
import 'package:travel_list/application/categories/category_watcher/category_watcher_bloc.dart';
import 'package:travel_list/injection.dart';
import 'package:travel_list/presentation/core/custom_widgets/custom_flushbar_helper.dart';
import 'package:travel_list/presentation/pages/categories/widgets/category_card.dart';
import 'package:travel_list/presentation/pages/categories/widgets/category_editing_dialog.dart';
import 'package:travel_list/presentation/pages/categories/widgets/critical_failure_display.dart';

@RoutePage()
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
        listener: (context, state) =>
          state.maybeMap(
            reorderFailure: (state) => customErrorFlushbar(
              message: state.categoryFailure.message).show(context),
            orElse: () => null,
          ),
        child: Scaffold(
          // drawer: NavigationDrawer(),
          appBar: AppBar(
            title: const Text('Categories'),
          ),
          body: BlocBuilder<CategoryWatcherBloc, CategoryWatcherState>(
            builder: (context, state) => state.map(
              initial: (_) => Container(),
              loadInProgress: (_) => const Center(child: CircularProgressIndicator()),
              loadSuccess: (state) => ListView(
                // onReorder: (oldIndex, newIndex) {
                //   context.read<CategoryActorBloc>()
                //       .add(CategoryActorEvent.reorderFinished(newItems));
                //   // if (oldIndex < newIndex) newIndex--;
                //   // _playlist.move(oldIndex, newIndex);
                // },
                children: [
                  for (var i = 0; i < state.categories.length; i++)
                  CategoryCard(
                    category: state.categories[i],
                    elevation: 1,
                  )
                ],
                // itemBuilder: (context, itemAnimation, item, index) =>
                //   // This check is a workaround made to solve RangeError on deleting category.
                //   // RangeError happens because ImplicitlyAnimatedReorderableList
                //   // rebuilds items with old list three times and only last time
                //   // with a new one (witch doesn't contain deleted item).
                //   // I didn't found out how to stop it doing that.
                //   index < state.categories.length
                //     ? Reorderable(
                //       builder: (context, dragAnimation, inDrag) =>
                //         ScaleTransition(
                //           scale: Tween<double>(begin: 1, end: 0.95).animate(dragAnimation),
                //           child: CategoryCard(
                //             category: state.categories[index],
                //             elevation: dragAnimation.value * 1,
                //           ),
                //         ),
                //       key: ValueKey(item.id))
                //     : Reorderable(
                //       key: const ValueKey("ghost item"),
                //       child: Container()),
                // items: state.categories,
                // areItemsTheSame: (oldItem, newItem) => oldItem.id == newItem.id,
                // onReorderFinished: (item, from, to, newItems) =>
                //   context.read<CategoryActorBloc>()
                //     .add(CategoryActorEvent.reorderFinished(newItems)),
              ),
              loadFailure: (state) => CriticalFailureDisplay(failure: state.categoryFailure),
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () => showDialog(
              barrierDismissible: false,
              context: context,
              builder: (BuildContext context) => const CategoryEditingDialog(),
            ),
            child: const Icon(Icons.add),
          ),
        ),
      ),
    );
  }
}
