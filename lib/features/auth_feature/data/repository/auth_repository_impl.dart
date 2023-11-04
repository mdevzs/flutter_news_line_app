import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:news_line_app/core/utils/api_response_handler.dart';
import 'package:news_line_app/core/utils/failure.dart';
import 'package:news_line_app/features/auth_feature/data/data_source/remote/auth_api_provider.dart';
import 'package:news_line_app/features/auth_feature/data/models/countries_model.dart';
import 'package:news_line_app/features/auth_feature/data/models/tags_model.dart';
import 'package:news_line_app/features/auth_feature/data/models/user_model.dart';
import 'package:news_line_app/features/auth_feature/domain/entities/countries_entity.dart';
import 'package:news_line_app/features/auth_feature/domain/entities/tags_entity.dart';
import 'package:news_line_app/features/auth_feature/domain/entities/user_entity.dart';
import 'package:news_line_app/features/auth_feature/domain/repository/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthApiProvider apiProvider;

  AuthRepositoryImpl(this.apiProvider);

  @override
  Future<Either<Failure, UserEntity>> signIn(
      Map<String, dynamic> body, CancelToken cancelToken) async {
    //
    late Either<Failure, UserEntity> failureOrEntity;
    await apiResponseHandler<UserModel>(
      future: apiProvider.signIn(body, cancelToken),
      right: (result) {
        failureOrEntity = Right(result.toEntity());
      },
      left: (failure) {
        failureOrEntity = Left(failure);
      },
    );
    return failureOrEntity;
  }

  @override
  Future<Either<Failure, CountriesEntity>> getAllCountries(
      {String? page, String? perPage, String? q}) async {
    //
    late Either<Failure, CountriesEntity> failureOrEntity;
    await apiResponseHandler<CountriesModel>(
      future: apiProvider.getAllCountries(page, perPage, q),
      right: (result) {
        failureOrEntity = Right(result.toEntity());
      },
      left: (failure) {
        failureOrEntity = Left(failure);
      },
    );
    return failureOrEntity;
  }

  @override
  Future<Either<Failure, List<TagsEntity>>> getAllTags() async {
    late Either<Failure, List<TagsEntity>> failureOrEntity;
    await apiResponseHandler<List<TagsModel>>(
      future: apiProvider.getAllTags(),
      right: (result) {
        final tagsEntity = <TagsEntity>[];
        for (var tag in result) {
          tagsEntity.add(tag.toEntity());
        }
        failureOrEntity = Right(tagsEntity);
      },
      left: (failure) {
        failureOrEntity = Left(failure);
      },
    );
    return failureOrEntity;
  }
}
