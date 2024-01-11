import 'package:dartz/dartz.dart';
import 'package:news_line_app/core/usecase/usecase.dart';
import 'package:news_line_app/features/home_feature/domain/entities/home_entity/get_all_comments_entity.dart';

import '../../../../core/utils/failure.dart';
import '../repository/home_repository.dart';

class NewsCommentsUsecase
    extends UseCase<Either<Failure, GetAllCommentsEntity>, String> {
  final HomeRepository repository;
  NewsCommentsUsecase(this.repository);
  @override
  Future<Either<Failure, GetAllCommentsEntity>> call(String params) async {
    return repository.getAllNewsComments(newsId: params);
  }
}
