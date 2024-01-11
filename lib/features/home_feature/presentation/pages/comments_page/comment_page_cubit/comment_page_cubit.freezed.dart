// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'comment_page_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CommentPageState {
  int get seletectedTabIndex => throw _privateConstructorUsedError;
  String get newsId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CommentPageStateCopyWith<CommentPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentPageStateCopyWith<$Res> {
  factory $CommentPageStateCopyWith(
          CommentPageState value, $Res Function(CommentPageState) then) =
      _$CommentPageStateCopyWithImpl<$Res, CommentPageState>;
  @useResult
  $Res call({int seletectedTabIndex, String newsId});
}

/// @nodoc
class _$CommentPageStateCopyWithImpl<$Res, $Val extends CommentPageState>
    implements $CommentPageStateCopyWith<$Res> {
  _$CommentPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? seletectedTabIndex = null,
    Object? newsId = null,
  }) {
    return _then(_value.copyWith(
      seletectedTabIndex: null == seletectedTabIndex
          ? _value.seletectedTabIndex
          : seletectedTabIndex // ignore: cast_nullable_to_non_nullable
              as int,
      newsId: null == newsId
          ? _value.newsId
          : newsId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TabBarViewStateImplCopyWith<$Res>
    implements $CommentPageStateCopyWith<$Res> {
  factory _$$TabBarViewStateImplCopyWith(_$TabBarViewStateImpl value,
          $Res Function(_$TabBarViewStateImpl) then) =
      __$$TabBarViewStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int seletectedTabIndex, String newsId});
}

/// @nodoc
class __$$TabBarViewStateImplCopyWithImpl<$Res>
    extends _$CommentPageStateCopyWithImpl<$Res, _$TabBarViewStateImpl>
    implements _$$TabBarViewStateImplCopyWith<$Res> {
  __$$TabBarViewStateImplCopyWithImpl(
      _$TabBarViewStateImpl _value, $Res Function(_$TabBarViewStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? seletectedTabIndex = null,
    Object? newsId = null,
  }) {
    return _then(_$TabBarViewStateImpl(
      seletectedTabIndex: null == seletectedTabIndex
          ? _value.seletectedTabIndex
          : seletectedTabIndex // ignore: cast_nullable_to_non_nullable
              as int,
      newsId: null == newsId
          ? _value.newsId
          : newsId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TabBarViewStateImpl implements _TabBarViewState {
  const _$TabBarViewStateImpl(
      {this.seletectedTabIndex = 0, this.newsId = '-1'});

  @override
  @JsonKey()
  final int seletectedTabIndex;
  @override
  @JsonKey()
  final String newsId;

  @override
  String toString() {
    return 'CommentPageState(seletectedTabIndex: $seletectedTabIndex, newsId: $newsId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TabBarViewStateImpl &&
            (identical(other.seletectedTabIndex, seletectedTabIndex) ||
                other.seletectedTabIndex == seletectedTabIndex) &&
            (identical(other.newsId, newsId) || other.newsId == newsId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, seletectedTabIndex, newsId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TabBarViewStateImplCopyWith<_$TabBarViewStateImpl> get copyWith =>
      __$$TabBarViewStateImplCopyWithImpl<_$TabBarViewStateImpl>(
          this, _$identity);
}

abstract class _TabBarViewState implements CommentPageState {
  const factory _TabBarViewState(
      {final int seletectedTabIndex,
      final String newsId}) = _$TabBarViewStateImpl;

  @override
  int get seletectedTabIndex;
  @override
  String get newsId;
  @override
  @JsonKey(ignore: true)
  _$$TabBarViewStateImplCopyWith<_$TabBarViewStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
