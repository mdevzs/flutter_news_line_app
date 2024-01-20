import 'package:dartz/dartz.dart';
import 'package:news_line_app/core/usecase/usecase.dart';
import 'package:news_line_app/core/utils/failure.dart';
import 'package:news_line_app/features/discover_feature/domain/entities/profile_entity.dart';
import 'package:news_line_app/features/discover_feature/domain/repository/discover_repository.dart';

class ProfileUsecase extends UseCase<Either<Failure, ProfileEntity>, int> {
  final DiscoverRepository repository;
  ProfileUsecase(this.repository);
  @override
  Future<Either<Failure, ProfileEntity>> call(int params) {
    return repository.profile(params);
  }
}
