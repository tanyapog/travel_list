import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:travel_list/domain/categories/category.dart';
import 'package:travel_list/domain/categories/category_failure.dart';
import 'package:travel_list/domain/categories/i_category_repository.dart';

part 'category_watcher_event.dart';
part 'category_watcher_state.dart';
part 'category_watcher_bloc.freezed.dart';

@injectable
class CategoryWatcherBloc extends Bloc<CategoryWatcherEvent, CategoryWatcherState> {

  final ICategoryRepository _categoryRepository;
  CategoryWatcherBloc(this._categoryRepository) : super(const CategoryWatcherState.initial());
  StreamSubscription<List<Category>> _categoryStreamSubscription;

  @override
  Stream<CategoryWatcherState> mapEventToState(
    CategoryWatcherEvent event,
  ) async* {
    yield* event.map(
      watchAllStarted: (e) async* {
        yield const CategoryWatcherState.loadInProgress();
        await _categoryStreamSubscription?.cancel();
        _categoryStreamSubscription = _categoryRepository
          .watchAll()
          .listen((categories) {
            add(CategoryWatcherEvent.categoriesReceived(categories));
          }
        );
      },
      reorderStarted: (e) async* {
        yield CategoryWatcherState.loadSuccess(e.categories);
      },
      categoriesReceived: (e) async* {
        yield CategoryWatcherState.loadSuccess(e.categories);
      },
    );
  }

  @override
  Future<void> close() async {
    await _categoryStreamSubscription.cancel();
    return super.close();
  }
}
