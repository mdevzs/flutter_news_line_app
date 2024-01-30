import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:news_line_app/core/utils/failure.dart';
import 'package:news_line_app/features/bookmark_feature/domain/repository/bookmark_repository.dart';
import 'package:news_line_app/features/home_feature/domain/entities/home_entity/creator_entity.dart';
import 'package:news_line_app/features/home_feature/domain/entities/home_entity/news_entity.dart';

import '../../../../core/data/local/app_db.dart';
import '../../domain/entities/bookmarks.dart';

class BookmarkRepositoryImpl implements BookmarkRepository {
  final AppDb appDb;

  BookmarkRepositoryImpl(this.appDb);
  @override
  Future<Either<Failure, Unit>> addCollection(Bookmarks bookmarks) async {
    try {
      appDb.store.box<Bookmarks>().put(bookmarks);
      appDb.store.box<Bookmarks>().getAll();
      //debugPrint(collections.toString());
      return right(unit);
    } catch (e) {
      debugPrint(e.toString());
      return left(
        Failure.generalFailure(
          message: e.toString(),
        ),
      );
    }
  }

  @override
  Future<Either<Failure, Unit>> addNewsToCollection(
      List<int> collectionsId, NewsEntity news) async {
    try {
      for (var collectionId in collectionsId) {
        final collection = appDb.store.box<Bookmarks>().get(collectionId);
        //* if Entity using self assign id needs to put it first to the  NewsEntity.
        appDb.store.box<CreatorEntity>().put(news.creator!);
        news.creatorRelation.target = news.creator;
        appDb.store.box<NewsEntity>().put(news);
        //* then:
        collection?.news.add(news);
        collection?.news.applyToDb();
      }
      return right(unit);
    } catch (e) {
      debugPrint(e.toString());
      return left(
        Failure.generalFailure(
          message: e.toString(),
        ),
      );
    }
  }

  @override
  Future<Either<Failure, List<Bookmarks>>> getAllCollection() async {
    try {
      final collection = appDb.store.box<Bookmarks>().getAll();
      return right(collection);
    } catch (e) {
      debugPrint(e.toString());
      return left(
        Failure.generalFailure(
          message: e.toString(),
        ),
      );
    }
  }

  @override
  Future<Either<Failure, List<NewsEntity>>> getAllNewsOfACollection(
      int collectionId) async {
    try {
      final collectionNews =
          appDb.store.box<Bookmarks>().get(collectionId)?.news.toList();
      return right(collectionNews ?? []);
    } catch (e) {
      debugPrint(e.toString());
      return left(
        Failure.generalFailure(
          message: e.toString(),
        ),
      );
    }
  }

  @override
  Future<Either<Failure, Unit>> removeNewsOfACollection(
      int collectionId, NewsEntity news) async {
    try {
      final collection = appDb.store.box<Bookmarks>().get(collectionId)!;
      collection.news.removeWhere(
        (element) => element.id == news.id,
      );
      collection.news.applyToDb();
      return right(unit);
    } catch (e) {
      debugPrint(e.toString());
      return left(
        Failure.generalFailure(
          message: e.toString(),
        ),
      );
    }
  }
}
