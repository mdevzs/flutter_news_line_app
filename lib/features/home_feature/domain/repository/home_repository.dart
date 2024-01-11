import 'package:dartz/dartz.dart';
import 'package:news_line_app/core/utils/failure.dart';
import 'package:news_line_app/features/home_feature/domain/entities/home_entity/comments_entity.dart';
import 'package:news_line_app/features/home_feature/domain/entities/home_entity/get_all_comments_entity.dart';
import 'package:news_line_app/features/home_feature/domain/entities/home_entity/home_entity.dart';
import 'package:news_line_app/features/home_feature/domain/entities/home_entity/like_comment_entity.dart';
import 'package:news_line_app/features/home_feature/domain/entities/home_entity/recent_news_entity.dart';
import 'package:news_line_app/features/home_feature/domain/entities/home_entity/trending_news_entity.dart';

import '../entities/home_entity/news_details_entity.dart';

abstract class HomeRepository {
  Future<Either<Failure, HomeEntity>> home();
  Future<Either<Failure, TrendingNewsEntity>> trendingNews(
      {String? page, String? perPage});
  Future<Either<Failure, RecentNewsEntity>> recentStories(
    Map<String, String> body, {
    String? page,
    String? perPage,
  });
  Future<Either<Failure, NewsDetailsEntity>> getNewsDetailsById({
    required String newsId,
  });
  Future<Either<Failure, GetAllCommentsEntity>> getAllNewsComments({
    required String newsId,
  });
  Future<Either<Failure, CommentsEntity>> addComment({
    required String newsId,
    required Map<String, dynamic> body,
  });
  Future<Either<Failure, LikeCommentEntity>> likeComment({
    required String commentId,
  });
}
