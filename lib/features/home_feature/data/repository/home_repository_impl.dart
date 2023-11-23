import 'package:dartz/dartz.dart';
import 'package:news_line_app/core/utils/failure.dart';
import 'package:news_line_app/features/home_feature/data/data_source/home_api_provider.dart';
import 'package:news_line_app/features/home_feature/data/models/home_model/home_model.dart';
import 'package:news_line_app/features/home_feature/data/models/home_model/recent_news_model.dart';
import 'package:news_line_app/features/home_feature/domain/entities/home_entity/home_entity.dart';
import 'package:news_line_app/features/home_feature/domain/entities/home_entity/recent_news_entity.dart';
import 'package:news_line_app/features/home_feature/domain/repository/home_repository.dart';

import '../../../../core/utils/api_response_handler.dart';

class HomeRepositoryImpl implements HomeRepository {
  final HomeApiProvider apiProvider;
  HomeRepositoryImpl(this.apiProvider);

  @override
  Future<Either<Failure, HomeEntity>> home() async {
    //
    late Either<Failure, HomeEntity> failureOrEntity;
    await apiResponseHandler<HomeModel>(
      future: apiProvider.home(),
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
  Future<Either<Failure, RecentNewsEntity>> recentStories(
      Map<String, String> body) async {
    late Either<Failure, RecentNewsEntity> failureOrEntity;
    await apiResponseHandler<RecentNewsModel>(
      future: apiProvider.recentStories(body),
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
