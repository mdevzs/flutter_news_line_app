import 'package:dartz/dartz.dart';
import 'package:news_line_app/core/usecase/usecase.dart';
import 'package:news_line_app/core/utils/failure.dart';
import 'package:news_line_app/features/home_feature/domain/entities/home_entity/home_entity.dart';
import 'package:news_line_app/features/home_feature/domain/entities/home_entity/tag_entity.dart';
import 'package:news_line_app/features/home_feature/domain/repository/home_repository.dart';

class HomeUsecase extends UseCase<Either<Failure, HomeEntity>, NoParams> {
  final HomeRepository repository;
  HomeUsecase(this.repository);
  @override
  Future<Either<Failure, HomeEntity>> call(NoParams params) async {
    final result = await repository.home();
    result.map((r) => r.tags?.insert(0, TagEntity(id:0,tag:'All')));
    return result;
  }
}
