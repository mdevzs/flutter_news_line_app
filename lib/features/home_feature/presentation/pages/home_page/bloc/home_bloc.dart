import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:news_line_app/core/usecase/usecase.dart';
import 'package:news_line_app/features/home_feature/domain/usecases/home_usecase.dart';
import 'package:news_line_app/features/home_feature/domain/usecases/recent_stories_usecase.dart';
import 'package:news_line_app/features/home_feature/presentation/pages/home_page/bloc/home_status.dart';

import 'recent_stories_status.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final HomeUsecase homeUsecase;
  final RecentStoriesUsecase recentStoriesUsecase;
  HomeBloc(
    this.homeUsecase,
    this.recentStoriesUsecase,
  ) : super(const HomeState()) {
    on<HomeEvent>((event, emit) async {
      await event.when<FutureOr<void>>(
        getHome: () => _getHome(emit),
        selectTag: (tagId) => _selectTag(emit, tagId),
        getRecentStories: (tag) => _getRecentStories(emit, tag),
      );
    });
  }

  void _getHome(Emitter<HomeState> emit) async {
    emit(
      state.copyWith(
        homeStatus: const HomeStatus.loading(),
      ),
    );

    final failureOrEntity = await homeUsecase(NoParams());

    failureOrEntity.fold(
      (failure) => emit(
        state.copyWith(
          homeStatus: HomeStatus.error(failure.message),
        ),
      ),
      (homeEntity) => emit(
        state.copyWith(
          homeStatus: HomeStatus.success(homeEntity),
        ),
      ),
    );
  }

  void _selectTag(Emitter<HomeState> emit, int tagId) {
    emit(state.copyWith(
      selectedTagId: tagId,
    ));
  }

  void _getRecentStories(Emitter<HomeState> emit, String tag) async {
    emit(
      state.copyWith(
        recentStoriesStatus: const RecentStoriesStatus.loading(),
      ),
    );

    final failureOrEntity = await recentStoriesUsecase({'tag': tag});
    failureOrEntity.fold(
      (failure) => emit(
        state.copyWith(
          recentStoriesStatus: RecentStoriesStatus.error(failure.message),
        ),
      ),
      (recentStories) => emit(
        state.copyWith(
          recentStoriesStatus: RecentStoriesStatus.success(recentStories.data),
        ),
      ),
    );
  }
}
