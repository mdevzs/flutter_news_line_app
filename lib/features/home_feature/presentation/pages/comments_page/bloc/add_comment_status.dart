import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_comment_status.freezed.dart';

@freezed
class AddCommentStatus with _$AddCommentStatus {
  const factory AddCommentStatus.initial() = _AddCommentStatusInitial;
  const factory AddCommentStatus.loading() = _AddCommentStatusLoading;
  const factory AddCommentStatus.success() = _AddCommentStatusSuccess;
  const factory AddCommentStatus.error(String message) = _AddCommentStatusError;
}
