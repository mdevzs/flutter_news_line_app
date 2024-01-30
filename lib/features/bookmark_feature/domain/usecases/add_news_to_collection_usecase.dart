import 'package:dartz/dartz.dart';
import 'package:news_line_app/features/home_feature/domain/entities/home_entity/news_entity.dart';

import '../../../../core/usecase/usecase.dart';
import '../../../../core/utils/failure.dart';
import '../repository/bookmark_repository.dart';

class AddNewsToCollectionUsecase
    extends UseCase<Either<Failure, Unit>, (List<int> collectionsId, NewsEntity news)> {
  final BookmarkRepository repository;

  AddNewsToCollectionUsecase(this.repository);
  @override
  Future<Either<Failure, Unit>> call((List<int> collectionsId, NewsEntity news) params) {
    //
    final (List<int> collectionsId, NewsEntity news) = params;
    return repository.addNewsToCollection(collectionsId, news);
  }
}
