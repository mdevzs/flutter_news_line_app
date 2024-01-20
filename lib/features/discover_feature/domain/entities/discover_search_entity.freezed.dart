// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'discover_search_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DiscoverSearchEntity {
  List<NewsEntity> get news => throw _privateConstructorUsedError;
  List<UserEntity> get accounts => throw _privateConstructorUsedError;
  List<TagEntity> get tags => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DiscoverSearchEntityCopyWith<DiscoverSearchEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiscoverSearchEntityCopyWith<$Res> {
  factory $DiscoverSearchEntityCopyWith(DiscoverSearchEntity value,
          $Res Function(DiscoverSearchEntity) then) =
      _$DiscoverSearchEntityCopyWithImpl<$Res, DiscoverSearchEntity>;
  @useResult
  $Res call(
      {List<NewsEntity> news, List<UserEntity> accounts, List<TagEntity> tags});
}

/// @nodoc
class _$DiscoverSearchEntityCopyWithImpl<$Res,
        $Val extends DiscoverSearchEntity>
    implements $DiscoverSearchEntityCopyWith<$Res> {
  _$DiscoverSearchEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? news = null,
    Object? accounts = null,
    Object? tags = null,
  }) {
    return _then(_value.copyWith(
      news: null == news
          ? _value.news
          : news // ignore: cast_nullable_to_non_nullable
              as List<NewsEntity>,
      accounts: null == accounts
          ? _value.accounts
          : accounts // ignore: cast_nullable_to_non_nullable
              as List<UserEntity>,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<TagEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DiscoverSearchEntityImplCopyWith<$Res>
    implements $DiscoverSearchEntityCopyWith<$Res> {
  factory _$$DiscoverSearchEntityImplCopyWith(_$DiscoverSearchEntityImpl value,
          $Res Function(_$DiscoverSearchEntityImpl) then) =
      __$$DiscoverSearchEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<NewsEntity> news, List<UserEntity> accounts, List<TagEntity> tags});
}

/// @nodoc
class __$$DiscoverSearchEntityImplCopyWithImpl<$Res>
    extends _$DiscoverSearchEntityCopyWithImpl<$Res, _$DiscoverSearchEntityImpl>
    implements _$$DiscoverSearchEntityImplCopyWith<$Res> {
  __$$DiscoverSearchEntityImplCopyWithImpl(_$DiscoverSearchEntityImpl _value,
      $Res Function(_$DiscoverSearchEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? news = null,
    Object? accounts = null,
    Object? tags = null,
  }) {
    return _then(_$DiscoverSearchEntityImpl(
      news: null == news
          ? _value._news
          : news // ignore: cast_nullable_to_non_nullable
              as List<NewsEntity>,
      accounts: null == accounts
          ? _value._accounts
          : accounts // ignore: cast_nullable_to_non_nullable
              as List<UserEntity>,
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<TagEntity>,
    ));
  }
}

/// @nodoc

class _$DiscoverSearchEntityImpl implements _DiscoverSearchEntity {
  const _$DiscoverSearchEntityImpl(
      {required final List<NewsEntity> news,
      required final List<UserEntity> accounts,
      required final List<TagEntity> tags})
      : _news = news,
        _accounts = accounts,
        _tags = tags;

  final List<NewsEntity> _news;
  @override
  List<NewsEntity> get news {
    if (_news is EqualUnmodifiableListView) return _news;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_news);
  }

  final List<UserEntity> _accounts;
  @override
  List<UserEntity> get accounts {
    if (_accounts is EqualUnmodifiableListView) return _accounts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_accounts);
  }

  final List<TagEntity> _tags;
  @override
  List<TagEntity> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  @override
  String toString() {
    return 'DiscoverSearchEntity(news: $news, accounts: $accounts, tags: $tags)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DiscoverSearchEntityImpl &&
            const DeepCollectionEquality().equals(other._news, _news) &&
            const DeepCollectionEquality().equals(other._accounts, _accounts) &&
            const DeepCollectionEquality().equals(other._tags, _tags));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_news),
      const DeepCollectionEquality().hash(_accounts),
      const DeepCollectionEquality().hash(_tags));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DiscoverSearchEntityImplCopyWith<_$DiscoverSearchEntityImpl>
      get copyWith =>
          __$$DiscoverSearchEntityImplCopyWithImpl<_$DiscoverSearchEntityImpl>(
              this, _$identity);
}

abstract class _DiscoverSearchEntity implements DiscoverSearchEntity {
  const factory _DiscoverSearchEntity(
      {required final List<NewsEntity> news,
      required final List<UserEntity> accounts,
      required final List<TagEntity> tags}) = _$DiscoverSearchEntityImpl;

  @override
  List<NewsEntity> get news;
  @override
  List<UserEntity> get accounts;
  @override
  List<TagEntity> get tags;
  @override
  @JsonKey(ignore: true)
  _$$DiscoverSearchEntityImplCopyWith<_$DiscoverSearchEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
