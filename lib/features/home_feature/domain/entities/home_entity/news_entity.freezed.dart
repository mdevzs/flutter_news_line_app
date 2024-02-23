// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'news_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NewsEntity {
  @Id(assignable: true)
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String? get coverImage => throw _privateConstructorUsedError;
  String get readTime => throw _privateConstructorUsedError;
  String get viewsCount => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  bool get isTrending => throw _privateConstructorUsedError;
  int get creatorId => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  String get commentCounts => throw _privateConstructorUsedError;
  @Transient()
  List<TagNewsEntity>? get tagNews => throw _privateConstructorUsedError;
  @Transient()
  CreatorEntity? get creator => throw _privateConstructorUsedError;
  @Backlink()
  ToMany<Bookmarks> get bookmarks => throw _privateConstructorUsedError;
  ToOne<CreatorEntity> get creatorRelation =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NewsEntityCopyWith<NewsEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsEntityCopyWith<$Res> {
  factory $NewsEntityCopyWith(
          NewsEntity value, $Res Function(NewsEntity) then) =
      _$NewsEntityCopyWithImpl<$Res, NewsEntity>;
  @useResult
  $Res call(
      {@Id(assignable: true) int id,
      String title,
      String? coverImage,
      String readTime,
      String viewsCount,
      String? description,
      bool isTrending,
      int creatorId,
      String createdAt,
      String commentCounts,
      @Transient() List<TagNewsEntity>? tagNews,
      @Transient() CreatorEntity? creator,
      @Backlink() ToMany<Bookmarks> bookmarks,
      ToOne<CreatorEntity> creatorRelation});

  $CreatorEntityCopyWith<$Res>? get creator;
}

