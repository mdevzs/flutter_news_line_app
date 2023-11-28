import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:news_line_app/core/usecase/usecase.dart';
import 'package:news_line_app/features/auth_feature/domain/entities/tags_entity.dart';
import 'package:news_line_app/features/home_feature/domain/usecases/recent_stories_tags.dart';
import 'package:news_line_app/features/home_feature/domain/usecases/recent_stories_usecase.dart';
import 'package:news_line_app/features/home_feature/presentation/pages/recent_news_page/bloc/recent_news_loading_more_status.dart';
import 'package:news_line_app/features/home_feature/presentation/pages/recent_news_page/bloc/recent_news_status.dart';
import 'package:news_line_app/features/home_feature/presentation/pages/recent_news_page/bloc/recent_news_tags_status.dart';

import '../../../../domain/entities/home_entity/news_entity.dart';

part 'recent_news_event.dart';
part 'recent_news_state.dart';
part 'recent_news_bloc.freezed.dart';

class RecentNewsBloc extends Bloc<RecentNewsEvent, RecentNewsState> {
  final RecentStoriesTagsUseCase tagsUsecase;
  final RecentStoriesUsecase recentNewsStoriesUsecase;
  ScrollController scrollController = ScrollController();
  String tagName = '';
  int page = 2;
  bool isLoadingMore = false;
  RecentNewsBloc(
    this.tagsUsecase,
    this.recentNewsStoriesUsecase,
  ) : super(const RecentNewsState()) {
    on<RecentNewsEvent>((event, emit) async {
      await event.when<FutureOr<void>>(
        getAllTags: () => _getAllTags(emit),
        selectTag: (tag) async {
          await _selectTag(emit, tag);
          await _getAllRecentNews(emit, tag.name.toLowerCase());
        },
        getAllRecentNews: (tag) => _getAllRecentNews(
          emit,
          tag,
        ),
        loadMoreNews: (loadingMoreTryAgin) =>
            _loadMore(emit, loadingMoreTryAgin),
      );
    });
    
    scrollController.addListener(() {
      add(const RecentNewsEvent.loadMoreNews());
    });
  }

  void _getAllTags(Emitter<RecentNewsState> emit) async {
    emit(
      state.copyWith(
        tagsStatus: const RecentNewsTagsStatus.loading(),
      ),
    );

    final failureOrEntity = await tagsUsecase(NoParams());
    failureOrEntity.fold(
        (failure) => emit(state.copyWith(
            tagsStatus: RecentNewsTagsStatus.error(failure.message))),
        (tags) => emit(
            state.copyWith(tagsStatus: RecentNewsTagsStatus.success(tags))));
  }

  Future<void> _selectTag(Emitter<RecentNewsState> emit, TagsEntity tag) async {
    tagName = tag.name.toLowerCase();
    emit(state.copyWith(selectedTagId: tag.id));
  }

  Future<void> _getAllRecentNews(
      Emitter<RecentNewsState> emit, String tag) async {
    emit(
      state.copyWith(recentNewsStatus: const RecentNewsStatus.loading()),
    );

    final failureOrEntity =
        await recentNewsStoriesUsecase(({'tag': tag}, '1', '5'));
    failureOrEntity.fold(
        (failure) => emit(
              state.copyWith(
                recentNewsStatus: RecentNewsStatus.error(failure.message),
              ),
            ), (recentStories) {
      emit(
        state.copyWith(
          recentNews: recentStories.data,
          hasNewsReachedEnd: recentStories.meta.next == null,
          recentNewsStatus: const RecentNewsStatus.success(),
        ),
      );
    });
    page = 2;
  }

  void _loadMore(Emitter<RecentNewsState> emit, bool loadingMoreTryAgin) async {
    if (state.hasNewsReachedEnd) return;
    if (scrollController.position.pixels ==
            scrollController.position.maxScrollExtent &&
        (!isLoadingMore || loadingMoreTryAgin)) {
      //
      isLoadingMore = true;
      emit(
        state.copyWith(
          recentLoadingMoreStatus: const RecentNewsLoadinMoreStatus.loading(),
        ),
      );

      debugPrint('requested page is:$page');
      final failureOrEntity =
          await recentNewsStoriesUsecase(({'tag': tagName}, '$page', '5'));
      failureOrEntity.fold(
        (failure) {
          emit(
            state.copyWith(
              recentLoadingMoreStatus:
                  RecentNewsLoadinMoreStatus.error(failure.message),
            ),
          );
        },
        (recentStNews) {
          isLoadingMore = false;
          page++;
          emit(
            state.copyWith(
              recentNews: [...state.recentNews, ...recentStNews.data],
              hasNewsReachedEnd: recentStNews.meta.next == null,
            ),
          );
        },
      );
    }
  }
}
