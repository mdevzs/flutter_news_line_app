import 'package:dartz/dartz.dart';
import 'package:news_line_app/features/home_feature/domain/entities/home_entity/trending_news_entity.dart';

import '../../../../core/usecase/usecase.dart';
import '../../../../core/utils/failure.dart';
import '../repository/home_repository.dart';

class TrendingUsecase extends UseCase<Either<Failure, TrendingNewsEntity>,
    (String? page, String? perPage)> {
  //
  final HomeRepository repository;
  TrendingUsecase(this.repository);
  @override
  Future<Either<Failure, TrendingNewsEntity>> call(
      (String? page, String? perPage) params) {
    final (page, perPage) = params;
    return repository.trendingNews(
      page: page,
      perPage: perPage,
    );
  }
}
