import 'package:dartz/dartz.dart';
import 'package:news_line_app/core/utils/failure.dart';
import 'package:news_line_app/features/home_feature/domain/entities/home_entity/home_entity.dart';
import 'package:news_line_app/features/home_feature/domain/entities/home_entity/recent_news_entity.dart';
import 'package:news_line_app/features/home_feature/domain/entities/home_entity/trending_news_entity.dart';

abstract class HomeRepository {
  Future<Either<Failure, HomeEntity>> home();
  Future<Either<Failure, TrendingNewsEntity>> trendingNews(
      {String? page, String? perPage});
  Future<Either<Failure, RecentNewsEntity>> recentStories(
    Map<String, String> body, {
    String? page,
    String? perPage,
  });
}
