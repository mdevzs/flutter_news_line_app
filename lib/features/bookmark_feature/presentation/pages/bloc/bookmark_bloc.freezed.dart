// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bookmark_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BookmarkEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) addNewCollection,
    required TResult Function() getAllCollection,
    required TResult Function(List<int> collectionId, NewsEntity news)
        addNewsToCollection,
    required TResult Function(int collectionId) getAllNewsOfCollection,
    required TResult Function(int collectionId, NewsEntity news)
        removeNewFromCollection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? addNewCollection,
    TResult? Function()? getAllCollection,
    TResult? Function(List<int> collectionId, NewsEntity news)?
        addNewsToCollection,
    TResult? Function(int collectionId)? getAllNewsOfCollection,
    TResult? Function(int collectionId, NewsEntity news)?
        removeNewFromCollection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? addNewCollection,
    TResult Function()? getAllCollection,
    TResult Function(List<int> collectionId, NewsEntity news)?
        addNewsToCollection,
    TResult Function(int collectionId)? getAllNewsOfCollection,
    TResult Function(int collectionId, NewsEntity news)?
        removeNewFromCollection,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddNewCollection value) addNewCollection,
    required TResult Function(_GetAllCollection value) getAllCollection,
    required TResult Function(_AddNewsToCollection value) addNewsToCollection,
    required TResult Function(_GetAllNewsOfCollection value)
        getAllNewsOfCollection,
    required TResult Function(_RemoveNewsFromCollection value)
        removeNewFromCollection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddNewCollection value)? addNewCollection,
    TResult? Function(_GetAllCollection value)? getAllCollection,
    TResult? Function(_AddNewsToCollection value)? addNewsToCollection,
    TResult? Function(_GetAllNewsOfCollection value)? getAllNewsOfCollection,
    TResult? Function(_RemoveNewsFromCollection value)? removeNewFromCollection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddNewCollection value)? addNewCollection,
    TResult Function(_GetAllCollection value)? getAllCollection,
    TResult Function(_AddNewsToCollection value)? addNewsToCollection,
    TResult Function(_GetAllNewsOfCollection value)? getAllNewsOfCollection,
    TResult Function(_RemoveNewsFromCollection value)? removeNewFromCollection,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookmarkEventCopyWith<$Res> {
  factory $BookmarkEventCopyWith(
          BookmarkEvent value, $Res Function(BookmarkEvent) then) =
      _$BookmarkEventCopyWithImpl<$Res, BookmarkEvent>;
}

/// @nodoc
class _$BookmarkEventCopyWithImpl<$Res, $Val extends BookmarkEvent>
    implements $BookmarkEventCopyWith<$Res> {
  _$BookmarkEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AddNewCollectionImplCopyWith<$Res> {
  factory _$$AddNewCollectionImplCopyWith(_$AddNewCollectionImpl value,
          $Res Function(_$AddNewCollectionImpl) then) =
      __$$AddNewCollectionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$AddNewCollectionImplCopyWithImpl<$Res>
    extends _$BookmarkEventCopyWithImpl<$Res, _$AddNewCollectionImpl>
    implements _$$AddNewCollectionImplCopyWith<$Res> {
  __$$AddNewCollectionImplCopyWithImpl(_$AddNewCollectionImpl _value,
      $Res Function(_$AddNewCollectionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$AddNewCollectionImpl(
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddNewCollectionImpl implements _AddNewCollection {
  const _$AddNewCollectionImpl(this.name);

  @override
  final String name;

  @override
  String toString() {
    return 'BookmarkEvent.addNewCollection(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddNewCollectionImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddNewCollectionImplCopyWith<_$AddNewCollectionImpl> get copyWith =>
      __$$AddNewCollectionImplCopyWithImpl<_$AddNewCollectionImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) addNewCollection,
    required TResult Function() getAllCollection,
    required TResult Function(List<int> collectionId, NewsEntity news)
        addNewsToCollection,
    required TResult Function(int collectionId) getAllNewsOfCollection,
    required TResult Function(int collectionId, NewsEntity news)
        removeNewFromCollection,
  }) {
    return addNewCollection(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? addNewCollection,
    TResult? Function()? getAllCollection,
    TResult? Function(List<int> collectionId, NewsEntity news)?
        addNewsToCollection,
    TResult? Function(int collectionId)? getAllNewsOfCollection,
    TResult? Function(int collectionId, NewsEntity news)?
        removeNewFromCollection,
  }) {
    return addNewCollection?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? addNewCollection,
    TResult Function()? getAllCollection,
    TResult Function(List<int> collectionId, NewsEntity news)?
        addNewsToCollection,
    TResult Function(int collectionId)? getAllNewsOfCollection,
    TResult Function(int collectionId, NewsEntity news)?
        removeNewFromCollection,
    required TResult orElse(),
  }) {
    if (addNewCollection != null) {
      return addNewCollection(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddNewCollection value) addNewCollection,
    required TResult Function(_GetAllCollection value) getAllCollection,
    required TResult Function(_AddNewsToCollection value) addNewsToCollection,
    required TResult Function(_GetAllNewsOfCollection value)
        getAllNewsOfCollection,
    required TResult Function(_RemoveNewsFromCollection value)
        removeNewFromCollection,
  }) {
    return addNewCollection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddNewCollection value)? addNewCollection,
    TResult? Function(_GetAllCollection value)? getAllCollection,
    TResult? Function(_AddNewsToCollection value)? addNewsToCollection,
    TResult? Function(_GetAllNewsOfCollection value)? getAllNewsOfCollection,
    TResult? Function(_RemoveNewsFromCollection value)? removeNewFromCollection,
  }) {
    return addNewCollection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddNewCollection value)? addNewCollection,
    TResult Function(_GetAllCollection value)? getAllCollection,
    TResult Function(_AddNewsToCollection value)? addNewsToCollection,
    TResult Function(_GetAllNewsOfCollection value)? getAllNewsOfCollection,
    TResult Function(_RemoveNewsFromCollection value)? removeNewFromCollection,
    required TResult orElse(),
  }) {
    if (addNewCollection != null) {
      return addNewCollection(this);
    }
    return orElse();
  }
}

