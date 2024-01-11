part of 'comment_page_cubit.dart';

@freezed
class CommentPageState with _$CommentPageState {
  const factory CommentPageState({
    @Default(0) int seletectedTabIndex,
    @Default('-1') String newsId,
  }) = _TabBarViewState;
}
