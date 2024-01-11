import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:news_line_app/features/home_feature/domain/usecases/news_details_usecase.dart';
import 'package:news_line_app/features/home_feature/presentation/pages/news_detail_page/bloc/news_details_status.dart';

part 'news_detail_event.dart';
part 'news_detail_state.dart';
part 'news_detail_bloc.freezed.dart';

class NewsDetailBloc extends Bloc<NewsDetailEvent, NewsDetailState> {
  final NewsDetailsUsecase detailsUsecase;
  NewsDetailBloc(this.detailsUsecase) : super(const NewsDetailState()) {
    on<NewsDetailEvent>(
      (event, emit) async {
        await event.when<FutureOr<void>>(
            getNewsById: (newsId) => _getNewsById(emit, newsId),
            toggleShowReplies: () => _toggleShowReplies(emit));
      },
    );
  }

  void _toggleShowReplies(
    Emitter<NewsDetailState> emit,
  ) {
    emit(
      state.copyWith(
        showReplies: !state.showReplies,
      ),
    );
  }

  void _getNewsById(Emitter<NewsDetailState> emit, String newsId) async {
    emit(state.copyWith(newsDetailsStatus: const NewsDetailsStatus.loading()));

    final failureOrEntity = await detailsUsecase(newsId);
    failureOrEntity.fold(
      (failure) => emit(
        state.copyWith(
          newsDetailsStatus: NewsDetailsStatus.error(failure.message),
        ),
      ),
      (details) => emit(
        state.copyWith(
          newsDetailsStatus: NewsDetailsStatus.success(details),
        ),
      ),
    );
  }
}