abstract class _AddNewCollection implements BookmarkEvent {
  const factory _AddNewCollection(final String name) = _$AddNewCollectionImpl;

  String get name;
  @JsonKey(ignore: true)
  _$$AddNewCollectionImplCopyWith<_$AddNewCollectionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetAllCollectionImplCopyWith<$Res> {
  factory _$$GetAllCollectionImplCopyWith(_$GetAllCollectionImpl value,
          $Res Function(_$GetAllCollectionImpl) then) =
      __$$GetAllCollectionImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetAllCollectionImplCopyWithImpl<$Res>
    extends _$BookmarkEventCopyWithImpl<$Res, _$GetAllCollectionImpl>
    implements _$$GetAllCollectionImplCopyWith<$Res> {
  __$$GetAllCollectionImplCopyWithImpl(_$GetAllCollectionImpl _value,
      $Res Function(_$GetAllCollectionImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetAllCollectionImpl implements _GetAllCollection {
  const _$GetAllCollectionImpl();

  @override
  String toString() {
    return 'BookmarkEvent.getAllCollection()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetAllCollectionImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) addNewCollection,
    required TResult Function() getAllCollection,
    required TResult Function(List<int> collectionId, NewsEntity news)
        addNewsToCollection,
    required TResult Function(int collectionId) getAllNewsOfCollection,
    required TResult Function(int collectionId, NewsEntity news)
        removeNewFromCollection,
  }) {
    return getAllCollection();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? addNewCollection,
    TResult? Function()? getAllCollection,
    TResult? Function(List<int> collectionId, NewsEntity news)?
        addNewsToCollection,
    TResult? Function(int collectionId)? getAllNewsOfCollection,
    TResult? Function(int collectionId, NewsEntity news)?
        removeNewFromCollection,
  }) {
    return getAllCollection?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? addNewCollection,
    TResult Function()? getAllCollection,
    TResult Function(List<int> collectionId, NewsEntity news)?
        addNewsToCollection,
    TResult Function(int collectionId)? getAllNewsOfCollection,
    TResult Function(int collectionId, NewsEntity news)?
        removeNewFromCollection,
    required TResult orElse(),
  }) {
    if (getAllCollection != null) {
      return getAllCollection();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddNewCollection value) addNewCollection,
    required TResult Function(_GetAllCollection value) getAllCollection,
    required TResult Function(_AddNewsToCollection value) addNewsToCollection,
    required TResult Function(_GetAllNewsOfCollection value)
        getAllNewsOfCollection,
    required TResult Function(_RemoveNewsFromCollection value)
        removeNewFromCollection,
  }) {
    return getAllCollection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddNewCollection value)? addNewCollection,
    TResult? Function(_GetAllCollection value)? getAllCollection,
    TResult? Function(_AddNewsToCollection value)? addNewsToCollection,
    TResult? Function(_GetAllNewsOfCollection value)? getAllNewsOfCollection,
    TResult? Function(_RemoveNewsFromCollection value)? removeNewFromCollection,
  }) {
    return getAllCollection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddNewCollection value)? addNewCollection,
    TResult Function(_GetAllCollection value)? getAllCollection,
    TResult Function(_AddNewsToCollection value)? addNewsToCollection,
    TResult Function(_GetAllNewsOfCollection value)? getAllNewsOfCollection,
    TResult Function(_RemoveNewsFromCollection value)? removeNewFromCollection,
    required TResult orElse(),
  }) {
    if (getAllCollection != null) {
      return getAllCollection(this);
    }
    return orElse();
  }
}

