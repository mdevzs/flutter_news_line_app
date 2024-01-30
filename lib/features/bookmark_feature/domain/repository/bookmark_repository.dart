import 'package:dartz/dartz.dart';
import 'package:news_line_app/core/utils/failure.dart';
import 'package:news_line_app/features/home_feature/domain/entities/home_entity/news_entity.dart';

import '../entities/bookmarks.dart';

abstract class BookmarkRepository {
  Future<Either<Failure, Unit>> addCollection(Bookmarks bookmarks);
  Future<Either<Failure, List<Bookmarks>>> getAllCollection();
  Future<Either<Failure, Unit>> addNewsToCollection(
      List<int> collectionsId, NewsEntity news);
  Future<Either<Failure, List<NewsEntity>>> getAllNewsOfACollection(
      int collectionId);
  Future<Either<Failure, Unit>> removeNewsOfACollection(
    int collectionId,
    NewsEntity news,
  );
}
