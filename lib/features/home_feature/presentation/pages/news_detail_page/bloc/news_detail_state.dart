part of 'news_detail_bloc.dart';

@freezed
class NewsDetailState with _$NewsDetailState {
  const factory NewsDetailState({
    @Default(false) bool showReplies,
    @Default(NewsDetailsStatus.loading()) NewsDetailsStatus newsDetailsStatus,
  }) = _NewsDetailState;
}
