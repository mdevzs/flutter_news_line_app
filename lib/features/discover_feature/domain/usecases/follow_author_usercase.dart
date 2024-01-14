import 'package:dartz/dartz.dart';
import 'package:news_line_app/core/usecase/usecase.dart';
import 'package:news_line_app/core/utils/failure.dart';
import 'package:news_line_app/features/discover_feature/domain/repository/discover_repository.dart';

class FollowAuthorUsecase extends UseCase<Either<Failure, void>, String> {
  final DiscoverRepository repository;
  FollowAuthorUsecase(this.repository);
  @override
  Future<Either<Failure, void>> call(String params) {
    return repository.followAuthor(params);
  }
}
