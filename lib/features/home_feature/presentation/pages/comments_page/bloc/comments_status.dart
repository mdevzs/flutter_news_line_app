import 'package:freezed_annotation/freezed_annotation.dart';

part 'comments_status.freezed.dart';

@freezed
class CommentsStatus with _$CommentsStatus {
  const factory CommentsStatus.loading() = _CommentsStatusLoading;
  const factory CommentsStatus.success() = _CommentsStatusSuccess;
  const factory CommentsStatus.error(String message) = _CommentsStatusError;
}
