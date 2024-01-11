import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:news_line_app/features/home_feature/domain/entities/home_entity/news_details_entity.dart';

part 'news_details_status.freezed.dart';

@freezed
class NewsDetailsStatus with _$NewsDetailsStatus {
  const factory NewsDetailsStatus.loading() = _NewsDetailsStatusLoading;
  const factory NewsDetailsStatus.success(NewsDetailsEntity detailsEntity) =
      _NewsDetailsStatusSuccess;
  const factory NewsDetailsStatus.error(String message) =
      _NewsDetailsStatusError;
}
