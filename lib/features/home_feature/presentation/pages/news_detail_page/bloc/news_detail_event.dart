part of 'news_detail_bloc.dart';

@freezed
class NewsDetailEvent with _$NewsDetailEvent {
  const factory NewsDetailEvent.getNewsById(String newsId) = _GetNewsById;
  const factory NewsDetailEvent.toggleShowReplies() = _ToggleShowReplies;
}