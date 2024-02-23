// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'details_news_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DetailsNewsModel _$DetailsNewsModelFromJson(Map<String, dynamic> json) {
  return _DetailsNewsModel.fromJson(json);
}

/// @nodoc
mixin _$DetailsNewsModel {
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
  List<DetailNewsTagModel>? get tagNews => throw _privateConstructorUsedError;
  CreatorModel get creator => throw _privateConstructorUsedError;
  GetAllCommentsModel get comments => throw _privateConstructorUsedError;
  List<NewsModel>? get userNews => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DetailsNewsModelCopyWith<DetailsNewsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailsNewsModelCopyWith<$Res> {
  factory $DetailsNewsModelCopyWith(
          DetailsNewsModel value, $Res Function(DetailsNewsModel) then) =
      _$DetailsNewsModelCopyWithImpl<$Res, DetailsNewsModel>;
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
      List<DetailNewsTagModel>? tagNews,
      CreatorModel creator,
      GetAllCommentsModel comments,
      List<NewsModel>? userNews});

  $CreatorModelCopyWith<$Res> get creator;
  $GetAllCommentsModelCopyWith<$Res> get comments;
}

/// @nodoc
class _$DetailsNewsModelCopyWithImpl<$Res, $Val extends DetailsNewsModel>
    implements $DetailsNewsModelCopyWith<$Res> {
  _$DetailsNewsModelCopyWithImpl(this._value, this._then);

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
    Object? userNews = freezed,
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
              as List<DetailNewsTagModel>?,
      creator: null == creator
          ? _value.creator
          : creator // ignore: cast_nullable_to_non_nullable
              as CreatorModel,
      comments: null == comments
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as GetAllCommentsModel,
      userNews: freezed == userNews
          ? _value.userNews
          : userNews // ignore: cast_nullable_to_non_nullable
              as List<NewsModel>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CreatorModelCopyWith<$Res> get creator {
    return $CreatorModelCopyWith<$Res>(_value.creator, (value) {
      return _then(_value.copyWith(creator: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $GetAllCommentsModelCopyWith<$Res> get comments {
    return $GetAllCommentsModelCopyWith<$Res>(_value.comments, (value) {
      return _then(_value.copyWith(comments: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DetailsNewsModelImplCopyWith<$Res>
    implements $DetailsNewsModelCopyWith<$Res> {
  factory _$$DetailsNewsModelImplCopyWith(_$DetailsNewsModelImpl value,
          $Res Function(_$DetailsNewsModelImpl) then) =
      __$$DetailsNewsModelImplCopyWithImpl<$Res>;
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
      List<DetailNewsTagModel>? tagNews,
      CreatorModel creator,
      GetAllCommentsModel comments,
      List<NewsModel>? userNews});

  @override
  $CreatorModelCopyWith<$Res> get creator;
  @override
  $GetAllCommentsModelCopyWith<$Res> get comments;
}

/// @nodoc
class __$$DetailsNewsModelImplCopyWithImpl<$Res>
    extends _$DetailsNewsModelCopyWithImpl<$Res, _$DetailsNewsModelImpl>
    implements _$$DetailsNewsModelImplCopyWith<$Res> {
  __$$DetailsNewsModelImplCopyWithImpl(_$DetailsNewsModelImpl _value,
      $Res Function(_$DetailsNewsModelImpl) _then)
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
    Object? userNews = freezed,
  }) {
    return _then(_$DetailsNewsModelImpl(
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
              as List<DetailNewsTagModel>?,
      creator: null == creator
          ? _value.creator
          : creator // ignore: cast_nullable_to_non_nullable
              as CreatorModel,
      comments: null == comments
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as GetAllCommentsModel,
      userNews: freezed == userNews
          ? _value._userNews
          : userNews // ignore: cast_nullable_to_non_nullable
              as List<NewsModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DetailsNewsModelImpl extends _DetailsNewsModel {
  const _$DetailsNewsModelImpl(
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
      final List<DetailNewsTagModel>? tagNews,
      required this.creator,
      required this.comments,
      required final List<NewsModel>? userNews})
      : _tagNews = tagNews,
        _userNews = userNews,
        super._();

  factory _$DetailsNewsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DetailsNewsModelImplFromJson(json);

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
  final List<DetailNewsTagModel>? _tagNews;
  @override
  List<DetailNewsTagModel>? get tagNews {
    final value = _tagNews;
    if (value == null) return null;
    if (_tagNews is EqualUnmodifiableListView) return _tagNews;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final CreatorModel creator;
  @override
  final GetAllCommentsModel comments;
  final List<NewsModel>? _userNews;
  @override
  List<NewsModel>? get userNews {
    final value = _userNews;
    if (value == null) return null;
    if (_userNews is EqualUnmodifiableListView) return _userNews;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'DetailsNewsModel(id: $id, title: $title, coverImage: $coverImage, readTime: $readTime, viewsCount: $viewsCount, description: $description, isTrending: $isTrending, creatorId: $creatorId, createdAt: $createdAt, commentsCount: $commentsCount, tagNews: $tagNews, creator: $creator, comments: $comments, userNews: $userNews)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailsNewsModelImpl &&
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

  @JsonKey(ignore: true)
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
  _$$DetailsNewsModelImplCopyWith<_$DetailsNewsModelImpl> get copyWith =>
      __$$DetailsNewsModelImplCopyWithImpl<_$DetailsNewsModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DetailsNewsModelImplToJson(
      this,
    );
  }
}

abstract class _DetailsNewsModel extends DetailsNewsModel {
  const factory _DetailsNewsModel(
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
      final List<DetailNewsTagModel>? tagNews,
      required final CreatorModel creator,
      required final GetAllCommentsModel comments,
      required final List<NewsModel>? userNews}) = _$DetailsNewsModelImpl;
  const _DetailsNewsModel._() : super._();

  factory _DetailsNewsModel.fromJson(Map<String, dynamic> json) =
      _$DetailsNewsModelImpl.fromJson;

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
  List<DetailNewsTagModel>? get tagNews;
  @override
  CreatorModel get creator;
  @override
  GetAllCommentsModel get comments;
  @override
  List<NewsModel>? get userNews;
  @override
  @JsonKey(ignore: true)
  _$$DetailsNewsModelImplCopyWith<_$DetailsNewsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
