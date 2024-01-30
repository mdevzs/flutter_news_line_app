import 'package:dartz/dartz.dart';
import 'package:news_line_app/features/home_feature/domain/entities/home_entity/news_entity.dart';

import '../../../../core/usecase/usecase.dart';
import '../../../../core/utils/failure.dart';
import '../repository/bookmark_repository.dart';

class GetAllNewsOfCollectionUsecase
    extends UseCase<Either<Failure, List<NewsEntity>>, int> {
  final BookmarkRepository repository;

  GetAllNewsOfCollectionUsecase(this.repository);
  @override
  Future<Either<Failure, List<NewsEntity>>> call(int params) {
    return repository.getAllNewsOfACollection(params);
  }
}
