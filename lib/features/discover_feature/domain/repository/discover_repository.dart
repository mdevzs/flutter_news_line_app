import 'package:dartz/dartz.dart';
import 'package:news_line_app/core/utils/failure.dart';
import 'package:news_line_app/features/discover_feature/domain/entities/discover_entity.dart';

abstract class DiscoverRepository {
  Future<Either<Failure, DiscoverEntity>> discover();
  Future<Either<Failure, void>> followAuthor(String followingId);
}
