import 'package:dartz/dartz.dart';

import '../../../../core/usecase/usecase.dart';
import '../../../../core/utils/failure.dart';
import '../../../auth_feature/domain/entities/tags_entity.dart';
import '../../../auth_feature/domain/repository/auth_repository.dart';

class RecentStoriesTagsUseCase
    extends UseCase<Either<Failure, List<TagsEntity>>, NoParams> {
  final AuthRepository authRepository;

  RecentStoriesTagsUseCase(this.authRepository);
  @override
  Future<Either<Failure, List<TagsEntity>>> call(NoParams params) async {
    final result = await authRepository.getAllTags();
    result.map(
        (r) => r.insert(0, const TagsEntity(id: 0, name: 'All', image: '')));
    return result;
  }
}
