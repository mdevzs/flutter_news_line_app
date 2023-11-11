import 'package:dartz/dartz.dart';
import 'package:news_line_app/core/params/sign_up_params.dart';
import 'package:news_line_app/features/auth_feature/domain/entities/user_entity.dart';

import '../../../../../core/usecase/usecase.dart';
import '../../../../../core/utils/failure.dart';
import '../../repository/auth_repository.dart';

class SignUpCreateProfileUseCase
    extends UseCase<Either<Failure, UserEntity>, SignUpParams> {
  final AuthRepository authRepository;
  SignUpCreateProfileUseCase(this.authRepository);

  @override
  Future<Either<Failure, UserEntity>> call(SignUpParams params) {
    return authRepository.signUp(params);
  }
}
