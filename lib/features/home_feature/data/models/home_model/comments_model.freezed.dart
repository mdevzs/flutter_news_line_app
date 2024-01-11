// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'comments_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CommentsModel _$CommentsModelFromJson(Map<String, dynamic> json) {
  return _CommentsModel.fromJson(json);
}

/// @nodoc
mixin _$CommentsModel {
  int get id => throw _privateConstructorUsedError;
  String get comment => throw _privateConstructorUsedError;
  int get newsId => throw _privateConstructorUsedError;
  int get creatorId => throw _privateConstructorUsedError;
  int? get parentId => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  CreatorModel get creator => throw _privateConstructorUsedError;
  int get likeCounts => throw _privateConstructorUsedError;
  bool get isLiked => throw _privateConstructorUsedError;
  List<CommentsModel> get replies => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommentsModelCopyWith<CommentsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentsModelCopyWith<$Res> {
  factory $CommentsModelCopyWith(
          CommentsModel value, $Res Function(CommentsModel) then) =
      _$CommentsModelCopyWithImpl<$Res, CommentsModel>;
  @useResult
  $Res call(
      {int id,
      String comment,
      int newsId,
      int creatorId,
      int? parentId,
      String createdAt,
      CreatorModel creator,
      int likeCounts,
      bool isLiked,
      List<CommentsModel> replies});

  $CreatorModelCopyWith<$Res> get creator;
}

/// @nodoc
class _$CommentsModelCopyWithImpl<$Res, $Val extends CommentsModel>
    implements $CommentsModelCopyWith<$Res> {
  _$CommentsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? comment = null,
    Object? newsId = null,
    Object? creatorId = null,
    Object? parentId = freezed,
    Object? createdAt = null,
    Object? creator = null,
    Object? likeCounts = null,
    Object? isLiked = null,
    Object? replies = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
      newsId: null == newsId
          ? _value.newsId
          : newsId // ignore: cast_nullable_to_non_nullable
              as int,
      creatorId: null == creatorId
          ? _value.creatorId
          : creatorId // ignore: cast_nullable_to_non_nullable
              as int,
      parentId: freezed == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      creator: null == creator
          ? _value.creator
          : creator // ignore: cast_nullable_to_non_nullable
              as CreatorModel,
      likeCounts: null == likeCounts
          ? _value.likeCounts
          : likeCounts // ignore: cast_nullable_to_non_nullable
              as int,
      isLiked: null == isLiked
          ? _value.isLiked
          : isLiked // ignore: cast_nullable_to_non_nullable
              as bool,
      replies: null == replies
          ? _value.replies
          : replies // ignore: cast_nullable_to_non_nullable
              as List<CommentsModel>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CreatorModelCopyWith<$Res> get creator {
    return $CreatorModelCopyWith<$Res>(_value.creator, (value) {
      return _then(_value.copyWith(creator: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CommentsModelImplCopyWith<$Res>
    implements $CommentsModelCopyWith<$Res> {
  factory _$$CommentsModelImplCopyWith(
          _$CommentsModelImpl value, $Res Function(_$CommentsModelImpl) then) =
      __$$CommentsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String comment,
      int newsId,
      int creatorId,
      int? parentId,
      String createdAt,
      CreatorModel creator,
      int likeCounts,
      bool isLiked,
      List<CommentsModel> replies});

  @override
  $CreatorModelCopyWith<$Res> get creator;
}

/// @nodoc
class __$$CommentsModelImplCopyWithImpl<$Res>
    extends _$CommentsModelCopyWithImpl<$Res, _$CommentsModelImpl>
    implements _$$CommentsModelImplCopyWith<$Res> {
  __$$CommentsModelImplCopyWithImpl(
      _$CommentsModelImpl _value, $Res Function(_$CommentsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? comment = null,
    Object? newsId = null,
    Object? creatorId = null,
    Object? parentId = freezed,
    Object? createdAt = null,
    Object? creator = null,
    Object? likeCounts = null,
    Object? isLiked = null,
    Object? replies = null,
  }) {
    return _then(_$CommentsModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
      newsId: null == newsId
          ? _value.newsId
          : newsId // ignore: cast_nullable_to_non_nullable
              as int,
      creatorId: null == creatorId
          ? _value.creatorId
          : creatorId // ignore: cast_nullable_to_non_nullable
              as int,
      parentId: freezed == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      creator: null == creator
          ? _value.creator
          : creator // ignore: cast_nullable_to_non_nullable
              as CreatorModel,
      likeCounts: null == likeCounts
          ? _value.likeCounts
          : likeCounts // ignore: cast_nullable_to_non_nullable
              as int,
      isLiked: null == isLiked
          ? _value.isLiked
          : isLiked // ignore: cast_nullable_to_non_nullable
              as bool,
      replies: null == replies
          ? _value._replies
          : replies // ignore: cast_nullable_to_non_nullable
              as List<CommentsModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CommentsModelImpl extends _CommentsModel {
  const _$CommentsModelImpl(
      {required this.id,
      required this.comment,
      required this.newsId,
      required this.creatorId,
      this.parentId,
      required this.createdAt,
      required this.creator,
      required this.likeCounts,
      required this.isLiked,
      final List<CommentsModel> replies = const []})
      : _replies = replies,
        super._();

  factory _$CommentsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CommentsModelImplFromJson(json);

  @override
  final int id;
  @override
  final String comment;
  @override
  final int newsId;
  @override
  final int creatorId;
  @override
  final int? parentId;
  @override
  final String createdAt;
  @override
  final CreatorModel creator;
  @override
  final int likeCounts;
  @override
  final bool isLiked;
  final List<CommentsModel> _replies;
  @override
  @JsonKey()
  List<CommentsModel> get replies {
    if (_replies is EqualUnmodifiableListView) return _replies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_replies);
  }

  @override
  String toString() {
    return 'CommentsModel(id: $id, comment: $comment, newsId: $newsId, creatorId: $creatorId, parentId: $parentId, createdAt: $createdAt, creator: $creator, likeCounts: $likeCounts, isLiked: $isLiked, replies: $replies)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommentsModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.newsId, newsId) || other.newsId == newsId) &&
            (identical(other.creatorId, creatorId) ||
                other.creatorId == creatorId) &&
            (identical(other.parentId, parentId) ||
                other.parentId == parentId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.creator, creator) || other.creator == creator) &&
            (identical(other.likeCounts, likeCounts) ||
                other.likeCounts == likeCounts) &&
            (identical(other.isLiked, isLiked) || other.isLiked == isLiked) &&
            const DeepCollectionEquality().equals(other._replies, _replies));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      comment,
      newsId,
      creatorId,
      parentId,
      createdAt,
      creator,
      likeCounts,
      isLiked,
      const DeepCollectionEquality().hash(_replies));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CommentsModelImplCopyWith<_$CommentsModelImpl> get copyWith =>
      __$$CommentsModelImplCopyWithImpl<_$CommentsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CommentsModelImplToJson(
      this,
    );
  }
}

abstract class _CommentsModel extends CommentsModel {
  const factory _CommentsModel(
      {required final int id,
      required final String comment,
      required final int newsId,
      required final int creatorId,
      final int? parentId,
      required final String createdAt,
      required final CreatorModel creator,
      required final int likeCounts,
      required final bool isLiked,
      final List<CommentsModel> replies}) = _$CommentsModelImpl;
  const _CommentsModel._() : super._();

  factory _CommentsModel.fromJson(Map<String, dynamic> json) =
      _$CommentsModelImpl.fromJson;

  @override
  int get id;
  @override
  String get comment;
  @override
  int get newsId;
  @override
  int get creatorId;
  @override
  int? get parentId;
  @override
  String get createdAt;
  @override
  CreatorModel get creator;
  @override
  int get likeCounts;
  @override
  bool get isLiked;
  @override
  List<CommentsModel> get replies;
  @override
  @JsonKey(ignore: true)
  _$$CommentsModelImplCopyWith<_$CommentsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
