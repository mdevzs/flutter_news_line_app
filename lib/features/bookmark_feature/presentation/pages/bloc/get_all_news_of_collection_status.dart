import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:news_line_app/features/home_feature/domain/entities/home_entity/news_entity.dart';

part 'get_all_news_of_collection_status.freezed.dart';

@freezed
class GetAllNewsOfCollectionStatus with _$GetAllNewsOfCollectionStatus {
  const factory GetAllNewsOfCollectionStatus.initial() =
      _GetAllNewsOfCollectionStatusInitial;
  const factory GetAllNewsOfCollectionStatus.success(List<NewsEntity> news) =
      _GetAllNewsOfCollectionStatusSuccess;
  const factory GetAllNewsOfCollectionStatus.error(String message) =
      _GetAllNewsOfCollectionStatusError;
}
