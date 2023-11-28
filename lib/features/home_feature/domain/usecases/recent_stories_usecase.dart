import 'package:dartz/dartz.dart';
import 'package:news_line_app/core/usecase/usecase.dart';
import 'package:news_line_app/core/utils/failure.dart';
import 'package:news_line_app/features/home_feature/domain/entities/home_entity/recent_news_entity.dart';

import '../repository/home_repository.dart';

class RecentStoriesUsecase extends UseCase<Either<Failure, RecentNewsEntity>,
    (Map<String, String>, String? page, String? perPage)> {
  final HomeRepository repository;
  RecentStoriesUsecase(this.repository);
  @override
  Future<Either<Failure, RecentNewsEntity>> call(
    (
      Map<String, String>,
      String? page,
      String? perPage,
    ) params,
  ) {
    final (body, page, perPage) = params;
    return repository.recentStories(
      body,
      page: page,
      perPage: perPage,
    );
  }
}
