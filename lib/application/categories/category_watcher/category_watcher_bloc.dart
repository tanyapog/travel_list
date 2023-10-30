import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:travel_list/domain/categories/category.dart';
import 'package:travel_list/domain/categories/category_failure.dart';
import 'package:travel_list/domain/categories/category_result.dart';
import 'package:travel_list/domain/categories/i_category_repository.dart';

part 'category_watcher_event.dart';
part 'category_watcher_state.dart';
part 'category_watcher_bloc.freezed.dart';

@injectable
class CategoryWatcherBloc extends Bloc<CategoryWatcherEvent, CategoryWatcherState> {
  final ICategoryRepository _categoryRepository;

  CategoryWatcherBloc(this._categoryRepository) : super(const CategoryWatcherState.initial()) {
    on<CategoryWatcherEvent>(
      (event, emit) => event.map(
        watchAllStarted: (event) async {
          emit(const CategoryWatcherState.loadInProgress());
          await emit.forEach<CategoryResult>(
            _categoryRepository.watchAll(),
            onData: (categoryResult) => categoryResult.when(
              success: (categories) => CategoryWatcherState.loadSuccess(categories!),
              failure: (failure) => CategoryWatcherState.loadFailure(failure),
            ),
          );
        },
      ),
      transformer: restartable(),
    );
  }
}
