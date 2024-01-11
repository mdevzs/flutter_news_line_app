import 'dart:async';

import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:news_line_app/features/home_feature/domain/entities/home_entity/comments_entity.dart';
import 'package:news_line_app/features/home_feature/domain/entities/home_entity/like_comment_entity.dart';
import 'package:news_line_app/features/home_feature/domain/usecases/add_comment_usecase.dart';
import 'package:news_line_app/features/home_feature/domain/usecases/like_comment_usecase.dart';
import 'package:news_line_app/features/home_feature/domain/usecases/news_comments_usecase.dart';
import 'package:news_line_app/features/home_feature/presentation/pages/comments_page/bloc/add_comment_status.dart';
import 'package:news_line_app/features/home_feature/presentation/pages/comments_page/bloc/comments_status.dart';

part 'comments_event.dart';
part 'comments_state.dart';
part 'comments_bloc.freezed.dart';

class CommentsBloc extends Bloc<CommentsEvent, CommentsState> {
  final NewsCommentsUsecase newsCommentsUsecase;
  final AddCommentUsecase addCommentUsecase;
  final LikeCommentUsecase likeCommentUsecase;
  CommentsBloc(
    this.newsCommentsUsecase,
    this.addCommentUsecase,
    this.likeCommentUsecase,
  ) : super(CommentsState()) {
    on<CommentsEvent>(
      (event, emit) async {
        await event.when<FutureOr<void>>(
          getAllComments: (newsId) => _getAllComments(emit, newsId),
          sendComment: (comment, parentId, selectedTabIndex, newsId) =>
              _sendComment(
            emit,
            comment,
            parentId,
            newsId,
            selectedTabIndex,
          ),
          likeComment: (
            commentId,
            seletectedTabIndex,
          ) =>
              _likeComment(
            emit,
            commentId,
            seletectedTabIndex,
          ),
          replyComment: (username) => _replyComment(emit, username),
        );
      },
    );
  }

  void _likeComment(
    Emitter<CommentsState> emit,
    int commentId,
    int selectedTabIndex,
  ) async {
    final likedComment = await likeCommentUsecase(commentId.toString());
    likedComment.fold(
      (l) => null,
      (r) {
        _likeCommentAndUpadateTheState(
          emit,
          r,
          selectedTabIndex,
          commentId,
        );
      },
    );
  }

  void _likeCommentAndUpadateTheState(
    Emitter<CommentsState> emit,
    LikeCommentEntity likeResponse,
    int selectedTabIndex,
    int commentId,
  ) {
    debugPrint('tab indexed is: $selectedTabIndex');
    final newsList =
        selectedTabIndex == 0 ? state.topComments : state.newestComments;
    for (int i = 0; i < newsList.length; i++) {
      if (newsList[i].id == likeResponse.commentId) {
        final newList = newsList.updateById([
          newsList[i].copyWith(
            likeCounts: likeResponse.likeCounts,
            isLiked: !newsList[i].isLiked,
          )
        ], (item) => item.id);
        if (selectedTabIndex == 0) {
          emit(state.copyWith(topComments: newList.toIList()));
        } else {
          emit(state.copyWith(newestComments: newList.toIList()));
        }
      } else {
        for (int j = 0; j < newsList[i].replies.length; j++) {
          if (newsList[i].replies[j].id == likeResponse.commentId) {
            final newReplies = newsList[i].replies.updateById([
              newsList[i].replies[j].copyWith(
                    likeCounts: likeResponse.likeCounts,
                    isLiked: !newsList[i].replies[j].isLiked,
                  )
            ], (item) => item.id);
            final newList = newsList.updateById([
              newsList[i].copyWith(
                replies: newReplies,
              )
            ], (item) => item.id);
            if (selectedTabIndex == 0) {
              emit(state.copyWith(topComments: newList.toIList()));
            } else {
              emit(state.copyWith(newestComments: newList.toIList()));
            }
          }
        }
      }
    }
  }

  void _getAllComments(
    Emitter<CommentsState> emit,
    String newsId,
  ) async {
    emit(state.copyWith(commentsSatus: const CommentsStatus.loading()));

    final failureOrEntity = await newsCommentsUsecase(newsId);
    failureOrEntity.fold(
      (failure) => emit(
        state.copyWith(
          commentsSatus: CommentsStatus.error(failure.message),
        ),
      ),
      (comments) => emit(
        state.copyWith(
          topComments: comments.top.toIList(),
          newestComments: comments.newest.toIList(),
          commentsSatus: const CommentsStatus.success(),
        ),
      ),
    );
  }

  void _sendComment(
    Emitter<CommentsState> emit,
    String comment,
    int? parentId,
    String newsId,
    int selectedTabIndex,
  ) async {
    emit(
      state.copyWith(
        addCommentState: const AddCommentStatus.loading(),
      ),
    );
    final failureOrEntity = await addCommentUsecase(
      (
        newsId,
        {'comment': comment, 'parentId': parentId},
      ),
    );

    failureOrEntity.fold(
      (failure) => emit(
        state.copyWith(
          addCommentState: AddCommentStatus.error(failure.message),
        ),
      ),
      (comment) {
        if (comment.parentId != null) {
          if (selectedTabIndex == 0) {
            final parentTopComment = state.topComments.firstWhere(
              (element) => element.id == comment.parentId,
            );
            parentTopComment.replies.add(comment);
            emit(
              state.copyWith(
                addCommentState: const AddCommentStatus.success(),
                topComments: state.topComments,
              ),
            );
          } else if (selectedTabIndex == 1) {
            final parentNewestComment = state.newestComments.firstWhere(
              (element) => element.id == comment.parentId,
            );
            parentNewestComment.replies.add(comment);
            emit(
              state.copyWith(
                addCommentState: const AddCommentStatus.success(),
                newestComments: state.newestComments,
              ),
            );
          }
        } else {
          if (selectedTabIndex == 0) {
            emit(
              state.copyWith(
                addCommentState: const AddCommentStatus.success(),
                topComments: [comment, ...state.topComments].toIList(),
              ),
            );
          } else if (selectedTabIndex == 1) {
            emit(
              state.copyWith(
                addCommentState: const AddCommentStatus.success(),
                newestComments: [comment, ...state.newestComments].toIList(),
              ),
            );
          }
        }
      },
    );
  }

  void _replyComment(
    Emitter<CommentsState> emit,
    String? username,
  ) {
    emit(
      state.copyWith(
        isReplying: !state.isReplying,
        repliedUsername: username,
      ),
    );
  }
}
