import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:news_line_app/features/home_feature/domain/entities/home_entity/creator_entity.dart';

part 'creator_model.freezed.dart';
part 'creator_model.g.dart';

@freezed
class CreatorModel with _$CreatorModel {
  const factory CreatorModel({
    required int id,
    String? profileImage,
    required String fullName,
    String? bio,
    int? followersCount,
  }) = _CreatorModel;

  const CreatorModel._();

  factory CreatorModel.fromJson(Map<String, Object?> json) =>
      _$CreatorModelFromJson(json);

  CreatorEntity toEntity() => CreatorEntity(
        id: id,
        fullName: fullName,
        profileImage: profileImage,
        bio: bio ?? '',
        followersCount: followersCount ?? -1,
      );
}
