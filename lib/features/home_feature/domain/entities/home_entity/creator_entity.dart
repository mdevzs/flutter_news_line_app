import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:objectbox/objectbox.dart';

part 'creator_entity.freezed.dart';

@freezed
class CreatorEntity with _$CreatorEntity {
  @Entity(realClass: CreatorEntity)
   factory CreatorEntity({
    @Id(assignable: true) required int id,
    String? profileImage,
    required String fullName,
    required String bio,
    required int followersCount,
  }) = _CreatorModel;  
}
