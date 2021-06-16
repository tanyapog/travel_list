import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
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

  @override
  Stream<CategoryWatcherState> mapEventToState(
    CategoryWatcherEvent event,
  ) async* {
    yield* event.map(
      watchAllStarted: (e) async* {
        yield const CategoryWatcherState.loadInProgress();
        yield* _categoryRepository.watchAll().map((categoryResult) =>
          categoryResult.when(
            success: (_, categories) => CategoryWatcherState.loadSuccess(categories),
            failure: (failure) => CategoryWatcherState.loadFailure(failure),
          ),
        );
      },
    );
  }
}
