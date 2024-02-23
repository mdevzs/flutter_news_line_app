// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SearchEvent {
  String get s => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String s) search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String s)? search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String s)? search,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Search value) search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Search value)? search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Search value)? search,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchEventCopyWith<SearchEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchEventCopyWith<$Res> {
  factory $SearchEventCopyWith(
          SearchEvent value, $Res Function(SearchEvent) then) =
      _$SearchEventCopyWithImpl<$Res, SearchEvent>;
  @useResult
  $Res call({String s});
}

/// @nodoc
class _$SearchEventCopyWithImpl<$Res, $Val extends SearchEvent>
    implements $SearchEventCopyWith<$Res> {
  _$SearchEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? s = null,
  }) {
    return _then(_value.copyWith(
      s: null == s
          ? _value.s
          : s // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchImplCopyWith<$Res>
    implements $SearchEventCopyWith<$Res> {
  factory _$$SearchImplCopyWith(
          _$SearchImpl value, $Res Function(_$SearchImpl) then) =
      __$$SearchImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String s});
}

/// @nodoc
class __$$SearchImplCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$SearchImpl>
    implements _$$SearchImplCopyWith<$Res> {
  __$$SearchImplCopyWithImpl(
      _$SearchImpl _value, $Res Function(_$SearchImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? s = null,
  }) {
    return _then(_$SearchImpl(
      null == s
          ? _value.s
          : s // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchImpl implements _Search {
  const _$SearchImpl(this.s);

  @override
  final String s;

  @override
  String toString() {
    return 'SearchEvent.search(s: $s)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchImpl &&
            (identical(other.s, s) || other.s == s));
  }

  @override
  int get hashCode => Object.hash(runtimeType, s);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchImplCopyWith<_$SearchImpl> get copyWith =>
      __$$SearchImplCopyWithImpl<_$SearchImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String s) search,
  }) {
    return search(s);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String s)? search,
  }) {
    return search?.call(s);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String s)? search,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(s);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Search value) search,
  }) {
    return search(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Search value)? search,
  }) {
    return search?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Search value)? search,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(this);
    }
    return orElse();
  }
}

abstract class _Search implements SearchEvent {
  const factory _Search(final String s) = _$SearchImpl;

  @override
  String get s;
  @override
  @JsonKey(ignore: true)
  _$$SearchImplCopyWith<_$SearchImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SearchState {
  DiscoverSearchEntity? get searchEntity => throw _privateConstructorUsedError;
  SearchStatus get searchStatus => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchStateCopyWith<SearchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchStateCopyWith<$Res> {
  factory $SearchStateCopyWith(
          SearchState value, $Res Function(SearchState) then) =
      _$SearchStateCopyWithImpl<$Res, SearchState>;
  @useResult
  $Res call({DiscoverSearchEntity? searchEntity, SearchStatus searchStatus});

  $DiscoverSearchEntityCopyWith<$Res>? get searchEntity;
  $SearchStatusCopyWith<$Res> get searchStatus;
}

/// @nodoc
class _$SearchStateCopyWithImpl<$Res, $Val extends SearchState>
    implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchEntity = freezed,
    Object? searchStatus = null,
  }) {
    return _then(_value.copyWith(
      searchEntity: freezed == searchEntity
          ? _value.searchEntity
          : searchEntity // ignore: cast_nullable_to_non_nullable
              as DiscoverSearchEntity?,
      searchStatus: null == searchStatus
          ? _value.searchStatus
          : searchStatus // ignore: cast_nullable_to_non_nullable
              as SearchStatus,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DiscoverSearchEntityCopyWith<$Res>? get searchEntity {
    if (_value.searchEntity == null) {
      return null;
    }

    return $DiscoverSearchEntityCopyWith<$Res>(_value.searchEntity!, (value) {
      return _then(_value.copyWith(searchEntity: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SearchStatusCopyWith<$Res> get searchStatus {
    return $SearchStatusCopyWith<$Res>(_value.searchStatus, (value) {
      return _then(_value.copyWith(searchStatus: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SearchStateImplCopyWith<$Res>
    implements $SearchStateCopyWith<$Res> {
  factory _$$SearchStateImplCopyWith(
          _$SearchStateImpl value, $Res Function(_$SearchStateImpl) then) =
      __$$SearchStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DiscoverSearchEntity? searchEntity, SearchStatus searchStatus});

  @override
  $DiscoverSearchEntityCopyWith<$Res>? get searchEntity;
  @override
  $SearchStatusCopyWith<$Res> get searchStatus;
}

/// @nodoc
class __$$SearchStateImplCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$SearchStateImpl>
    implements _$$SearchStateImplCopyWith<$Res> {
  __$$SearchStateImplCopyWithImpl(
      _$SearchStateImpl _value, $Res Function(_$SearchStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchEntity = freezed,
    Object? searchStatus = null,
  }) {
    return _then(_$SearchStateImpl(
      searchEntity: freezed == searchEntity
          ? _value.searchEntity
          : searchEntity // ignore: cast_nullable_to_non_nullable
              as DiscoverSearchEntity?,
      searchStatus: null == searchStatus
          ? _value.searchStatus
          : searchStatus // ignore: cast_nullable_to_non_nullable
              as SearchStatus,
    ));
  }
}

/// @nodoc

class _$SearchStateImpl implements _SearchState {
  const _$SearchStateImpl(
      {this.searchEntity, this.searchStatus = const SearchStatus.initial()});

  @override
  final DiscoverSearchEntity? searchEntity;
  @override
  @JsonKey()
  final SearchStatus searchStatus;

  @override
  String toString() {
    return 'SearchState(searchEntity: $searchEntity, searchStatus: $searchStatus)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchStateImplCopyWith<_$SearchStateImpl> get copyWith =>
      __$$SearchStateImplCopyWithImpl<_$SearchStateImpl>(this, _$identity);
}

abstract class _SearchState implements SearchState {
  const factory _SearchState(
      {final DiscoverSearchEntity? searchEntity,
      final SearchStatus searchStatus}) = _$SearchStateImpl;

  @override
  DiscoverSearchEntity? get searchEntity;
  @override
  SearchStatus get searchStatus;
  @override
  @JsonKey(ignore: true)
  _$$SearchStateImplCopyWith<_$SearchStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