abstract class _GetAllCollection implements BookmarkEvent {
  const factory _GetAllCollection() = _$GetAllCollectionImpl;
}

/// @nodoc
abstract class _$$AddNewsToCollectionImplCopyWith<$Res> {
  factory _$$AddNewsToCollectionImplCopyWith(_$AddNewsToCollectionImpl value,
          $Res Function(_$AddNewsToCollectionImpl) then) =
      __$$AddNewsToCollectionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<int> collectionId, NewsEntity news});

  $NewsEntityCopyWith<$Res> get news;
}

/// @nodoc
class __$$AddNewsToCollectionImplCopyWithImpl<$Res>
    extends _$BookmarkEventCopyWithImpl<$Res, _$AddNewsToCollectionImpl>
    implements _$$AddNewsToCollectionImplCopyWith<$Res> {
  __$$AddNewsToCollectionImplCopyWithImpl(_$AddNewsToCollectionImpl _value,
      $Res Function(_$AddNewsToCollectionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? collectionId = null,
    Object? news = null,
  }) {
    return _then(_$AddNewsToCollectionImpl(
      null == collectionId
          ? _value._collectionId
          : collectionId // ignore: cast_nullable_to_non_nullable
              as List<int>,
      null == news
          ? _value.news
          : news // ignore: cast_nullable_to_non_nullable
              as NewsEntity,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $NewsEntityCopyWith<$Res> get news {
    return $NewsEntityCopyWith<$Res>(_value.news, (value) {
      return _then(_value.copyWith(news: value));
    });
  }
}

/// @nodoc

class _$AddNewsToCollectionImpl implements _AddNewsToCollection {
  const _$AddNewsToCollectionImpl(final List<int> collectionId, this.news)
      : _collectionId = collectionId;

  final List<int> _collectionId;
  @override
  List<int> get collectionId {
    if (_collectionId is EqualUnmodifiableListView) return _collectionId;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_collectionId);
  }

  @override
  final NewsEntity news;

  @override
  String toString() {
    return 'BookmarkEvent.addNewsToCollection(collectionId: $collectionId, news: $news)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddNewsToCollectionImpl &&
            const DeepCollectionEquality()
                .equals(other._collectionId, _collectionId) &&
            (identical(other.news, news) || other.news == news));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_collectionId), news);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddNewsToCollectionImplCopyWith<_$AddNewsToCollectionImpl> get copyWith =>
      __$$AddNewsToCollectionImplCopyWithImpl<_$AddNewsToCollectionImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) addNewCollection,
    required TResult Function() getAllCollection,
    required TResult Function(List<int> collectionId, NewsEntity news)
        addNewsToCollection,
    required TResult Function(int collectionId) getAllNewsOfCollection,
    required TResult Function(int collectionId, NewsEntity news)
        removeNewFromCollection,
  }) {
    return addNewsToCollection(collectionId, news);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? addNewCollection,
    TResult? Function()? getAllCollection,
    TResult? Function(List<int> collectionId, NewsEntity news)?
        addNewsToCollection,
    TResult? Function(int collectionId)? getAllNewsOfCollection,
    TResult? Function(int collectionId, NewsEntity news)?
        removeNewFromCollection,
  }) {
    return addNewsToCollection?.call(collectionId, news);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? addNewCollection,
    TResult Function()? getAllCollection,
    TResult Function(List<int> collectionId, NewsEntity news)?
        addNewsToCollection,
    TResult Function(int collectionId)? getAllNewsOfCollection,
    TResult Function(int collectionId, NewsEntity news)?
        removeNewFromCollection,
    required TResult orElse(),
  }) {
    if (addNewsToCollection != null) {
      return addNewsToCollection(collectionId, news);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddNewCollection value) addNewCollection,
    required TResult Function(_GetAllCollection value) getAllCollection,
    required TResult Function(_AddNewsToCollection value) addNewsToCollection,
    required TResult Function(_GetAllNewsOfCollection value)
        getAllNewsOfCollection,
    required TResult Function(_RemoveNewsFromCollection value)
        removeNewFromCollection,
  }) {
    return addNewsToCollection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddNewCollection value)? addNewCollection,
    TResult? Function(_GetAllCollection value)? getAllCollection,
    TResult? Function(_AddNewsToCollection value)? addNewsToCollection,
    TResult? Function(_GetAllNewsOfCollection value)? getAllNewsOfCollection,
    TResult? Function(_RemoveNewsFromCollection value)? removeNewFromCollection,
  }) {
    return addNewsToCollection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddNewCollection value)? addNewCollection,
    TResult Function(_GetAllCollection value)? getAllCollection,
    TResult Function(_AddNewsToCollection value)? addNewsToCollection,
    TResult Function(_GetAllNewsOfCollection value)? getAllNewsOfCollection,
    TResult Function(_RemoveNewsFromCollection value)? removeNewFromCollection,
    required TResult orElse(),
  }) {
    if (addNewsToCollection != null) {
      return addNewsToCollection(this);
    }
    return orElse();
  }
}

