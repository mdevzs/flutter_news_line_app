import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_up_loading_more.freezed.dart';

@freezed
class LoadingMore with _$LoadingMore {
  const factory LoadingMore.loading() = _LoadingMoreLoding;
  const factory LoadingMore.error(String message) = _LoadingMoreError;
}
