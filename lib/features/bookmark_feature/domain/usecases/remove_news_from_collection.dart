import 'package:dartz/dartz.dart';
import 'package:news_line_app/features/home_feature/domain/entities/home_entity/news_entity.dart';

import '../../../../core/usecase/usecase.dart';
import '../../../../core/utils/failure.dart';
import '../repository/bookmark_repository.dart';

class RemoveNewsFromCollectionUsecase extends UseCase<Either<Failure, Unit>,
    (int collectionId, NewsEntity news)> {
  final BookmarkRepository repository;

  RemoveNewsFromCollectionUsecase(this.repository);
  @override
  Future<Either<Failure, Unit>> call(
      (int collectionId, NewsEntity news) params) {
    //
    final (int collectionId, NewsEntity news) = params;
    return repository.removeNewsOfACollection(collectionId, news);
  }
}
