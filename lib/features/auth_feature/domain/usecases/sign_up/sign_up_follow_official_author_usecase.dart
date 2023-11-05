import 'package:dartz/dartz.dart';
import 'package:news_line_app/core/usecase/usecase.dart';
import 'package:news_line_app/core/utils/failure.dart';
import 'package:news_line_app/features/auth_feature/domain/entities/user_entity.dart';
import 'package:news_line_app/features/auth_feature/domain/repository/auth_repository.dart';

class SignUpFollowOfficialAuthorUseCase
    extends UseCase<Either<Failure, List<UserEntity>>, NoParams> {
  final AuthRepository authRepository;

  SignUpFollowOfficialAuthorUseCase(this.authRepository);
  @override
  Future<Either<Failure, List<UserEntity>>> call(NoParams params) {
    return authRepository.getAllOfficialAuthors();
  }
}
