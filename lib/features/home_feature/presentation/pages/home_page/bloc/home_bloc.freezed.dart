// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getHome,
    required TResult Function(String tag) getRecentStories,
    required TResult Function(int tagId) selectTag,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getHome,
    TResult? Function(String tag)? getRecentStories,
    TResult? Function(int tagId)? selectTag,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getHome,
    TResult Function(String tag)? getRecentStories,
    TResult Function(int tagId)? selectTag,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetHome value) getHome,
    required TResult Function(_GetRecentStories value) getRecentStories,
    required TResult Function(_SelectTagHome value) selectTag,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetHome value)? getHome,
    TResult? Function(_GetRecentStories value)? getRecentStories,
    TResult? Function(_SelectTagHome value)? selectTag,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetHome value)? getHome,
    TResult Function(_GetRecentStories value)? getRecentStories,
    TResult Function(_SelectTagHome value)? selectTag,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetHomeImplCopyWith<$Res> {
  factory _$$GetHomeImplCopyWith(
          _$GetHomeImpl value, $Res Function(_$GetHomeImpl) then) =
      __$$GetHomeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetHomeImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$GetHomeImpl>
    implements _$$GetHomeImplCopyWith<$Res> {
  __$$GetHomeImplCopyWithImpl(
      _$GetHomeImpl _value, $Res Function(_$GetHomeImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetHomeImpl implements _GetHome {
  const _$GetHomeImpl();

  @override
  String toString() {
    return 'HomeEvent.getHome()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetHomeImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getHome,
    required TResult Function(String tag) getRecentStories,
    required TResult Function(int tagId) selectTag,
  }) {
    return getHome();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getHome,
    TResult? Function(String tag)? getRecentStories,
    TResult? Function(int tagId)? selectTag,
  }) {
    return getHome?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getHome,
    TResult Function(String tag)? getRecentStories,
    TResult Function(int tagId)? selectTag,
    required TResult orElse(),
  }) {
    if (getHome != null) {
      return getHome();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetHome value) getHome,
    required TResult Function(_GetRecentStories value) getRecentStories,
    required TResult Function(_SelectTagHome value) selectTag,
  }) {
    return getHome(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetHome value)? getHome,
    TResult? Function(_GetRecentStories value)? getRecentStories,
    TResult? Function(_SelectTagHome value)? selectTag,
  }) {
    return getHome?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetHome value)? getHome,
    TResult Function(_GetRecentStories value)? getRecentStories,
    TResult Function(_SelectTagHome value)? selectTag,
    required TResult orElse(),
  }) {
    if (getHome != null) {
      return getHome(this);
    }
    return orElse();
  }
}

abstract class _GetHome implements HomeEvent {
  const factory _GetHome() = _$GetHomeImpl;
}

/// @nodoc
abstract class _$$GetRecentStoriesImplCopyWith<$Res> {
  factory _$$GetRecentStoriesImplCopyWith(_$GetRecentStoriesImpl value,
          $Res Function(_$GetRecentStoriesImpl) then) =
      __$$GetRecentStoriesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String tag});
}

/// @nodoc
class __$$GetRecentStoriesImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$GetRecentStoriesImpl>
    implements _$$GetRecentStoriesImplCopyWith<$Res> {
  __$$GetRecentStoriesImplCopyWithImpl(_$GetRecentStoriesImpl _value,
      $Res Function(_$GetRecentStoriesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tag = null,
  }) {
    return _then(_$GetRecentStoriesImpl(
      null == tag
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetRecentStoriesImpl implements _GetRecentStories {
  const _$GetRecentStoriesImpl(this.tag);

  @override
  final String tag;

  @override
  String toString() {
    return 'HomeEvent.getRecentStories(tag: $tag)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetRecentStoriesImpl &&
            (identical(other.tag, tag) || other.tag == tag));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tag);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetRecentStoriesImplCopyWith<_$GetRecentStoriesImpl> get copyWith =>
      __$$GetRecentStoriesImplCopyWithImpl<_$GetRecentStoriesImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getHome,
    required TResult Function(String tag) getRecentStories,
    required TResult Function(int tagId) selectTag,
  }) {
    return getRecentStories(tag);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getHome,
    TResult? Function(String tag)? getRecentStories,
    TResult? Function(int tagId)? selectTag,
  }) {
    return getRecentStories?.call(tag);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getHome,
    TResult Function(String tag)? getRecentStories,
    TResult Function(int tagId)? selectTag,
    required TResult orElse(),
  }) {
    if (getRecentStories != null) {
      return getRecentStories(tag);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetHome value) getHome,
    required TResult Function(_GetRecentStories value) getRecentStories,
    required TResult Function(_SelectTagHome value) selectTag,
  }) {
    return getRecentStories(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetHome value)? getHome,
    TResult? Function(_GetRecentStories value)? getRecentStories,
    TResult? Function(_SelectTagHome value)? selectTag,
  }) {
    return getRecentStories?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetHome value)? getHome,
    TResult Function(_GetRecentStories value)? getRecentStories,
    TResult Function(_SelectTagHome value)? selectTag,
    required TResult orElse(),
  }) {
    if (getRecentStories != null) {
      return getRecentStories(this);
    }
    return orElse();
  }
}

