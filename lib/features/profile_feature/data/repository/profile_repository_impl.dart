import 'package:dartz/dartz.dart';
import 'package:news_line_app/core/params/edit_profile_params.dart';
import 'package:news_line_app/core/utils/failure.dart';
import 'package:news_line_app/features/auth_feature/data/models/user_model.dart';
import 'package:news_line_app/features/auth_feature/domain/entities/user_entity.dart';
import 'package:news_line_app/features/profile_feature/data/data_source/profile_api_provider.dart';
import 'package:news_line_app/features/profile_feature/domain/repository/profile_repository.dart';

import '../../../../core/utils/api_response_handler.dart';
import '../../domain/entities/profile_entity.dart';
import '../models/profile_model.dart';

class ProfileRepositoryImpl implements ProfileRepository {
  final ProfileApiProvider apiProvider;
  ProfileRepositoryImpl(this.apiProvider);

  @override
  Future<Either<Failure, ProfileEntity>> profile(int profileId) async {
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

  @override
  Future<Either<Failure, UserEntity>> editProfile(
      int profileId, EditProfileParams body) async {
    late Either<Failure, UserEntity> failureOrEntity;
    await apiResponseHandler<UserModel>(
      future: apiProvider.editProfile(
        profileId,
        body.fullName,
        body.username,
        body.bio,
        body.website,
        body.imageFile,
      ),
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