/// @nodoc
class _$NewsEntityCopyWithImpl<$Res, $Val extends NewsEntity>
    implements $NewsEntityCopyWith<$Res> {
  _$NewsEntityCopyWithImpl(this._value, this._then);

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
    Object? creator = freezed,
    Object? bookmarks = null,
    Object? creatorRelation = null,
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
              as String,
      tagNews: freezed == tagNews
          ? _value.tagNews
          : tagNews // ignore: cast_nullable_to_non_nullable
              as List<TagNewsEntity>?,
      creator: freezed == creator
          ? _value.creator
          : creator // ignore: cast_nullable_to_non_nullable
              as CreatorEntity?,
      bookmarks: null == bookmarks
          ? _value.bookmarks
          : bookmarks // ignore: cast_nullable_to_non_nullable
              as ToMany<Bookmarks>,
      creatorRelation: null == creatorRelation
          ? _value.creatorRelation
          : creatorRelation // ignore: cast_nullable_to_non_nullable
              as ToOne<CreatorEntity>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CreatorEntityCopyWith<$Res>? get creator {
    if (_value.creator == null) {
      return null;
    }

    return $CreatorEntityCopyWith<$Res>(_value.creator!, (value) {
      return _then(_value.copyWith(creator: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$NewsEntityImplCopyWith<$Res>
    implements $NewsEntityCopyWith<$Res> {
  factory _$$NewsEntityImplCopyWith(
          _$NewsEntityImpl value, $Res Function(_$NewsEntityImpl) then) =
      __$$NewsEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@Id(assignable: true) int id,
      String title,
      String? coverImage,
      String readTime,
      String viewsCount,
      String? description,
      bool isTrending,
      int creatorId,
      String createdAt,
      String commentCounts,
      @Transient() List<TagNewsEntity>? tagNews,
      @Transient() CreatorEntity? creator,
      @Backlink() ToMany<Bookmarks> bookmarks,
      ToOne<CreatorEntity> creatorRelation});

  @override
  $CreatorEntityCopyWith<$Res>? get creator;
}

/// @nodoc
class __$$NewsEntityImplCopyWithImpl<$Res>
    extends _$NewsEntityCopyWithImpl<$Res, _$NewsEntityImpl>
    implements _$$NewsEntityImplCopyWith<$Res> {
  __$$NewsEntityImplCopyWithImpl(
      _$NewsEntityImpl _value, $Res Function(_$NewsEntityImpl) _then)
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
    Object? creator = freezed,
    Object? bookmarks = null,
    Object? creatorRelation = null,
  }) {
    return _then(_$NewsEntityImpl(
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
              as String,
      tagNews: freezed == tagNews
          ? _value._tagNews
          : tagNews // ignore: cast_nullable_to_non_nullable
              as List<TagNewsEntity>?,
      creator: freezed == creator
          ? _value.creator
          : creator // ignore: cast_nullable_to_non_nullable
              as CreatorEntity?,
      bookmarks: null == bookmarks
          ? _value.bookmarks
          : bookmarks // ignore: cast_nullable_to_non_nullable
              as ToMany<Bookmarks>,
      creatorRelation: null == creatorRelation
          ? _value.creatorRelation
          : creatorRelation // ignore: cast_nullable_to_non_nullable
              as ToOne<CreatorEntity>,
    ));
  }
}

/// @nodoc

@Entity(realClass: NewsEntity)
class _$NewsEntityImpl extends _NewsEntity {
  const _$NewsEntityImpl(
      {@Id(assignable: true) required this.id,
      required this.title,
      this.coverImage,
      required this.readTime,
      required this.viewsCount,
      this.description,
      required this.isTrending,
      required this.creatorId,
      required this.createdAt,
      required this.commentCounts,
      @Transient() final List<TagNewsEntity>? tagNews,
      @Transient() this.creator,
      @Backlink() required this.bookmarks,
      required this.creatorRelation})
      : _tagNews = tagNews,
        super._();

  @override
  @Id(assignable: true)
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
  final String commentCounts;
  final List<TagNewsEntity>? _tagNews;
  @override
  @Transient()
  List<TagNewsEntity>? get tagNews {
    final value = _tagNews;
    if (value == null) return null;
    if (_tagNews is EqualUnmodifiableListView) return _tagNews;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @Transient()
  final CreatorEntity? creator;
  @override
  @Backlink()
  final ToMany<Bookmarks> bookmarks;
  @override
  final ToOne<CreatorEntity> creatorRelation;

  @override
  String toString() {
    return 'NewsEntity(id: $id, title: $title, coverImage: $coverImage, readTime: $readTime, viewsCount: $viewsCount, description: $description, isTrending: $isTrending, creatorId: $creatorId, createdAt: $createdAt, commentCounts: $commentCounts, tagNews: $tagNews, creator: $creator, bookmarks: $bookmarks, creatorRelation: $creatorRelation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewsEntityImpl &&
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
            (identical(other.creator, creator) || other.creator == creator) &&
            const DeepCollectionEquality().equals(other.bookmarks, bookmarks) &&
            (identical(other.creatorRelation, creatorRelation) ||
                other.creatorRelation == creatorRelation));
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
      commentCounts,
      const DeepCollectionEquality().hash(_tagNews),
      creator,
      const DeepCollectionEquality().hash(bookmarks),
      creatorRelation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewsEntityImplCopyWith<_$NewsEntityImpl> get copyWith =>
      __$$NewsEntityImplCopyWithImpl<_$NewsEntityImpl>(this, _$identity);
}

abstract class _NewsEntity extends NewsEntity {
  const factory _NewsEntity(
      {@Id(assignable: true) required final int id,
      required final String title,
      final String? coverImage,
      required final String readTime,
      required final String viewsCount,
      final String? description,
      required final bool isTrending,
      required final int creatorId,
      required final String createdAt,
      required final String commentCounts,
      @Transient() final List<TagNewsEntity>? tagNews,
      @Transient() final CreatorEntity? creator,
      @Backlink() required final ToMany<Bookmarks> bookmarks,
      required final ToOne<CreatorEntity> creatorRelation}) = _$NewsEntityImpl;
  const _NewsEntity._() : super._();

  @override
  @Id(assignable: true)
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
  String get commentCounts;
  @override
  @Transient()
  List<TagNewsEntity>? get tagNews;
  @override
  @Transient()
  CreatorEntity? get creator;
  @override
  @Backlink()
  ToMany<Bookmarks> get bookmarks;
  @override
  ToOne<CreatorEntity> get creatorRelation;
  @override
  @JsonKey(ignore: true)
  _$$NewsEntityImplCopyWith<_$NewsEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
