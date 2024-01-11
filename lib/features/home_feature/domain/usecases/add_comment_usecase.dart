import 'package:dartz/dartz.dart';
import 'package:news_line_app/core/usecase/usecase.dart';
import 'package:news_line_app/core/utils/failure.dart';
import 'package:news_line_app/features/home_feature/domain/entities/home_entity/comments_entity.dart';

import '../repository/home_repository.dart';

class AddCommentUsecase extends UseCase<
    Either<Failure, CommentsEntity>,
    (
      String newsId,
      Map<String, dynamic> body,
    )> {
  final HomeRepository repository;
  AddCommentUsecase(this.repository);
  @override
  Future<Either<Failure, CommentsEntity>> call(
    (
      String newsId,
      Map<String, dynamic> body,
    ) params,
  ) {
    final (newsId, body) = params;
    return repository.addComment(
      newsId: newsId,
      body: body,
    );
  }
}
