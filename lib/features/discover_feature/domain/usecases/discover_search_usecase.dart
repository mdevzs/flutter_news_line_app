import 'package:dartz/dartz.dart';
import 'package:news_line_app/core/usecase/usecase.dart';
import 'package:news_line_app/core/utils/failure.dart';
import 'package:news_line_app/features/discover_feature/domain/entities/discover_search_entity.dart';
import 'package:news_line_app/features/discover_feature/domain/repository/discover_repository.dart';

class DiscoverSearchUsecase
    extends UseCase<Either<Failure, DiscoverSearchEntity>, String> {
  final DiscoverRepository repository;
  DiscoverSearchUsecase(this.repository);
  @override
  Future<Either<Failure, DiscoverSearchEntity>> call(String params) {
    return repository.search(params);
  }
}