import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:news_line_app/core/data/models/error_model.dart';
import 'package:news_line_app/core/utils/failure.dart';
import 'package:news_line_app/features/auth_feature/data/data_source/remote/auth_api_provider.dart';
import 'package:news_line_app/features/auth_feature/domain/entities/user_entity.dart';
import 'package:news_line_app/features/auth_feature/domain/repository/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthApiProvider apiProvider;

  AuthRepositoryImpl(this.apiProvider);

  @override
  Future<Either<Failure, UserEntity>> signIn(Map<String, dynamic> body) async {
    try {
      // var httpResponse = await apiProvider.signIn(body);
      // if (httpResponse.response.statusCode == HttpStatus.ok) {
      //   final user = httpResponse.data.toEntity();
      //   return Right(user);
      // }
      // if (httpResponse.response.statusCode == HttpStatus.badRequest) {
      //   return const Left(Failure.serverFailure(
      //     message: 'server failure',
      //   ));
      // }
      // return const Left(Failure.serverFailure(
      //   message: 'something went wrong',
      // ));
      // Either<Failure, UserEntity> res = await apiProvider
      //     .signIn(body)
      //     .then((value) => Right<Failure, UserEntity>(value.toEntity()))
      //     .onError((error, stackTrace) => null);

      // return res;
      final user = await apiProvider.signIn(body);
      return Right(user.toEntity());
    } on DioException catch (dioException) {
      if (dioException.type == DioExceptionType.connectionTimeout) {
        return const Left(Failure.generalFailure(
        message: 'something went wrong please try agin later',
      ));
      }
      return Left(
        Failure.serverFailure(
            message: ErrorModel.fromJson(dioException.response?.data).message),
      );
    } catch (e) {
      //debugPrint('something went wrong please try agin later');
      return const Left(Failure.generalFailure(
        message: 'something went wrong please try agin later',
      ));
    }
  }
}
