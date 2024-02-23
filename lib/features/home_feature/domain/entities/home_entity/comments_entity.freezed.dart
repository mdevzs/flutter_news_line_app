// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'comments_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CommentsEntity {
  int get id => throw _privateConstructorUsedError;
  set id(int value) => throw _privateConstructorUsedError;
  String get comment => throw _privateConstructorUsedError;
  set comment(String value) => throw _privateConstructorUsedError;
  int get newsId => throw _privateConstructorUsedError;
  set newsId(int value) => throw _privateConstructorUsedError;
  int get creatorId => throw _privateConstructorUsedError;
  set creatorId(int value) => throw _privateConstructorUsedError;
  int? get parentId => throw _privateConstructorUsedError;
  set parentId(int? value) => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  set createdAt(String value) => throw _privateConstructorUsedError;
  CreatorEntity get creator => throw _privateConstructorUsedError;
  set creator(CreatorEntity value) => throw _privateConstructorUsedError;
  int get likeCounts => throw _privateConstructorUsedError;
  set likeCounts(int value) => throw _privateConstructorUsedError;
  bool get isLiked => throw _privateConstructorUsedError;
  set isLiked(bool value) => throw _privateConstructorUsedError;
  List<CommentsEntity> get replies => throw _privateConstructorUsedError;
  set replies(List<CommentsEntity> value) => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CommentsEntityCopyWith<CommentsEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentsEntityCopyWith<$Res> {
  factory $CommentsEntityCopyWith(
          CommentsEntity value, $Res Function(CommentsEntity) then) =
      _$CommentsEntityCopyWithImpl<$Res, CommentsEntity>;
  @useResult
  $Res call(
      {int id,
      String comment,
      int newsId,
      int creatorId,
      int? parentId,
      String createdAt,
      CreatorEntity creator,
      int likeCounts,
      bool isLiked,
      List<CommentsEntity> replies});

  $CreatorEntityCopyWith<$Res> get creator;
}

/// @nodoc
class _$CommentsEntityCopyWithImpl<$Res, $Val extends CommentsEntity>
    implements $CommentsEntityCopyWith<$Res> {
  _$CommentsEntityCopyWithImpl(this._value, this._then);

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
              as CreatorEntity,
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
              as List<CommentsEntity>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CreatorEntityCopyWith<$Res> get creator {
    return $CreatorEntityCopyWith<$Res>(_value.creator, (value) {
      return _then(_value.copyWith(creator: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CommentsEntityImplCopyWith<$Res>
    implements $CommentsEntityCopyWith<$Res> {
  factory _$$CommentsEntityImplCopyWith(_$CommentsEntityImpl value,
          $Res Function(_$CommentsEntityImpl) then) =
      __$$CommentsEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String comment,
      int newsId,
      int creatorId,
      int? parentId,
      String createdAt,
      CreatorEntity creator,
      int likeCounts,
      bool isLiked,
      List<CommentsEntity> replies});

  @override
  $CreatorEntityCopyWith<$Res> get creator;
}

/// @nodoc
class __$$CommentsEntityImplCopyWithImpl<$Res>
    extends _$CommentsEntityCopyWithImpl<$Res, _$CommentsEntityImpl>
    implements _$$CommentsEntityImplCopyWith<$Res> {
  __$$CommentsEntityImplCopyWithImpl(
      _$CommentsEntityImpl _value, $Res Function(_$CommentsEntityImpl) _then)
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
    return _then(_$CommentsEntityImpl(
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
              as CreatorEntity,
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
              as List<CommentsEntity>,
    ));
  }
}

/// @nodoc

class _$CommentsEntityImpl implements _CommentsEntity {
  _$CommentsEntityImpl(
      {required this.id,
      required this.comment,
      required this.newsId,
      required this.creatorId,
      this.parentId,
      required this.createdAt,
      required this.creator,
      required this.likeCounts,
      required this.isLiked,
      this.replies = const []});

  @override
  int id;
  @override
  String comment;
  @override
  int newsId;
  @override
  int creatorId;
  @override
  int? parentId;
  @override
  String createdAt;
  @override
  CreatorEntity creator;
  @override
  int likeCounts;
  @override
  bool isLiked;
  @override
  @JsonKey()
  List<CommentsEntity> replies;

  @override
  String toString() {
    return 'CommentsEntity(id: $id, comment: $comment, newsId: $newsId, creatorId: $creatorId, parentId: $parentId, createdAt: $createdAt, creator: $creator, likeCounts: $likeCounts, isLiked: $isLiked, replies: $replies)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CommentsEntityImplCopyWith<_$CommentsEntityImpl> get copyWith =>
      __$$CommentsEntityImplCopyWithImpl<_$CommentsEntityImpl>(
          this, _$identity);
}

abstract class _CommentsEntity implements CommentsEntity {
  factory _CommentsEntity(
      {required int id,
      required String comment,
      required int newsId,
      required int creatorId,
      int? parentId,
      required String createdAt,
      required CreatorEntity creator,
      required int likeCounts,
      required bool isLiked,
      List<CommentsEntity> replies}) = _$CommentsEntityImpl;

  @override
  int get id;
  set id(int value);
  @override
  String get comment;
  set comment(String value);
  @override
  int get newsId;
  set newsId(int value);
  @override
  int get creatorId;
  set creatorId(int value);
  @override
  int? get parentId;
  set parentId(int? value);
  @override
  String get createdAt;
  set createdAt(String value);
  @override
  CreatorEntity get creator;
  set creator(CreatorEntity value);
  @override
  int get likeCounts;
  set likeCounts(int value);
  @override
  bool get isLiked;
  set isLiked(bool value);
  @override
  List<CommentsEntity> get replies;
  set replies(List<CommentsEntity> value);
  @override
  @JsonKey(ignore: true)
  _$$CommentsEntityImplCopyWith<_$CommentsEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
