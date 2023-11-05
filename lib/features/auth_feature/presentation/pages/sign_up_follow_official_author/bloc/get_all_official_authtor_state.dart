import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:news_line_app/features/auth_feature/domain/entities/user_entity.dart';

part 'get_all_official_authtor_state.freezed.dart';

@freezed
class GetAllOfficialAuthorState with _$GetAllOfficialAuthorState {
  const factory GetAllOfficialAuthorState.initial() = _AllOfficialAuthorInitial;
  const factory GetAllOfficialAuthorState.loading() = _AllOfficialAuthorLoading;
  const factory GetAllOfficialAuthorState.success(List<UserEntity> officialAuthor) =
      _AllOfficialAuthorSuccess;
  const factory GetAllOfficialAuthorState.error(String message) = _AllOfficialAuthorError;
}
