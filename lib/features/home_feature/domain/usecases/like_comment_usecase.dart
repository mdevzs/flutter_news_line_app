import 'package:dartz/dartz.dart';
import 'package:news_line_app/core/usecase/usecase.dart';
import 'package:news_line_app/core/utils/failure.dart';
import 'package:news_line_app/features/home_feature/domain/entities/home_entity/like_comment_entity.dart';

import '../repository/home_repository.dart';

class LikeCommentUsecase extends UseCase<Either<Failure, LikeCommentEntity>, String> {
  final HomeRepository repository;
  LikeCommentUsecase(this.repository);
  @override
  Future<Either<Failure, LikeCommentEntity>> call(
    String params,
  ) {
    return repository.likeComment(
      commentId: params,
    );
  }
}
