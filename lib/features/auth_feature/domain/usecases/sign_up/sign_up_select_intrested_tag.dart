import 'package:dartz/dartz.dart';
import 'package:news_line_app/core/usecase/usecase.dart';
import 'package:news_line_app/core/utils/failure.dart';
import 'package:news_line_app/features/auth_feature/domain/entities/tags_entity.dart';

import '../../repository/auth_repository.dart';

class SignUpSelectIntrestedTagUseCase
    extends UseCase<Either<Failure, List<TagsEntity>>, NoParams> {
  final AuthRepository authRepository;

  SignUpSelectIntrestedTagUseCase(this.authRepository);
  @override
  Future<Either<Failure, List<TagsEntity>>> call(NoParams params) {
    return authRepository.getAllTags();
  }
}
