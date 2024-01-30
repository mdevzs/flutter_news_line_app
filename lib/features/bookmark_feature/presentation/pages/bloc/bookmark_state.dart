part of 'bookmark_bloc.dart';

@freezed
class BookmarkState with _$BookmarkState {
  const factory BookmarkState({
    @Default([]) List<Bookmarks> collections,
    @Default(AddNewCollectionStatus.initial())
    AddNewCollectionStatus addNewCollectionStatus,
    @Default(AddNewsToCollectionStatus.initial())
    AddNewsToCollectionStatus addNewsToCollectionStatus,
    @Default(GetAllCollectionStatus.initial())
    GetAllCollectionStatus getAllCollectionStatus,
    @Default(GetAllNewsOfCollectionStatus.initial())
    GetAllNewsOfCollectionStatus getAllNewsOfCollectionStatus,
    @Default(RemoveNewsFromCollectionStatus.initial())
    RemoveNewsFromCollectionStatus removeNewsFromCollectionStatus,
  }) = _BookmarkState;
}
