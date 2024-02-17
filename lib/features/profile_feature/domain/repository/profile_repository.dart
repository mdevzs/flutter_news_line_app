import 'package:dartz/dartz.dart';
import 'package:news_line_app/core/params/edit_profile_params.dart';
import 'package:news_line_app/core/utils/failure.dart';
import 'package:news_line_app/features/auth_feature/domain/entities/user_entity.dart';
import '../entities/profile_entity.dart';

abstract class ProfileRepository {
  Future<Either<Failure, ProfileEntity>> profile(int profileId);
  Future<Either<Failure, UserEntity>> editProfile(
    int profileId,
    EditProfileParams body,
  );
}
