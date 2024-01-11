// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'news_details_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NewsDetailsEntity {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String? get coverImage => throw _privateConstructorUsedError;
  String get readTime => throw _privateConstructorUsedError;
  String get viewsCount => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  bool get isTrending => throw _privateConstructorUsedError;
  int get creatorId => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  int get commentsCount => throw _privateConstructorUsedError;
  List<DetailNewsTagEntity>? get tagNews => throw _privateConstructorUsedError;
  CreatorEntity get creator => throw _privateConstructorUsedError;
  GetAllCommentsEntity get comments => throw _privateConstructorUsedError;
  List<NewsEntity> get userNews => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NewsDetailsEntityCopyWith<NewsDetailsEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsDetailsEntityCopyWith<$Res> {
  factory $NewsDetailsEntityCopyWith(
          NewsDetailsEntity value, $Res Function(NewsDetailsEntity) then) =
      _$NewsDetailsEntityCopyWithImpl<$Res, NewsDetailsEntity>;
  @useResult
  $Res call(
      {int id,
      String title,
      String? coverImage,
      String readTime,
      String viewsCount,
      String? description,
      bool isTrending,
      int creatorId,
      String createdAt,
      int commentsCount,
      List<DetailNewsTagEntity>? tagNews,
      CreatorEntity creator,
      GetAllCommentsEntity comments,
      List<NewsEntity> userNews});

  $CreatorEntityCopyWith<$Res> get creator;
  $GetAllCommentsEntityCopyWith<$Res> get comments;
}

