import 'package:dartz/dartz.dart';
import 'package:news_line_app/core/utils/failure.dart';
import 'package:news_line_app/features/discover_feature/data/data_source/discover_api_provider.dart';
import 'package:news_line_app/features/discover_feature/data/models/discover_model.dart';
import 'package:news_line_app/features/discover_feature/data/models/discover_search_model.dart';
import 'package:news_line_app/features/discover_feature/data/models/profile_model.dart';
import 'package:news_line_app/features/discover_feature/domain/entities/discover_entity.dart';
import 'package:news_line_app/features/discover_feature/domain/entities/discover_search_entity.dart';
import 'package:news_line_app/features/discover_feature/domain/entities/profile_entity.dart';
import 'package:news_line_app/features/discover_feature/domain/repository/discover_repository.dart';

import '../../../../core/utils/api_response_handler.dart';

class DiscoverRepositoryImpl implements DiscoverRepository {
  final DiscoverApiProvider apiProvider;
  DiscoverRepositoryImpl(this.apiProvider);
  @override
  Future<Either<Failure, DiscoverEntity>> discover() async {
    //
    late Either<Failure, DiscoverEntity> failureOrEntity;
    await apiResponseHandler<DiscoverModel>(
      future: apiProvider.discover(),
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
  Future<Either<Failure, void>> followAuthor(String followingId) async{
    //
    late Either<Failure, void> failureOrEntity;
    await apiResponseHandler<void>(
      future: apiProvider.followAuthor(followingId),
      right: (result) {
        failureOrEntity = Right(result);
      },
      left: (failure) {
        failureOrEntity = Left(failure);
      },
    );
    return failureOrEntity;
  }

  @override
  Future<Either<Failure, DiscoverSearchEntity>> search(String s) async{
    //
    late Either<Failure, DiscoverSearchEntity> failureOrEntity;
    await apiResponseHandler<DiscoverSearchModel>(
      future: apiProvider.search(s),
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
  Future<Either<Failure, ProfileEntity>> profile(int profileId) async{
    //
    late Either<Failure, ProfileEntity> failureOrEntity;
    await apiResponseHandler<ProfileModel>(
      future: apiProvider.profile(profileId),
      right: (result) {
        failureOrEntity = Right(result.toEntity());
      },
      left: (failure) {
        failureOrEntity = Left(failure);
      },
    );
    return failureOrEntity;
  }
}
