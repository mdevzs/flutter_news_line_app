import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:news_line_app/features/home_feature/domain/entities/home_entity/news_entity.dart';
import 'package:news_line_app/features/home_feature/domain/usecases/trending_news_usecase.dart';
import 'package:news_line_app/features/home_feature/presentation/pages/trending_news_page/bloc/trending_news_load_more_status.dart';
import 'package:news_line_app/features/home_feature/presentation/pages/trending_news_page/bloc/trending_news_status.dart';

part 'trending_news_event.dart';
part 'trending_news_state.dart';
part 'trending_news_bloc.freezed.dart';

class TrendingNewsBloc extends Bloc<TrendingNewsEvent, TrendingNewsState> {
  final TrendingUsecase trendingNewsUsecase;
  ScrollController scrollController = ScrollController();
  int page = 2;
  bool isLoadingMore = false;
  TrendingNewsBloc(this.trendingNewsUsecase)
      : super(const TrendingNewsState()) {
    on<TrendingNewsEvent>((event, emit) async {
      await event.when<FutureOr<void>>(
        getAllTrendingNews: () => _allTrendingNews(emit),
        loadMore: (loadingMoreTryAgin) => _loadMore(emit, loadingMoreTryAgin),
      );
    });

    scrollController.addListener(() {
      add(const TrendingNewsEvent.loadMore());
    });
  }

  void _allTrendingNews(Emitter<TrendingNewsState> emit) async {
    emit(
        state.copyWith(trendingNewsStatus: const TrendingNewsStatus.loading()));

    final failureOrEntity = await trendingNewsUsecase((null, '5'));
    failureOrEntity.fold(
        (failure) => emit(state.copyWith(
            trendingNewsStatus: TrendingNewsStatus.erro(failure.message))),
        (trendingNews) => emit(
              state.copyWith(
                trendingNews: trendingNews.data,
                trendingNewsStatus: const TrendingNewsStatus.success(),
                hasReachedEnd: trendingNews.meta.next == null,
              ),
            ));
    page = 2;
  }

  void _loadMore(
      Emitter<TrendingNewsState> emit, bool loadingMoreTryAgin) async {
    if (state.hasReachedEnd) return;
    if (scrollController.position.pixels ==
            scrollController.position.maxScrollExtent &&
        (!isLoadingMore || loadingMoreTryAgin)) {
      isLoadingMore = true;
      emit(state.copyWith(
        loadMoreStatus: const TrendingNewsLoadMoreStatus.loading(),
      ));

      debugPrint('requested page is:$page');
      final failureOrEntity = await trendingNewsUsecase(('$page', '5'));
      failureOrEntity.fold(
        (failure) {
          emit(
            state.copyWith(
              loadMoreStatus: TrendingNewsLoadMoreStatus.error(failure.message),
            ),
          );
        },
        (trendingNews) {
          isLoadingMore = false;
          page++;
          emit(
            state.copyWith(
              trendingNews: [...state.trendingNews, ...trendingNews.data],
              hasReachedEnd: trendingNews.meta.next == null,
            ),
          );
        },
      );
    }
  }
}
