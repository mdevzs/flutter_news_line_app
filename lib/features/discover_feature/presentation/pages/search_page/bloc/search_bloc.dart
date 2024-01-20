import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:news_line_app/features/discover_feature/domain/usecases/discover_search_usecase.dart';
import 'package:news_line_app/features/discover_feature/presentation/pages/search_page/bloc/search_status.dart';

import '../../../../domain/entities/discover_search_entity.dart';

part 'search_event.dart';
part 'search_state.dart';
part 'search_bloc.freezed.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final DiscoverSearchUsecase searchUsecase;
  SearchBloc(
    this.searchUsecase,
  ) : super(const SearchState()) {
    on<SearchEvent>((event, emit) async {
      await event.when<FutureOr<void>>(
        search: (s) => _search(emit, s),
      );
    });
  }

  _search(Emitter<SearchState> emit, String s) async {
    emit(
      state.copyWith(
        searchStatus: const SearchStatus.loading(),
      ),
    );
    final failureOrEntity = await searchUsecase(s);    
    failureOrEntity.fold(
      (l) => emit(
        state.copyWith(
          searchStatus: SearchStatus.error(l.message),
        ),
      ),
      (searchEntity) => emit(
        state.copyWith(
          searchEntity: searchEntity,
          searchStatus: const SearchStatus.success(),
        ),
      ),
    );
  }
}
