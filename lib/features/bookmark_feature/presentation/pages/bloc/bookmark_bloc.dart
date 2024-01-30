import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:news_line_app/features/bookmark_feature/domain/usecases/remove_news_from_collection.dart';
import 'package:news_line_app/features/bookmark_feature/presentation/pages/bloc/add_new_collection_status.dart';
import 'package:news_line_app/features/home_feature/domain/entities/home_entity/news_entity.dart';

import '../../../../../core/usecase/usecase.dart';
import '../../../domain/entities/bookmarks.dart';
import '../../../domain/usecases/add_new_collection_usecase.dart';
import '../../../domain/usecases/add_news_to_collection_usecase.dart';
import '../../../domain/usecases/get_all_collections_usecase.dart';
import '../../../domain/usecases/get_all_news_of_collection.dart';
import 'add_news_to_collection_status.dart';
import 'get_all_collection_status.dart';
import 'get_all_news_of_collection_status.dart';
import 'remove_news_from_collection_status.dart';

part 'bookmark_event.dart';
part 'bookmark_state.dart';
part 'bookmark_bloc.freezed.dart';

class BookmarkBloc extends Bloc<BookmarkEvent, BookmarkState> {
  final AddNewCollectionUsecase addNewCollectionUsecase;
  final GetAllCollectionsUsecase getAllCollectionsUsecase;
  final AddNewsToCollectionUsecase addNewsToCollectionUsecase;
  final GetAllNewsOfCollectionUsecase getAllNewsOfCollectionUsecase;
  final RemoveNewsFromCollectionUsecase removeNewsFromCollectionUsecase;
  BookmarkBloc(
    this.addNewCollectionUsecase,
    this.addNewsToCollectionUsecase,
    this.getAllCollectionsUsecase,
    this.getAllNewsOfCollectionUsecase,
    this.removeNewsFromCollectionUsecase,
  ) : super(const BookmarkState()) {
    on<BookmarkEvent>((event, emit) async {
      await event.when(
        addNewCollection: (name) async {
          await _addNewCollection(emit, name);
          await _getAllCollections(emit);
        },
        getAllCollection: () => _getAllCollections(emit),
        addNewsToCollection: (collectionsId, news) =>
            _addNewsToCollection(emit, collectionsId, news),
        getAllNewsOfCollection: (collectionId) =>
            _getAllNewsOfCollection(emit, collectionId),
        removeNewFromCollection: (collectionId, news) async {
          await _removeNewsFromCollection(emit, collectionId, news);
          await _getAllNewsOfCollection(emit, collectionId);
        },
      );
    });
  }

  _addNewCollection(Emitter<BookmarkState> emit, String name) async {
    final bookmark = Bookmarks(
      name: name,
    );
    final failureOrSuccess = await addNewCollectionUsecase(bookmark);
    failureOrSuccess.fold(
      (l) => emit(
        state.copyWith(
          addNewCollectionStatus: AddNewCollectionStatus.error(
            l.message,
          ),
        ),
      ),
      (r) => emit(
        state.copyWith(
          addNewCollectionStatus: const AddNewCollectionStatus.success(),
        ),
      ),
    );
  }

  _getAllCollections(
    Emitter<BookmarkState> emit,
  ) async {
    final failureOrSuccess = await getAllCollectionsUsecase(NoParams());
    failureOrSuccess.fold(
      (l) => emit(
        state.copyWith(
          getAllCollectionStatus: GetAllCollectionStatus.error(
            l.message,
          ),
        ),
      ),
      (collections) => emit(
        state.copyWith(
          collections: collections,
          getAllCollectionStatus: GetAllCollectionStatus.success(collections),
        ),
      ),
    );
  }

  _addNewsToCollection(
    Emitter<BookmarkState> emit,
    List<int> collectionsId,
    NewsEntity news,
  ) async {
    final failureOrSuccess =
        await addNewsToCollectionUsecase((collectionsId, news));
    failureOrSuccess.fold(
      (l) {
        emit(
          state.copyWith(
            addNewsToCollectionStatus: AddNewsToCollectionStatus.error(
              l.message,
            ),
          ),
        );
        debugPrint(l.message);
      },
      (r) => emit(
        state.copyWith(
          addNewsToCollectionStatus: const AddNewsToCollectionStatus.success(),
        ),
      ),
    );
  }

  _getAllNewsOfCollection(
    Emitter<BookmarkState> emit,
    int collectionId,
  ) async {
    final failureOrSuccess = await getAllNewsOfCollectionUsecase(collectionId);
    failureOrSuccess.fold(
      (l) {
        emit(
          state.copyWith(
            getAllNewsOfCollectionStatus: GetAllNewsOfCollectionStatus.error(
              l.message,
            ),
          ),
        );
        debugPrint(l.message);
      },
      (news) {
        emit(
          state.copyWith(
            getAllNewsOfCollectionStatus:
                GetAllNewsOfCollectionStatus.success(news),
          ),
        );
      },
    );
  }

  _removeNewsFromCollection(
    Emitter<BookmarkState> emit,
    int collectionId,
    NewsEntity news,
  ) async {
    final failureOrSuccess =
        await removeNewsFromCollectionUsecase((collectionId, news));
    failureOrSuccess.fold(
      (l) {
        emit(
          state.copyWith(
            removeNewsFromCollectionStatus:
                RemoveNewsFromCollectionStatus.error(
              l.message,
            ),
          ),
        );
        debugPrint(l.message);
      },
      (r) => emit(
        state.copyWith(
          removeNewsFromCollectionStatus:
              const RemoveNewsFromCollectionStatus.success(),
        ),
      ),
    );
  }
}
