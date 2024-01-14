import 'package:dartz/dartz.dart';
import 'package:news_line_app/core/usecase/usecase.dart';
import 'package:news_line_app/core/utils/failure.dart';
import 'package:news_line_app/features/discover_feature/domain/entities/discover_entity.dart';
import 'package:news_line_app/features/discover_feature/domain/repository/discover_repository.dart';

class DiscoverUsecase
    extends UseCase<Either<Failure, DiscoverEntity>, NoParams> {
  final DiscoverRepository repository;
  DiscoverUsecase(this.repository);
  @override
  Future<Either<Failure, DiscoverEntity>> call(NoParams params) {
    return repository.discover();
  }
}