abstract class _AddNewsToCollection implements BookmarkEvent {
  const factory _AddNewsToCollection(
          final List<int> collectionId, final NewsEntity news) =
      _$AddNewsToCollectionImpl;

  List<int> get collectionId;
  NewsEntity get news;
  @JsonKey(ignore: true)
  _$$AddNewsToCollectionImplCopyWith<_$AddNewsToCollectionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetAllNewsOfCollectionImplCopyWith<$Res> {
  factory _$$GetAllNewsOfCollectionImplCopyWith(
          _$GetAllNewsOfCollectionImpl value,
          $Res Function(_$GetAllNewsOfCollectionImpl) then) =
      __$$GetAllNewsOfCollectionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int collectionId});
}

/// @nodoc
class __$$GetAllNewsOfCollectionImplCopyWithImpl<$Res>
    extends _$BookmarkEventCopyWithImpl<$Res, _$GetAllNewsOfCollectionImpl>
    implements _$$GetAllNewsOfCollectionImplCopyWith<$Res> {
  __$$GetAllNewsOfCollectionImplCopyWithImpl(
      _$GetAllNewsOfCollectionImpl _value,
      $Res Function(_$GetAllNewsOfCollectionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? collectionId = null,
  }) {
    return _then(_$GetAllNewsOfCollectionImpl(
      null == collectionId
          ? _value.collectionId
          : collectionId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetAllNewsOfCollectionImpl implements _GetAllNewsOfCollection {
  const _$GetAllNewsOfCollectionImpl(this.collectionId);

  @override
  final int collectionId;

  @override
  String toString() {
    return 'BookmarkEvent.getAllNewsOfCollection(collectionId: $collectionId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAllNewsOfCollectionImpl &&
            (identical(other.collectionId, collectionId) ||
                other.collectionId == collectionId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, collectionId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAllNewsOfCollectionImplCopyWith<_$GetAllNewsOfCollectionImpl>
      get copyWith => __$$GetAllNewsOfCollectionImplCopyWithImpl<
          _$GetAllNewsOfCollectionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) addNewCollection,
    required TResult Function() getAllCollection,
    required TResult Function(List<int> collectionId, NewsEntity news)
        addNewsToCollection,
    required TResult Function(int collectionId) getAllNewsOfCollection,
    required TResult Function(int collectionId, NewsEntity news)
        removeNewFromCollection,
  }) {
    return getAllNewsOfCollection(collectionId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? addNewCollection,
    TResult? Function()? getAllCollection,
    TResult? Function(List<int> collectionId, NewsEntity news)?
        addNewsToCollection,
    TResult? Function(int collectionId)? getAllNewsOfCollection,
    TResult? Function(int collectionId, NewsEntity news)?
        removeNewFromCollection,
  }) {
    return getAllNewsOfCollection?.call(collectionId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? addNewCollection,
    TResult Function()? getAllCollection,
    TResult Function(List<int> collectionId, NewsEntity news)?
        addNewsToCollection,
    TResult Function(int collectionId)? getAllNewsOfCollection,
    TResult Function(int collectionId, NewsEntity news)?
        removeNewFromCollection,
    required TResult orElse(),
  }) {
    if (getAllNewsOfCollection != null) {
      return getAllNewsOfCollection(collectionId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddNewCollection value) addNewCollection,
    required TResult Function(_GetAllCollection value) getAllCollection,
    required TResult Function(_AddNewsToCollection value) addNewsToCollection,
    required TResult Function(_GetAllNewsOfCollection value)
        getAllNewsOfCollection,
    required TResult Function(_RemoveNewsFromCollection value)
        removeNewFromCollection,
  }) {
    return getAllNewsOfCollection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddNewCollection value)? addNewCollection,
    TResult? Function(_GetAllCollection value)? getAllCollection,
    TResult? Function(_AddNewsToCollection value)? addNewsToCollection,
    TResult? Function(_GetAllNewsOfCollection value)? getAllNewsOfCollection,
    TResult? Function(_RemoveNewsFromCollection value)? removeNewFromCollection,
  }) {
    return getAllNewsOfCollection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddNewCollection value)? addNewCollection,
    TResult Function(_GetAllCollection value)? getAllCollection,
    TResult Function(_AddNewsToCollection value)? addNewsToCollection,
    TResult Function(_GetAllNewsOfCollection value)? getAllNewsOfCollection,
    TResult Function(_RemoveNewsFromCollection value)? removeNewFromCollection,
    required TResult orElse(),
  }) {
    if (getAllNewsOfCollection != null) {
      return getAllNewsOfCollection(this);
    }
    return orElse();
  }
}

