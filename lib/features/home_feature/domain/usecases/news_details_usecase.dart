import 'package:dartz/dartz.dart';
import 'package:news_line_app/core/usecase/usecase.dart';
import 'package:news_line_app/features/home_feature/domain/entities/home_entity/news_details_entity.dart';

import '../../../../core/utils/failure.dart';
import '../repository/home_repository.dart';

class NewsDetailsUsecase
    extends UseCase<Either<Failure, NewsDetailsEntity>, String> {
  final HomeRepository repository;
  NewsDetailsUsecase(this.repository);
  @override
  Future<Either<Failure, NewsDetailsEntity>> call(String params) async {
    return repository.getNewsDetailsById(newsId: params);
  }
}
