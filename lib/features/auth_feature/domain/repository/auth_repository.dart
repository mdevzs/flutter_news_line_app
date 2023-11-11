import 'package:dio/dio.dart';
import 'package:news_line_app/core/params/sign_up_params.dart';
import 'package:news_line_app/core/utils/failure.dart';
import 'package:news_line_app/features/auth_feature/domain/entities/countries_entity.dart';
import 'package:news_line_app/features/auth_feature/domain/entities/tags_entity.dart';
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
  Future<Either<Failure, List<TagsEntity>>> getAllTags();
  Future<Either<Failure, List<UserEntity>>> getAllOfficialAuthors();
  Future<Either<Failure, UserEntity>> signUp(SignUpParams signUpParams);
}
