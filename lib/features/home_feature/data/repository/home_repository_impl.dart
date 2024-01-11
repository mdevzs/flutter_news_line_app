import 'package:dartz/dartz.dart';
import 'package:news_line_app/core/utils/failure.dart';
import 'package:news_line_app/features/home_feature/data/data_source/home_api_provider.dart';
import 'package:news_line_app/features/home_feature/data/models/home_model/comments_model.dart';
import 'package:news_line_app/features/home_feature/data/models/home_model/details_news_model.dart';
import 'package:news_line_app/features/home_feature/data/models/home_model/get_all_comments_model.dart';
import 'package:news_line_app/features/home_feature/data/models/home_model/home_model.dart';
import 'package:news_line_app/features/home_feature/data/models/home_model/like_comment_model.dart';
import 'package:news_line_app/features/home_feature/data/models/home_model/recent_news_model.dart';
import 'package:news_line_app/features/home_feature/data/models/home_model/trending_news_model.dart';
import 'package:news_line_app/features/home_feature/domain/entities/home_entity/comments_entity.dart';
import 'package:news_line_app/features/home_feature/domain/entities/home_entity/get_all_comments_entity.dart';
import 'package:news_line_app/features/home_feature/domain/entities/home_entity/home_entity.dart';
import 'package:news_line_app/features/home_feature/domain/entities/home_entity/news_details_entity.dart';
import 'package:news_line_app/features/home_feature/domain/entities/home_entity/recent_news_entity.dart';
import 'package:news_line_app/features/home_feature/domain/entities/home_entity/trending_news_entity.dart';
import 'package:news_line_app/features/home_feature/domain/repository/home_repository.dart';

import '../../../../core/utils/api_response_handler.dart';
import '../../domain/entities/home_entity/like_comment_entity.dart';

class HomeRepositoryImpl implements HomeRepository {
  final HomeApiProvider apiProvider;
  HomeRepositoryImpl(this.apiProvider);

  @override
  Future<Either<Failure, HomeEntity>> home() async {
    //
    late Either<Failure, HomeEntity> failureOrEntity;
    await apiResponseHandler<HomeModel>(
      future: apiProvider.home(),
      right: (result) {
        failureOrEntity = Right(result.toEntity());
      },
      left: (failure) {
        failureOrEntity = Left(failure);
      },
    );
    return failureOrEntity;
  }

  @override
  Future<Either<Failure, RecentNewsEntity>> recentStories(
    Map<String, String> body, {
    String? page,
    String? perPage,
  }) async {
    late Either<Failure, RecentNewsEntity> failureOrEntity;
    await apiResponseHandler<RecentNewsModel>(
      future: apiProvider.recentStories(
        body,
        page,
        perPage,
      ),
      right: (result) {
        failureOrEntity = Right(result.toEntity());
      },
      left: (failure) {
        failureOrEntity = Left(failure);
      },
    );
    return failureOrEntity;
  }

  @override
  Future<Either<Failure, TrendingNewsEntity>> trendingNews({
    String? page,
    String? perPage,
  }) async {
    //
    late Either<Failure, TrendingNewsEntity> failureOrEntity;
    await apiResponseHandler<TrendingNewsModel>(
      future: apiProvider.trendingNews(page, perPage),
      right: (result) {
        failureOrEntity = Right(result.toEntity());
      },
      left: (failure) {
        failureOrEntity = Left(failure);
      },
    );
    return failureOrEntity;
  }

  @override
  Future<Either<Failure, NewsDetailsEntity>> getNewsDetailsById(
      {required String newsId}) async {
    //
    late Either<Failure, NewsDetailsEntity> failureOrEntity;
    await apiResponseHandler<DetailsNewsModel>(
      future: apiProvider.getNewsById(newsId),
      right: (result) {
        failureOrEntity = Right(result.toEntity());
      },
      left: (failure) {
        failureOrEntity = Left(failure);
      },
    );
    return failureOrEntity;
  }

  @override
  Future<Either<Failure, GetAllCommentsEntity>> getAllNewsComments(
      {required String newsId}) async {
    //
    late Either<Failure, GetAllCommentsEntity> failureOrEntity;
    await apiResponseHandler<GetAllCommentsModel>(
      future: apiProvider.getAllNewsComments(newsId),
      right: (result) {
        failureOrEntity = Right(result.toEntity());
      },
      left: (failure) {
        failureOrEntity = Left(failure);
      },
    );
    return failureOrEntity;
  }

  @override
  Future<Either<Failure, CommentsEntity>> addComment({
    required String newsId,
    required Map<String, dynamic> body,
  }) async {
    //
    late Either<Failure, CommentsEntity> failureOrEntity;
    await apiResponseHandler<CommentsModel>(
      future: apiProvider.addComment(
        newsId,
        body,
      ),
      right: (result) {
        failureOrEntity = Right(result.toEntity());
      },
      left: (failure) {
        failureOrEntity = Left(failure);
      },
    );
    return failureOrEntity;
  }

  @override
  Future<Either<Failure, LikeCommentEntity>> likeComment({
    required String commentId,
  }) async {
    //
    late Either<Failure, LikeCommentEntity> failureOrEntity;
    await apiResponseHandler<LikeCommentModel>(
      future: apiProvider.likeComment(commentId),
      right: (result) {
        failureOrEntity = Right(result.toEntity());
      },
      left: (failure) {
        failureOrEntity = Left(failure);
      },
    );
    return failureOrEntity;
  }
}
