import 'package:freezed_annotation/freezed_annotation.dart';

part 'creator_entity.freezed.dart';

@freezed
class CreatorEntity with _$CreatorEntity {
  const factory CreatorEntity({
    required int id,
    String? profileImage,
    required String fullName,
    required String bio,
    required int followersCount,
  }) = _CreatorModel;
}
