part of 'add_tag_cubit.dart';

@freezed
class AddTagState with _$AddTagState {
   const factory AddTagState({
    @Default(IListConst([])) IList<String> tags,
  }) = _AddTagState;
}