abstract class _GetAllNewsOfCollection implements BookmarkEvent {
  const factory _GetAllNewsOfCollection(final int collectionId) =
      _$GetAllNewsOfCollectionImpl;

  int get collectionId;
  @JsonKey(ignore: true)
  _$$GetAllNewsOfCollectionImplCopyWith<_$GetAllNewsOfCollectionImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveNewsFromCollectionImplCopyWith<$Res> {
  factory _$$RemoveNewsFromCollectionImplCopyWith(
          _$RemoveNewsFromCollectionImpl value,
          $Res Function(_$RemoveNewsFromCollectionImpl) then) =
      __$$RemoveNewsFromCollectionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int collectionId, NewsEntity news});

  $NewsEntityCopyWith<$Res> get news;
}

/// @nodoc
class __$$RemoveNewsFromCollectionImplCopyWithImpl<$Res>
    extends _$BookmarkEventCopyWithImpl<$Res, _$RemoveNewsFromCollectionImpl>
    implements _$$RemoveNewsFromCollectionImplCopyWith<$Res> {
  __$$RemoveNewsFromCollectionImplCopyWithImpl(
      _$RemoveNewsFromCollectionImpl _value,
      $Res Function(_$RemoveNewsFromCollectionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? collectionId = null,
    Object? news = null,
  }) {
    return _then(_$RemoveNewsFromCollectionImpl(
      null == collectionId
          ? _value.collectionId
          : collectionId // ignore: cast_nullable_to_non_nullable
              as int,
      null == news
          ? _value.news
          : news // ignore: cast_nullable_to_non_nullable
              as NewsEntity,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $NewsEntityCopyWith<$Res> get news {
    return $NewsEntityCopyWith<$Res>(_value.news, (value) {
      return _then(_value.copyWith(news: value));
    });
  }
}

/// @nodoc

class _$RemoveNewsFromCollectionImpl implements _RemoveNewsFromCollection {
  const _$RemoveNewsFromCollectionImpl(this.collectionId, this.news);

  @override
  final int collectionId;
  @override
  final NewsEntity news;

  @override
  String toString() {
    return 'BookmarkEvent.removeNewFromCollection(collectionId: $collectionId, news: $news)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveNewsFromCollectionImpl &&
            (identical(other.collectionId, collectionId) ||
                other.collectionId == collectionId) &&
            (identical(other.news, news) || other.news == news));
  }

  @override
  int get hashCode => Object.hash(runtimeType, collectionId, news);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveNewsFromCollectionImplCopyWith<_$RemoveNewsFromCollectionImpl>
      get copyWith => __$$RemoveNewsFromCollectionImplCopyWithImpl<
          _$RemoveNewsFromCollectionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) addNewCollection,
    required TResult Function() getAllCollection,
    required TResult Function(List<int> collectionId, NewsEntity news)
        addNewsToCollection,
    required TResult Function(int collectionId) getAllNewsOfCollection,
    required TResult Function(int collectionId, NewsEntity news)
        removeNewFromCollection,
  }) {
    return removeNewFromCollection(collectionId, news);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? addNewCollection,
    TResult? Function()? getAllCollection,
    TResult? Function(List<int> collectionId, NewsEntity news)?
        addNewsToCollection,
    TResult? Function(int collectionId)? getAllNewsOfCollection,
    TResult? Function(int collectionId, NewsEntity news)?
        removeNewFromCollection,
  }) {
    return removeNewFromCollection?.call(collectionId, news);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? addNewCollection,
    TResult Function()? getAllCollection,
    TResult Function(List<int> collectionId, NewsEntity news)?
        addNewsToCollection,
    TResult Function(int collectionId)? getAllNewsOfCollection,
    TResult Function(int collectionId, NewsEntity news)?
        removeNewFromCollection,
    required TResult orElse(),
  }) {
    if (removeNewFromCollection != null) {
      return removeNewFromCollection(collectionId, news);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddNewCollection value) addNewCollection,
    required TResult Function(_GetAllCollection value) getAllCollection,
    required TResult Function(_AddNewsToCollection value) addNewsToCollection,
    required TResult Function(_GetAllNewsOfCollection value)
        getAllNewsOfCollection,
    required TResult Function(_RemoveNewsFromCollection value)
        removeNewFromCollection,
  }) {
    return removeNewFromCollection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddNewCollection value)? addNewCollection,
    TResult? Function(_GetAllCollection value)? getAllCollection,
    TResult? Function(_AddNewsToCollection value)? addNewsToCollection,
    TResult? Function(_GetAllNewsOfCollection value)? getAllNewsOfCollection,
    TResult? Function(_RemoveNewsFromCollection value)? removeNewFromCollection,
  }) {
    return removeNewFromCollection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddNewCollection value)? addNewCollection,
    TResult Function(_GetAllCollection value)? getAllCollection,
    TResult Function(_AddNewsToCollection value)? addNewsToCollection,
    TResult Function(_GetAllNewsOfCollection value)? getAllNewsOfCollection,
    TResult Function(_RemoveNewsFromCollection value)? removeNewFromCollection,
    required TResult orElse(),
  }) {
    if (removeNewFromCollection != null) {
      return removeNewFromCollection(this);
    }
    return orElse();
  }
}

