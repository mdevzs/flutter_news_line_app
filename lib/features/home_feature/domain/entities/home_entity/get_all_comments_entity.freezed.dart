// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_all_comments_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GetAllCommentsEntity {
  List<CommentsEntity> get top => throw _privateConstructorUsedError;
  List<CommentsEntity> get newest => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GetAllCommentsEntityCopyWith<GetAllCommentsEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetAllCommentsEntityCopyWith<$Res> {
  factory $GetAllCommentsEntityCopyWith(GetAllCommentsEntity value,
          $Res Function(GetAllCommentsEntity) then) =
      _$GetAllCommentsEntityCopyWithImpl<$Res, GetAllCommentsEntity>;
  @useResult
  $Res call({List<CommentsEntity> top, List<CommentsEntity> newest});
}

/// @nodoc
class _$GetAllCommentsEntityCopyWithImpl<$Res,
        $Val extends GetAllCommentsEntity>
    implements $GetAllCommentsEntityCopyWith<$Res> {
  _$GetAllCommentsEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? top = null,
    Object? newest = null,
  }) {
    return _then(_value.copyWith(
      top: null == top
          ? _value.top
          : top // ignore: cast_nullable_to_non_nullable
              as List<CommentsEntity>,
      newest: null == newest
          ? _value.newest
          : newest // ignore: cast_nullable_to_non_nullable
              as List<CommentsEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetAllCommentsEntityImplCopyWith<$Res>
    implements $GetAllCommentsEntityCopyWith<$Res> {
  factory _$$GetAllCommentsEntityImplCopyWith(_$GetAllCommentsEntityImpl value,
          $Res Function(_$GetAllCommentsEntityImpl) then) =
      __$$GetAllCommentsEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<CommentsEntity> top, List<CommentsEntity> newest});
}

/// @nodoc
class __$$GetAllCommentsEntityImplCopyWithImpl<$Res>
    extends _$GetAllCommentsEntityCopyWithImpl<$Res, _$GetAllCommentsEntityImpl>
    implements _$$GetAllCommentsEntityImplCopyWith<$Res> {
  __$$GetAllCommentsEntityImplCopyWithImpl(_$GetAllCommentsEntityImpl _value,
      $Res Function(_$GetAllCommentsEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? top = null,
    Object? newest = null,
  }) {
    return _then(_$GetAllCommentsEntityImpl(
      top: null == top
          ? _value._top
          : top // ignore: cast_nullable_to_non_nullable
              as List<CommentsEntity>,
      newest: null == newest
          ? _value._newest
          : newest // ignore: cast_nullable_to_non_nullable
              as List<CommentsEntity>,
    ));
  }
}

/// @nodoc

class _$GetAllCommentsEntityImpl implements _GetAllCommentsEntity {
  const _$GetAllCommentsEntityImpl(
      {required final List<CommentsEntity> top,
      required final List<CommentsEntity> newest})
      : _top = top,
        _newest = newest;

  final List<CommentsEntity> _top;
  @override
  List<CommentsEntity> get top {
    if (_top is EqualUnmodifiableListView) return _top;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_top);
  }

  final List<CommentsEntity> _newest;
  @override
  List<CommentsEntity> get newest {
    if (_newest is EqualUnmodifiableListView) return _newest;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_newest);
  }

  @override
  String toString() {
    return 'GetAllCommentsEntity(top: $top, newest: $newest)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAllCommentsEntityImpl &&
            const DeepCollectionEquality().equals(other._top, _top) &&
            const DeepCollectionEquality().equals(other._newest, _newest));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_top),
      const DeepCollectionEquality().hash(_newest));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAllCommentsEntityImplCopyWith<_$GetAllCommentsEntityImpl>
      get copyWith =>
          __$$GetAllCommentsEntityImplCopyWithImpl<_$GetAllCommentsEntityImpl>(
              this, _$identity);
}

abstract class _GetAllCommentsEntity implements GetAllCommentsEntity {
  const factory _GetAllCommentsEntity(
      {required final List<CommentsEntity> top,
      required final List<CommentsEntity> newest}) = _$GetAllCommentsEntityImpl;

  @override
  List<CommentsEntity> get top;
  @override
  List<CommentsEntity> get newest;
  @override
  @JsonKey(ignore: true)
  _$$GetAllCommentsEntityImplCopyWith<_$GetAllCommentsEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