/// @nodoc
class _$NewsDetailsEntityCopyWithImpl<$Res, $Val extends NewsDetailsEntity>
    implements $NewsDetailsEntityCopyWith<$Res> {
  _$NewsDetailsEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? coverImage = freezed,
    Object? readTime = null,
    Object? viewsCount = null,
    Object? description = freezed,
    Object? isTrending = null,
    Object? creatorId = null,
    Object? createdAt = null,
    Object? commentsCount = null,
    Object? tagNews = freezed,
    Object? creator = null,
    Object? comments = null,
    Object? userNews = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      coverImage: freezed == coverImage
          ? _value.coverImage
          : coverImage // ignore: cast_nullable_to_non_nullable
              as String?,
      readTime: null == readTime
          ? _value.readTime
          : readTime // ignore: cast_nullable_to_non_nullable
              as String,
      viewsCount: null == viewsCount
          ? _value.viewsCount
          : viewsCount // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      isTrending: null == isTrending
          ? _value.isTrending
          : isTrending // ignore: cast_nullable_to_non_nullable
              as bool,
      creatorId: null == creatorId
          ? _value.creatorId
          : creatorId // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      commentsCount: null == commentsCount
          ? _value.commentsCount
          : commentsCount // ignore: cast_nullable_to_non_nullable
              as int,
      tagNews: freezed == tagNews
          ? _value.tagNews
          : tagNews // ignore: cast_nullable_to_non_nullable
              as List<DetailNewsTagEntity>?,
      creator: null == creator
          ? _value.creator
          : creator // ignore: cast_nullable_to_non_nullable
              as CreatorEntity,
      comments: null == comments
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as GetAllCommentsEntity,
      userNews: null == userNews
          ? _value.userNews
          : userNews // ignore: cast_nullable_to_non_nullable
              as List<NewsEntity>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CreatorEntityCopyWith<$Res> get creator {
    return $CreatorEntityCopyWith<$Res>(_value.creator, (value) {
      return _then(_value.copyWith(creator: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $GetAllCommentsEntityCopyWith<$Res> get comments {
    return $GetAllCommentsEntityCopyWith<$Res>(_value.comments, (value) {
      return _then(_value.copyWith(comments: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$NewsDetailsEntityImplCopyWith<$Res>
    implements $NewsDetailsEntityCopyWith<$Res> {
  factory _$$NewsDetailsEntityImplCopyWith(_$NewsDetailsEntityImpl value,
          $Res Function(_$NewsDetailsEntityImpl) then) =
      __$$NewsDetailsEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String title,
      String? coverImage,
      String readTime,
      String viewsCount,
      String? description,
      bool isTrending,
      int creatorId,
      String createdAt,
      int commentsCount,
      List<DetailNewsTagEntity>? tagNews,
      CreatorEntity creator,
      GetAllCommentsEntity comments,
      List<NewsEntity> userNews});

  @override
  $CreatorEntityCopyWith<$Res> get creator;
  @override
  $GetAllCommentsEntityCopyWith<$Res> get comments;
}

/// @nodoc
class __$$NewsDetailsEntityImplCopyWithImpl<$Res>
    extends _$NewsDetailsEntityCopyWithImpl<$Res, _$NewsDetailsEntityImpl>
    implements _$$NewsDetailsEntityImplCopyWith<$Res> {
  __$$NewsDetailsEntityImplCopyWithImpl(_$NewsDetailsEntityImpl _value,
      $Res Function(_$NewsDetailsEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? coverImage = freezed,
    Object? readTime = null,
    Object? viewsCount = null,
    Object? description = freezed,
    Object? isTrending = null,
    Object? creatorId = null,
    Object? createdAt = null,
    Object? commentsCount = null,
    Object? tagNews = freezed,
    Object? creator = null,
    Object? comments = null,
    Object? userNews = null,
  }) {
    return _then(_$NewsDetailsEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      coverImage: freezed == coverImage
          ? _value.coverImage
          : coverImage // ignore: cast_nullable_to_non_nullable
              as String?,
      readTime: null == readTime
          ? _value.readTime
          : readTime // ignore: cast_nullable_to_non_nullable
              as String,
      viewsCount: null == viewsCount
          ? _value.viewsCount
          : viewsCount // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      isTrending: null == isTrending
          ? _value.isTrending
          : isTrending // ignore: cast_nullable_to_non_nullable
              as bool,
      creatorId: null == creatorId
          ? _value.creatorId
          : creatorId // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      commentsCount: null == commentsCount
          ? _value.commentsCount
          : commentsCount // ignore: cast_nullable_to_non_nullable
              as int,
      tagNews: freezed == tagNews
          ? _value._tagNews
          : tagNews // ignore: cast_nullable_to_non_nullable
              as List<DetailNewsTagEntity>?,
      creator: null == creator
          ? _value.creator
          : creator // ignore: cast_nullable_to_non_nullable
              as CreatorEntity,
      comments: null == comments
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as GetAllCommentsEntity,
      userNews: null == userNews
          ? _value._userNews
          : userNews // ignore: cast_nullable_to_non_nullable
              as List<NewsEntity>,
    ));
  }
}

/// @nodoc

class _$NewsDetailsEntityImpl implements _NewsDetailsEntity {
  const _$NewsDetailsEntityImpl(
      {required this.id,
      required this.title,
      this.coverImage,
      required this.readTime,
      required this.viewsCount,
      this.description,
      required this.isTrending,
      required this.creatorId,
      required this.createdAt,
      required this.commentsCount,
      final List<DetailNewsTagEntity>? tagNews,
      required this.creator,
      required this.comments,
      required final List<NewsEntity> userNews})
      : _tagNews = tagNews,
        _userNews = userNews;

  @override
  final int id;
  @override
  final String title;
  @override
  final String? coverImage;
  @override
  final String readTime;
  @override
  final String viewsCount;
  @override
  final String? description;
  @override
  final bool isTrending;
  @override
  final int creatorId;
  @override
  final String createdAt;
  @override
  final int commentsCount;
  final List<DetailNewsTagEntity>? _tagNews;
  @override
  List<DetailNewsTagEntity>? get tagNews {
    final value = _tagNews;
    if (value == null) return null;
    if (_tagNews is EqualUnmodifiableListView) return _tagNews;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final CreatorEntity creator;
  @override
  final GetAllCommentsEntity comments;
  final List<NewsEntity> _userNews;
  @override
  List<NewsEntity> get userNews {
    if (_userNews is EqualUnmodifiableListView) return _userNews;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_userNews);
  }

  @override
  String toString() {
    return 'NewsDetailsEntity(id: $id, title: $title, coverImage: $coverImage, readTime: $readTime, viewsCount: $viewsCount, description: $description, isTrending: $isTrending, creatorId: $creatorId, createdAt: $createdAt, commentsCount: $commentsCount, tagNews: $tagNews, creator: $creator, comments: $comments, userNews: $userNews)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewsDetailsEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.coverImage, coverImage) ||
                other.coverImage == coverImage) &&
            (identical(other.readTime, readTime) ||
                other.readTime == readTime) &&
            (identical(other.viewsCount, viewsCount) ||
                other.viewsCount == viewsCount) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.isTrending, isTrending) ||
                other.isTrending == isTrending) &&
            (identical(other.creatorId, creatorId) ||
                other.creatorId == creatorId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.commentsCount, commentsCount) ||
                other.commentsCount == commentsCount) &&
            const DeepCollectionEquality().equals(other._tagNews, _tagNews) &&
            (identical(other.creator, creator) || other.creator == creator) &&
            (identical(other.comments, comments) ||
                other.comments == comments) &&
            const DeepCollectionEquality().equals(other._userNews, _userNews));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      coverImage,
      readTime,
      viewsCount,
      description,
      isTrending,
      creatorId,
      createdAt,
      commentsCount,
      const DeepCollectionEquality().hash(_tagNews),
      creator,
      comments,
      const DeepCollectionEquality().hash(_userNews));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewsDetailsEntityImplCopyWith<_$NewsDetailsEntityImpl> get copyWith =>
      __$$NewsDetailsEntityImplCopyWithImpl<_$NewsDetailsEntityImpl>(
          this, _$identity);
}

abstract class _NewsDetailsEntity implements NewsDetailsEntity {
  const factory _NewsDetailsEntity(
      {required final int id,
      required final String title,
      final String? coverImage,
      required final String readTime,
      required final String viewsCount,
      final String? description,
      required final bool isTrending,
      required final int creatorId,
      required final String createdAt,
      required final int commentsCount,
      final List<DetailNewsTagEntity>? tagNews,
      required final CreatorEntity creator,
      required final GetAllCommentsEntity comments,
      required final List<NewsEntity> userNews}) = _$NewsDetailsEntityImpl;

  @override
  int get id;
  @override
  String get title;
  @override
  String? get coverImage;
  @override
  String get readTime;
  @override
  String get viewsCount;
  @override
  String? get description;
  @override
  bool get isTrending;
  @override
  int get creatorId;
  @override
  String get createdAt;
  @override
  int get commentsCount;
  @override
  List<DetailNewsTagEntity>? get tagNews;
  @override
  CreatorEntity get creator;
  @override
  GetAllCommentsEntity get comments;
  @override
  List<NewsEntity> get userNews;
  @override
  @JsonKey(ignore: true)
  _$$NewsDetailsEntityImplCopyWith<_$NewsDetailsEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