abstract class _GetRecentStories implements HomeEvent {
  const factory _GetRecentStories(final String tag) = _$GetRecentStoriesImpl;

  String get tag;
  @JsonKey(ignore: true)
  _$$GetRecentStoriesImplCopyWith<_$GetRecentStoriesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelectTagHomeImplCopyWith<$Res> {
  factory _$$SelectTagHomeImplCopyWith(
          _$SelectTagHomeImpl value, $Res Function(_$SelectTagHomeImpl) then) =
      __$$SelectTagHomeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int tagId});
}

/// @nodoc
class __$$SelectTagHomeImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$SelectTagHomeImpl>
    implements _$$SelectTagHomeImplCopyWith<$Res> {
  __$$SelectTagHomeImplCopyWithImpl(
      _$SelectTagHomeImpl _value, $Res Function(_$SelectTagHomeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tagId = null,
  }) {
    return _then(_$SelectTagHomeImpl(
      null == tagId
          ? _value.tagId
          : tagId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SelectTagHomeImpl implements _SelectTagHome {
  const _$SelectTagHomeImpl(this.tagId);

  @override
  final int tagId;

  @override
  String toString() {
    return 'HomeEvent.selectTag(tagId: $tagId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectTagHomeImpl &&
            (identical(other.tagId, tagId) || other.tagId == tagId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tagId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectTagHomeImplCopyWith<_$SelectTagHomeImpl> get copyWith =>
      __$$SelectTagHomeImplCopyWithImpl<_$SelectTagHomeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getHome,
    required TResult Function(String tag) getRecentStories,
    required TResult Function(int tagId) selectTag,
  }) {
    return selectTag(tagId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getHome,
    TResult? Function(String tag)? getRecentStories,
    TResult? Function(int tagId)? selectTag,
  }) {
    return selectTag?.call(tagId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getHome,
    TResult Function(String tag)? getRecentStories,
    TResult Function(int tagId)? selectTag,
    required TResult orElse(),
  }) {
    if (selectTag != null) {
      return selectTag(tagId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetHome value) getHome,
    required TResult Function(_GetRecentStories value) getRecentStories,
    required TResult Function(_SelectTagHome value) selectTag,
  }) {
    return selectTag(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetHome value)? getHome,
    TResult? Function(_GetRecentStories value)? getRecentStories,
    TResult? Function(_SelectTagHome value)? selectTag,
  }) {
    return selectTag?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetHome value)? getHome,
    TResult Function(_GetRecentStories value)? getRecentStories,
    TResult Function(_SelectTagHome value)? selectTag,
    required TResult orElse(),
  }) {
    if (selectTag != null) {
      return selectTag(this);
    }
    return orElse();
  }
}

abstract class _SelectTagHome implements HomeEvent {
  const factory _SelectTagHome(final int tagId) = _$SelectTagHomeImpl;

  int get tagId;
  @JsonKey(ignore: true)
  _$$SelectTagHomeImplCopyWith<_$SelectTagHomeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeState {
  HomeStatus get homeStatus => throw _privateConstructorUsedError;
  RecentStoriesStatus get recentStoriesStatus =>
      throw _privateConstructorUsedError;
  int get selectedTagId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call(
      {HomeStatus homeStatus,
      RecentStoriesStatus recentStoriesStatus,
      int selectedTagId});

  $HomeStatusCopyWith<$Res> get homeStatus;
  $RecentStoriesStatusCopyWith<$Res> get recentStoriesStatus;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? homeStatus = null,
    Object? recentStoriesStatus = null,
    Object? selectedTagId = null,
  }) {
    return _then(_value.copyWith(
      homeStatus: null == homeStatus
          ? _value.homeStatus
          : homeStatus // ignore: cast_nullable_to_non_nullable
              as HomeStatus,
      recentStoriesStatus: null == recentStoriesStatus
          ? _value.recentStoriesStatus
          : recentStoriesStatus // ignore: cast_nullable_to_non_nullable
              as RecentStoriesStatus,
      selectedTagId: null == selectedTagId
          ? _value.selectedTagId
          : selectedTagId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $HomeStatusCopyWith<$Res> get homeStatus {
    return $HomeStatusCopyWith<$Res>(_value.homeStatus, (value) {
      return _then(_value.copyWith(homeStatus: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $RecentStoriesStatusCopyWith<$Res> get recentStoriesStatus {
    return $RecentStoriesStatusCopyWith<$Res>(_value.recentStoriesStatus,
        (value) {
      return _then(_value.copyWith(recentStoriesStatus: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HomeStateImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$HomeStateImplCopyWith(
          _$HomeStateImpl value, $Res Function(_$HomeStateImpl) then) =
      __$$HomeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {HomeStatus homeStatus,
      RecentStoriesStatus recentStoriesStatus,
      int selectedTagId});

  @override
  $HomeStatusCopyWith<$Res> get homeStatus;
  @override
  $RecentStoriesStatusCopyWith<$Res> get recentStoriesStatus;
}

/// @nodoc
class __$$HomeStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeStateImpl>
    implements _$$HomeStateImplCopyWith<$Res> {
  __$$HomeStateImplCopyWithImpl(
      _$HomeStateImpl _value, $Res Function(_$HomeStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? homeStatus = null,
    Object? recentStoriesStatus = null,
    Object? selectedTagId = null,
  }) {
    return _then(_$HomeStateImpl(
      homeStatus: null == homeStatus
          ? _value.homeStatus
          : homeStatus // ignore: cast_nullable_to_non_nullable
              as HomeStatus,
      recentStoriesStatus: null == recentStoriesStatus
          ? _value.recentStoriesStatus
          : recentStoriesStatus // ignore: cast_nullable_to_non_nullable
              as RecentStoriesStatus,
      selectedTagId: null == selectedTagId
          ? _value.selectedTagId
          : selectedTagId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$HomeStateImpl implements _HomeState {
  const _$HomeStateImpl(
      {this.homeStatus = const HomeStatus.initial(),
      this.recentStoriesStatus = const RecentStoriesStatus.loading(),
      this.selectedTagId = 0});

  @override
  @JsonKey()
  final HomeStatus homeStatus;
  @override
  @JsonKey()
  final RecentStoriesStatus recentStoriesStatus;
  @override
  @JsonKey()
  final int selectedTagId;

  @override
  String toString() {
    return 'HomeState(homeStatus: $homeStatus, recentStoriesStatus: $recentStoriesStatus, selectedTagId: $selectedTagId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateImpl &&
            (identical(other.homeStatus, homeStatus) ||
                other.homeStatus == homeStatus) &&
            (identical(other.recentStoriesStatus, recentStoriesStatus) ||
                other.recentStoriesStatus == recentStoriesStatus) &&
            (identical(other.selectedTagId, selectedTagId) ||
                other.selectedTagId == selectedTagId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, homeStatus, recentStoriesStatus, selectedTagId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      __$$HomeStateImplCopyWithImpl<_$HomeStateImpl>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState(
      {final HomeStatus homeStatus,
      final RecentStoriesStatus recentStoriesStatus,
      final int selectedTagId}) = _$HomeStateImpl;

  @override
  HomeStatus get homeStatus;
  @override
  RecentStoriesStatus get recentStoriesStatus;
  @override
  int get selectedTagId;
  @override
  @JsonKey(ignore: true)
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
