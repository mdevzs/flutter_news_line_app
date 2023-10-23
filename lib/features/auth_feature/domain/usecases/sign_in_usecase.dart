import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:news_line_app/core/usecase/usecase.dart';
import 'package:news_line_app/core/utils/failure.dart';
import 'package:news_line_app/features/auth_feature/domain/entities/user_entity.dart';
import 'package:news_line_app/features/auth_feature/domain/repository/auth_repository.dart';

class SignInUsecase extends UseCase<Either<Failure, UserEntity>,
    (Map<String, dynamic>, CancelToken cancelToken)> {
  final AuthRepository authRepository;

  SignInUsecase(this.authRepository);

  @override
  Future<Either<Failure, UserEntity>> call(
    (Map<String, dynamic>, CancelToken) params,
  ) {
    final (body, cancelToken) = params;
    return authRepository.signIn(body, cancelToken);
  }
}
