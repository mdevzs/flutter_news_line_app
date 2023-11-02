import 'package:dio/dio.dart';
import 'package:news_line_app/core/utils/failure.dart';
import 'package:news_line_app/features/auth_feature/domain/entities/countries_entity.dart';
import 'package:news_line_app/features/auth_feature/domain/entities/user_entity.dart';
import 'package:dartz/dartz.dart';

abstract class AuthRepository {
  Future<Either<Failure, UserEntity>> signIn(
      Map<String, dynamic> body, CancelToken cancelToken);
  Future<Either<Failure, CountriesEntity>> getAllCountries({
    String? page,
    String? perPage,
    String? q,
  });
}
