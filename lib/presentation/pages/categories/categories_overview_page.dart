import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_list/application/categories/category_watcher/category_watcher_bloc.dart';
import 'package:travel_list/injection.dart';
import 'package:travel_list/presentation/pages/categories/widgets/category_card.dart';
import 'package:travel_list/presentation/pages/categories/widgets/critical_failure_display.dart';
import 'package:travel_list/presentation/pages/navigation/navigation_drawer.dart';

class CategoriesOverviewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<CategoryWatcherBloc>()
            ..add(const CategoryWatcherEvent.watchAllStarted()),
        ),
      ],
      child: Scaffold(
        drawer: NavigationDrawer(),
        appBar: AppBar(
          title: const Text('Categories'),
        ),
        body: BlocBuilder<CategoryWatcherBloc, CategoryWatcherState>(
          builder: (context, state) => state.map(
            initial: (_) => Container(),
            loadInProgress: (_) => const Center(child: CircularProgressIndicator()),
            loadSuccess: (state) => ListView.builder(
              itemBuilder: (context, index) {
                return CategoryCard(category: state.categories[index]);
              },
              itemCount: state.categories.length,
            ),
            loadFailure: (state) => CriticalFailureDisplay(failure: state.categoryFailure),

          ),
        ),
      ),
    );
  }
}
