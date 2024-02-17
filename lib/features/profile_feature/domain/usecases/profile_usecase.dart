import 'package:dartz/dartz.dart';
import 'package:news_line_app/core/usecase/usecase.dart';
import 'package:news_line_app/core/utils/failure.dart';
import 'package:news_line_app/features/profile_feature/domain/repository/profile_repository.dart';

import '../entities/profile_entity.dart';

class ProfileUsecase extends UseCase<Either<Failure, ProfileEntity>, int> {
  final ProfileRepository repository;
  ProfileUsecase(this.repository);
  @override
  Future<Either<Failure, ProfileEntity>> call(int params) {
    return repository.profile(params);
  }
}
