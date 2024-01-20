// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'discover_search_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DiscoverSearchModel _$DiscoverSearchModelFromJson(Map<String, dynamic> json) {
  return _DiscoverSearchModel.fromJson(json);
}

/// @nodoc
mixin _$DiscoverSearchModel {
  List<NewsModel>? get news => throw _privateConstructorUsedError;
  List<UserModel>? get accounts => throw _privateConstructorUsedError;
  List<TagModel>? get tags => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DiscoverSearchModelCopyWith<DiscoverSearchModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiscoverSearchModelCopyWith<$Res> {
  factory $DiscoverSearchModelCopyWith(
          DiscoverSearchModel value, $Res Function(DiscoverSearchModel) then) =
      _$DiscoverSearchModelCopyWithImpl<$Res, DiscoverSearchModel>;
  @useResult
  $Res call(
      {List<NewsModel>? news, List<UserModel>? accounts, List<TagModel>? tags});
}

/// @nodoc
class _$DiscoverSearchModelCopyWithImpl<$Res, $Val extends DiscoverSearchModel>
    implements $DiscoverSearchModelCopyWith<$Res> {
  _$DiscoverSearchModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? news = freezed,
    Object? accounts = freezed,
    Object? tags = freezed,
  }) {
    return _then(_value.copyWith(
      news: freezed == news
          ? _value.news
          : news // ignore: cast_nullable_to_non_nullable
              as List<NewsModel>?,
      accounts: freezed == accounts
          ? _value.accounts
          : accounts // ignore: cast_nullable_to_non_nullable
              as List<UserModel>?,
      tags: freezed == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<TagModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DiscoverSearchModelImplCopyWith<$Res>
    implements $DiscoverSearchModelCopyWith<$Res> {
  factory _$$DiscoverSearchModelImplCopyWith(_$DiscoverSearchModelImpl value,
          $Res Function(_$DiscoverSearchModelImpl) then) =
      __$$DiscoverSearchModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<NewsModel>? news, List<UserModel>? accounts, List<TagModel>? tags});
}

/// @nodoc
class __$$DiscoverSearchModelImplCopyWithImpl<$Res>
    extends _$DiscoverSearchModelCopyWithImpl<$Res, _$DiscoverSearchModelImpl>
    implements _$$DiscoverSearchModelImplCopyWith<$Res> {
  __$$DiscoverSearchModelImplCopyWithImpl(_$DiscoverSearchModelImpl _value,
      $Res Function(_$DiscoverSearchModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? news = freezed,
    Object? accounts = freezed,
    Object? tags = freezed,
  }) {
    return _then(_$DiscoverSearchModelImpl(
      news: freezed == news
          ? _value._news
          : news // ignore: cast_nullable_to_non_nullable
              as List<NewsModel>?,
      accounts: freezed == accounts
          ? _value._accounts
          : accounts // ignore: cast_nullable_to_non_nullable
              as List<UserModel>?,
      tags: freezed == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<TagModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DiscoverSearchModelImpl extends _DiscoverSearchModel {
  const _$DiscoverSearchModelImpl(
      {final List<NewsModel>? news,
      final List<UserModel>? accounts,
      final List<TagModel>? tags})
      : _news = news,
        _accounts = accounts,
        _tags = tags,
        super._();

  factory _$DiscoverSearchModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DiscoverSearchModelImplFromJson(json);

  final List<NewsModel>? _news;
  @override
  List<NewsModel>? get news {
    final value = _news;
    if (value == null) return null;
    if (_news is EqualUnmodifiableListView) return _news;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<UserModel>? _accounts;
  @override
  List<UserModel>? get accounts {
    final value = _accounts;
    if (value == null) return null;
    if (_accounts is EqualUnmodifiableListView) return _accounts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<TagModel>? _tags;
  @override
  List<TagModel>? get tags {
    final value = _tags;
    if (value == null) return null;
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'DiscoverSearchModel(news: $news, accounts: $accounts, tags: $tags)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DiscoverSearchModelImpl &&
            const DeepCollectionEquality().equals(other._news, _news) &&
            const DeepCollectionEquality().equals(other._accounts, _accounts) &&
            const DeepCollectionEquality().equals(other._tags, _tags));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_news),
      const DeepCollectionEquality().hash(_accounts),
      const DeepCollectionEquality().hash(_tags));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DiscoverSearchModelImplCopyWith<_$DiscoverSearchModelImpl> get copyWith =>
      __$$DiscoverSearchModelImplCopyWithImpl<_$DiscoverSearchModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DiscoverSearchModelImplToJson(
      this,
    );
  }
}

abstract class _DiscoverSearchModel extends DiscoverSearchModel {
  const factory _DiscoverSearchModel(
      {final List<NewsModel>? news,
      final List<UserModel>? accounts,
      final List<TagModel>? tags}) = _$DiscoverSearchModelImpl;
  const _DiscoverSearchModel._() : super._();

  factory _DiscoverSearchModel.fromJson(Map<String, dynamic> json) =
      _$DiscoverSearchModelImpl.fromJson;

  @override
  List<NewsModel>? get news;
  @override
  List<UserModel>? get accounts;
  @override
  List<TagModel>? get tags;
  @override
  @JsonKey(ignore: true)
  _$$DiscoverSearchModelImplCopyWith<_$DiscoverSearchModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