abstract class _RemoveNewsFromCollection implements BookmarkEvent {
  const factory _RemoveNewsFromCollection(
          final int collectionId, final NewsEntity news) =
      _$RemoveNewsFromCollectionImpl;

  int get collectionId;
  NewsEntity get news;
  @JsonKey(ignore: true)
  _$$RemoveNewsFromCollectionImplCopyWith<_$RemoveNewsFromCollectionImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BookmarkState {
  List<Bookmarks> get collections => throw _privateConstructorUsedError;
  AddNewCollectionStatus get addNewCollectionStatus =>
      throw _privateConstructorUsedError;
  AddNewsToCollectionStatus get addNewsToCollectionStatus =>
      throw _privateConstructorUsedError;
  GetAllCollectionStatus get getAllCollectionStatus =>
      throw _privateConstructorUsedError;
  GetAllNewsOfCollectionStatus get getAllNewsOfCollectionStatus =>
      throw _privateConstructorUsedError;
  RemoveNewsFromCollectionStatus get removeNewsFromCollectionStatus =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BookmarkStateCopyWith<BookmarkState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookmarkStateCopyWith<$Res> {
  factory $BookmarkStateCopyWith(
          BookmarkState value, $Res Function(BookmarkState) then) =
      _$BookmarkStateCopyWithImpl<$Res, BookmarkState>;
  @useResult
  $Res call(
      {List<Bookmarks> collections,
      AddNewCollectionStatus addNewCollectionStatus,
      AddNewsToCollectionStatus addNewsToCollectionStatus,
      GetAllCollectionStatus getAllCollectionStatus,
      GetAllNewsOfCollectionStatus getAllNewsOfCollectionStatus,
      RemoveNewsFromCollectionStatus removeNewsFromCollectionStatus});

  $AddNewCollectionStatusCopyWith<$Res> get addNewCollectionStatus;
  $AddNewsToCollectionStatusCopyWith<$Res> get addNewsToCollectionStatus;
  $GetAllCollectionStatusCopyWith<$Res> get getAllCollectionStatus;
  $GetAllNewsOfCollectionStatusCopyWith<$Res> get getAllNewsOfCollectionStatus;
  $RemoveNewsFromCollectionStatusCopyWith<$Res>
      get removeNewsFromCollectionStatus;
}

/// @nodoc
class _$BookmarkStateCopyWithImpl<$Res, $Val extends BookmarkState>
    implements $BookmarkStateCopyWith<$Res> {
  _$BookmarkStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? collections = null,
    Object? addNewCollectionStatus = null,
    Object? addNewsToCollectionStatus = null,
    Object? getAllCollectionStatus = null,
    Object? getAllNewsOfCollectionStatus = null,
    Object? removeNewsFromCollectionStatus = null,
  }) {
    return _then(_value.copyWith(
      collections: null == collections
          ? _value.collections
          : collections // ignore: cast_nullable_to_non_nullable
              as List<Bookmarks>,
      addNewCollectionStatus: null == addNewCollectionStatus
          ? _value.addNewCollectionStatus
          : addNewCollectionStatus // ignore: cast_nullable_to_non_nullable
              as AddNewCollectionStatus,
      addNewsToCollectionStatus: null == addNewsToCollectionStatus
          ? _value.addNewsToCollectionStatus
          : addNewsToCollectionStatus // ignore: cast_nullable_to_non_nullable
              as AddNewsToCollectionStatus,
      getAllCollectionStatus: null == getAllCollectionStatus
          ? _value.getAllCollectionStatus
          : getAllCollectionStatus // ignore: cast_nullable_to_non_nullable
              as GetAllCollectionStatus,
      getAllNewsOfCollectionStatus: null == getAllNewsOfCollectionStatus
          ? _value.getAllNewsOfCollectionStatus
          : getAllNewsOfCollectionStatus // ignore: cast_nullable_to_non_nullable
              as GetAllNewsOfCollectionStatus,
      removeNewsFromCollectionStatus: null == removeNewsFromCollectionStatus
          ? _value.removeNewsFromCollectionStatus
          : removeNewsFromCollectionStatus // ignore: cast_nullable_to_non_nullable
              as RemoveNewsFromCollectionStatus,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AddNewCollectionStatusCopyWith<$Res> get addNewCollectionStatus {
    return $AddNewCollectionStatusCopyWith<$Res>(_value.addNewCollectionStatus,
        (value) {
      return _then(_value.copyWith(addNewCollectionStatus: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AddNewsToCollectionStatusCopyWith<$Res> get addNewsToCollectionStatus {
    return $AddNewsToCollectionStatusCopyWith<$Res>(
        _value.addNewsToCollectionStatus, (value) {
      return _then(_value.copyWith(addNewsToCollectionStatus: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $GetAllCollectionStatusCopyWith<$Res> get getAllCollectionStatus {
    return $GetAllCollectionStatusCopyWith<$Res>(_value.getAllCollectionStatus,
        (value) {
      return _then(_value.copyWith(getAllCollectionStatus: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $GetAllNewsOfCollectionStatusCopyWith<$Res> get getAllNewsOfCollectionStatus {
    return $GetAllNewsOfCollectionStatusCopyWith<$Res>(
        _value.getAllNewsOfCollectionStatus, (value) {
      return _then(
          _value.copyWith(getAllNewsOfCollectionStatus: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $RemoveNewsFromCollectionStatusCopyWith<$Res>
      get removeNewsFromCollectionStatus {
    return $RemoveNewsFromCollectionStatusCopyWith<$Res>(
        _value.removeNewsFromCollectionStatus, (value) {
      return _then(
          _value.copyWith(removeNewsFromCollectionStatus: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BookmarkStateImplCopyWith<$Res>
    implements $BookmarkStateCopyWith<$Res> {
  factory _$$BookmarkStateImplCopyWith(
          _$BookmarkStateImpl value, $Res Function(_$BookmarkStateImpl) then) =
      __$$BookmarkStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Bookmarks> collections,
      AddNewCollectionStatus addNewCollectionStatus,
      AddNewsToCollectionStatus addNewsToCollectionStatus,
      GetAllCollectionStatus getAllCollectionStatus,
      GetAllNewsOfCollectionStatus getAllNewsOfCollectionStatus,
      RemoveNewsFromCollectionStatus removeNewsFromCollectionStatus});

  @override
  $AddNewCollectionStatusCopyWith<$Res> get addNewCollectionStatus;
  @override
  $AddNewsToCollectionStatusCopyWith<$Res> get addNewsToCollectionStatus;
  @override
  $GetAllCollectionStatusCopyWith<$Res> get getAllCollectionStatus;
  @override
  $GetAllNewsOfCollectionStatusCopyWith<$Res> get getAllNewsOfCollectionStatus;
  @override
  $RemoveNewsFromCollectionStatusCopyWith<$Res>
      get removeNewsFromCollectionStatus;
}

/// @nodoc
class __$$BookmarkStateImplCopyWithImpl<$Res>
    extends _$BookmarkStateCopyWithImpl<$Res, _$BookmarkStateImpl>
    implements _$$BookmarkStateImplCopyWith<$Res> {
  __$$BookmarkStateImplCopyWithImpl(
      _$BookmarkStateImpl _value, $Res Function(_$BookmarkStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? collections = null,
    Object? addNewCollectionStatus = null,
    Object? addNewsToCollectionStatus = null,
    Object? getAllCollectionStatus = null,
    Object? getAllNewsOfCollectionStatus = null,
    Object? removeNewsFromCollectionStatus = null,
  }) {
    return _then(_$BookmarkStateImpl(
      collections: null == collections
          ? _value._collections
          : collections // ignore: cast_nullable_to_non_nullable
              as List<Bookmarks>,
      addNewCollectionStatus: null == addNewCollectionStatus
          ? _value.addNewCollectionStatus
          : addNewCollectionStatus // ignore: cast_nullable_to_non_nullable
              as AddNewCollectionStatus,
      addNewsToCollectionStatus: null == addNewsToCollectionStatus
          ? _value.addNewsToCollectionStatus
          : addNewsToCollectionStatus // ignore: cast_nullable_to_non_nullable
              as AddNewsToCollectionStatus,
      getAllCollectionStatus: null == getAllCollectionStatus
          ? _value.getAllCollectionStatus
          : getAllCollectionStatus // ignore: cast_nullable_to_non_nullable
              as GetAllCollectionStatus,
      getAllNewsOfCollectionStatus: null == getAllNewsOfCollectionStatus
          ? _value.getAllNewsOfCollectionStatus
          : getAllNewsOfCollectionStatus // ignore: cast_nullable_to_non_nullable
              as GetAllNewsOfCollectionStatus,
      removeNewsFromCollectionStatus: null == removeNewsFromCollectionStatus
          ? _value.removeNewsFromCollectionStatus
          : removeNewsFromCollectionStatus // ignore: cast_nullable_to_non_nullable
              as RemoveNewsFromCollectionStatus,
    ));
  }
}

/// @nodoc

class _$BookmarkStateImpl implements _BookmarkState {
  const _$BookmarkStateImpl(
      {final List<Bookmarks> collections = const [],
      this.addNewCollectionStatus = const AddNewCollectionStatus.initial(),
      this.addNewsToCollectionStatus =
          const AddNewsToCollectionStatus.initial(),
      this.getAllCollectionStatus = const GetAllCollectionStatus.initial(),
      this.getAllNewsOfCollectionStatus =
          const GetAllNewsOfCollectionStatus.initial(),
      this.removeNewsFromCollectionStatus =
          const RemoveNewsFromCollectionStatus.initial()})
      : _collections = collections;

  final List<Bookmarks> _collections;
  @override
  @JsonKey()
  List<Bookmarks> get collections {
    if (_collections is EqualUnmodifiableListView) return _collections;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_collections);
  }

  @override
  @JsonKey()
  final AddNewCollectionStatus addNewCollectionStatus;
  @override
  @JsonKey()
  final AddNewsToCollectionStatus addNewsToCollectionStatus;
  @override
  @JsonKey()
  final GetAllCollectionStatus getAllCollectionStatus;
  @override
  @JsonKey()
  final GetAllNewsOfCollectionStatus getAllNewsOfCollectionStatus;
  @override
  @JsonKey()
  final RemoveNewsFromCollectionStatus removeNewsFromCollectionStatus;

  @override
  String toString() {
    return 'BookmarkState(collections: $collections, addNewCollectionStatus: $addNewCollectionStatus, addNewsToCollectionStatus: $addNewsToCollectionStatus, getAllCollectionStatus: $getAllCollectionStatus, getAllNewsOfCollectionStatus: $getAllNewsOfCollectionStatus, removeNewsFromCollectionStatus: $removeNewsFromCollectionStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookmarkStateImpl &&
            const DeepCollectionEquality()
                .equals(other._collections, _collections) &&
            (identical(other.addNewCollectionStatus, addNewCollectionStatus) ||
                other.addNewCollectionStatus == addNewCollectionStatus) &&
            (identical(other.addNewsToCollectionStatus,
                    addNewsToCollectionStatus) ||
                other.addNewsToCollectionStatus == addNewsToCollectionStatus) &&
            (identical(other.getAllCollectionStatus, getAllCollectionStatus) ||
                other.getAllCollectionStatus == getAllCollectionStatus) &&
            (identical(other.getAllNewsOfCollectionStatus,
                    getAllNewsOfCollectionStatus) ||
                other.getAllNewsOfCollectionStatus ==
                    getAllNewsOfCollectionStatus) &&
            (identical(other.removeNewsFromCollectionStatus,
                    removeNewsFromCollectionStatus) ||
                other.removeNewsFromCollectionStatus ==
                    removeNewsFromCollectionStatus));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_collections),
      addNewCollectionStatus,
      addNewsToCollectionStatus,
      getAllCollectionStatus,
      getAllNewsOfCollectionStatus,
      removeNewsFromCollectionStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookmarkStateImplCopyWith<_$BookmarkStateImpl> get copyWith =>
      __$$BookmarkStateImplCopyWithImpl<_$BookmarkStateImpl>(this, _$identity);
}

abstract class _BookmarkState implements BookmarkState {
  const factory _BookmarkState(
      {final List<Bookmarks> collections,
      final AddNewCollectionStatus addNewCollectionStatus,
      final AddNewsToCollectionStatus addNewsToCollectionStatus,
      final GetAllCollectionStatus getAllCollectionStatus,
      final GetAllNewsOfCollectionStatus getAllNewsOfCollectionStatus,
      final RemoveNewsFromCollectionStatus
          removeNewsFromCollectionStatus}) = _$BookmarkStateImpl;

  @override
  List<Bookmarks> get collections;
  @override
  AddNewCollectionStatus get addNewCollectionStatus;
  @override
  AddNewsToCollectionStatus get addNewsToCollectionStatus;
  @override
  GetAllCollectionStatus get getAllCollectionStatus;
  @override
  GetAllNewsOfCollectionStatus get getAllNewsOfCollectionStatus;
  @override
  RemoveNewsFromCollectionStatus get removeNewsFromCollectionStatus;
  @override
  @JsonKey(ignore: true)
  _$$BookmarkStateImplCopyWith<_$BookmarkStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
