import 'package:dartz/dartz.dart';
import 'package:news_line_app/core/params/edit_profile_params.dart';
import 'package:news_line_app/core/usecase/usecase.dart';
import 'package:news_line_app/core/utils/failure.dart';
import 'package:news_line_app/features/auth_feature/domain/entities/user_entity.dart';
import 'package:news_line_app/features/profile_feature/domain/repository/profile_repository.dart';

class EditProfileUsecase extends UseCase<Either<Failure, UserEntity>,
    (int, EditProfileParams body)> {
  final ProfileRepository repository;
  EditProfileUsecase(this.repository);
  @override
  Future<Either<Failure, UserEntity>> call((int, EditProfileParams) params) {
    final (profileId, body) = params;
    return repository.editProfile(profileId, body);
  }
}
