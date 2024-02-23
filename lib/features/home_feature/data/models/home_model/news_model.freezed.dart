// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'news_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NewsModel _$NewsModelFromJson(Map<String, dynamic> json) {
  return _NewsModel.fromJson(json);
}

/// @nodoc
mixin _$NewsModel {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String? get coverImage => throw _privateConstructorUsedError;
  String get readTime => throw _privateConstructorUsedError;
  String get viewsCount => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  bool get isTrending => throw _privateConstructorUsedError;
  int get creatorId => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  int get commentCounts => throw _privateConstructorUsedError;
  List<TagNewsModel>? get tagNews => throw _privateConstructorUsedError;
  CreatorModel get creator => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewsModelCopyWith<NewsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsModelCopyWith<$Res> {
  factory $NewsModelCopyWith(NewsModel value, $Res Function(NewsModel) then) =
      _$NewsModelCopyWithImpl<$Res, NewsModel>;
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
      int commentCounts,
      List<TagNewsModel>? tagNews,
      CreatorModel creator});

  $CreatorModelCopyWith<$Res> get creator;
}

/// @nodoc
class _$NewsModelCopyWithImpl<$Res, $Val extends NewsModel>
    implements $NewsModelCopyWith<$Res> {
  _$NewsModelCopyWithImpl(this._value, this._then);

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
    Object? commentCounts = null,
    Object? tagNews = freezed,
    Object? creator = null,
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
      commentCounts: null == commentCounts
          ? _value.commentCounts
          : commentCounts // ignore: cast_nullable_to_non_nullable
              as int,
      tagNews: freezed == tagNews
          ? _value.tagNews
          : tagNews // ignore: cast_nullable_to_non_nullable
              as List<TagNewsModel>?,
      creator: null == creator
          ? _value.creator
          : creator // ignore: cast_nullable_to_non_nullable
              as CreatorModel,
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
abstract class _$$NewsModelImplCopyWith<$Res>
    implements $NewsModelCopyWith<$Res> {
  factory _$$NewsModelImplCopyWith(
          _$NewsModelImpl value, $Res Function(_$NewsModelImpl) then) =
      __$$NewsModelImplCopyWithImpl<$Res>;
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
      int commentCounts,
      List<TagNewsModel>? tagNews,
      CreatorModel creator});

  @override
  $CreatorModelCopyWith<$Res> get creator;
}

/// @nodoc
class __$$NewsModelImplCopyWithImpl<$Res>
    extends _$NewsModelCopyWithImpl<$Res, _$NewsModelImpl>
    implements _$$NewsModelImplCopyWith<$Res> {
  __$$NewsModelImplCopyWithImpl(
      _$NewsModelImpl _value, $Res Function(_$NewsModelImpl) _then)
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
    Object? commentCounts = null,
    Object? tagNews = freezed,
    Object? creator = null,
  }) {
    return _then(_$NewsModelImpl(
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
      commentCounts: null == commentCounts
          ? _value.commentCounts
          : commentCounts // ignore: cast_nullable_to_non_nullable
              as int,
      tagNews: freezed == tagNews
          ? _value._tagNews
          : tagNews // ignore: cast_nullable_to_non_nullable
              as List<TagNewsModel>?,
      creator: null == creator
          ? _value.creator
          : creator // ignore: cast_nullable_to_non_nullable
              as CreatorModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NewsModelImpl extends _NewsModel {
  _$NewsModelImpl(
      {required this.id,
      required this.title,
      this.coverImage,
      required this.readTime,
      required this.viewsCount,
      this.description,
      required this.isTrending,
      required this.creatorId,
      required this.createdAt,
      required this.commentCounts,
      final List<TagNewsModel>? tagNews,
      required this.creator})
      : _tagNews = tagNews,
        super._();

  factory _$NewsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$NewsModelImplFromJson(json);

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
  final int commentCounts;
  final List<TagNewsModel>? _tagNews;
  @override
  List<TagNewsModel>? get tagNews {
    final value = _tagNews;
    if (value == null) return null;
    if (_tagNews is EqualUnmodifiableListView) return _tagNews;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final CreatorModel creator;

  @override
  String toString() {
    return 'NewsModel(id: $id, title: $title, coverImage: $coverImage, readTime: $readTime, viewsCount: $viewsCount, description: $description, isTrending: $isTrending, creatorId: $creatorId, createdAt: $createdAt, commentCounts: $commentCounts, tagNews: $tagNews, creator: $creator)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewsModelImpl &&
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
            (identical(other.commentCounts, commentCounts) ||
                other.commentCounts == commentCounts) &&
            const DeepCollectionEquality().equals(other._tagNews, _tagNews) &&
            (identical(other.creator, creator) || other.creator == creator));
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
      commentCounts,
      const DeepCollectionEquality().hash(_tagNews),
      creator);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewsModelImplCopyWith<_$NewsModelImpl> get copyWith =>
      __$$NewsModelImplCopyWithImpl<_$NewsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NewsModelImplToJson(
      this,
    );
  }
}

abstract class _NewsModel extends NewsModel {
  factory _NewsModel(
      {required final int id,
      required final String title,
      final String? coverImage,
      required final String readTime,
      required final String viewsCount,
      final String? description,
      required final bool isTrending,
      required final int creatorId,
      required final String createdAt,
      required final int commentCounts,
      final List<TagNewsModel>? tagNews,
      required final CreatorModel creator}) = _$NewsModelImpl;
  _NewsModel._() : super._();

  factory _NewsModel.fromJson(Map<String, dynamic> json) =
      _$NewsModelImpl.fromJson;

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
  int get commentCounts;
  @override
  List<TagNewsModel>? get tagNews;
  @override
  CreatorModel get creator;
  @override
  @JsonKey(ignore: true)
  _$$NewsModelImplCopyWith<_$NewsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
