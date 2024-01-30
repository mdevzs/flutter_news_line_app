part of 'bookmark_bloc.dart';

@freezed
class BookmarkEvent with _$BookmarkEvent {
  const factory BookmarkEvent.addNewCollection(
    String name,
  ) = _AddNewCollection;
  const factory BookmarkEvent.getAllCollection() = _GetAllCollection;
  const factory BookmarkEvent.addNewsToCollection(
    List<int> collectionId,
    NewsEntity news,
  ) = _AddNewsToCollection;
  const factory BookmarkEvent.getAllNewsOfCollection(int collectionId) =
      _GetAllNewsOfCollection;
  const factory BookmarkEvent.removeNewFromCollection(
    int collectionId,
    NewsEntity news,
  ) = _RemoveNewsFromCollection;
}
