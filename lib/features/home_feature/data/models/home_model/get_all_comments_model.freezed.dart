// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_all_comments_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetAllCommentsModel _$GetAllCommentsModelFromJson(Map<String, dynamic> json) {
  return _GetAllCommentsModel.fromJson(json);
}

/// @nodoc
mixin _$GetAllCommentsModel {
  List<CommentsModel>? get top => throw _privateConstructorUsedError;
  List<CommentsModel>? get newest => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetAllCommentsModelCopyWith<GetAllCommentsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetAllCommentsModelCopyWith<$Res> {
  factory $GetAllCommentsModelCopyWith(
          GetAllCommentsModel value, $Res Function(GetAllCommentsModel) then) =
      _$GetAllCommentsModelCopyWithImpl<$Res, GetAllCommentsModel>;
  @useResult
  $Res call({List<CommentsModel>? top, List<CommentsModel>? newest});
}

/// @nodoc
class _$GetAllCommentsModelCopyWithImpl<$Res, $Val extends GetAllCommentsModel>
    implements $GetAllCommentsModelCopyWith<$Res> {
  _$GetAllCommentsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? top = freezed,
    Object? newest = freezed,
  }) {
    return _then(_value.copyWith(
      top: freezed == top
          ? _value.top
          : top // ignore: cast_nullable_to_non_nullable
              as List<CommentsModel>?,
      newest: freezed == newest
          ? _value.newest
          : newest // ignore: cast_nullable_to_non_nullable
              as List<CommentsModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetAllCommentsModelImplCopyWith<$Res>
    implements $GetAllCommentsModelCopyWith<$Res> {
  factory _$$GetAllCommentsModelImplCopyWith(_$GetAllCommentsModelImpl value,
          $Res Function(_$GetAllCommentsModelImpl) then) =
      __$$GetAllCommentsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<CommentsModel>? top, List<CommentsModel>? newest});
}

/// @nodoc
class __$$GetAllCommentsModelImplCopyWithImpl<$Res>
    extends _$GetAllCommentsModelCopyWithImpl<$Res, _$GetAllCommentsModelImpl>
    implements _$$GetAllCommentsModelImplCopyWith<$Res> {
  __$$GetAllCommentsModelImplCopyWithImpl(_$GetAllCommentsModelImpl _value,
      $Res Function(_$GetAllCommentsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? top = freezed,
    Object? newest = freezed,
  }) {
    return _then(_$GetAllCommentsModelImpl(
      top: freezed == top
          ? _value._top
          : top // ignore: cast_nullable_to_non_nullable
              as List<CommentsModel>?,
      newest: freezed == newest
          ? _value._newest
          : newest // ignore: cast_nullable_to_non_nullable
              as List<CommentsModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetAllCommentsModelImpl extends _GetAllCommentsModel {
  const _$GetAllCommentsModelImpl(
      {final List<CommentsModel>? top, final List<CommentsModel>? newest})
      : _top = top,
        _newest = newest,
        super._();

  factory _$GetAllCommentsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetAllCommentsModelImplFromJson(json);

  final List<CommentsModel>? _top;
  @override
  List<CommentsModel>? get top {
    final value = _top;
    if (value == null) return null;
    if (_top is EqualUnmodifiableListView) return _top;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<CommentsModel>? _newest;
  @override
  List<CommentsModel>? get newest {
    final value = _newest;
    if (value == null) return null;
    if (_newest is EqualUnmodifiableListView) return _newest;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'GetAllCommentsModel(top: $top, newest: $newest)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAllCommentsModelImpl &&
            const DeepCollectionEquality().equals(other._top, _top) &&
            const DeepCollectionEquality().equals(other._newest, _newest));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_top),
      const DeepCollectionEquality().hash(_newest));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAllCommentsModelImplCopyWith<_$GetAllCommentsModelImpl> get copyWith =>
      __$$GetAllCommentsModelImplCopyWithImpl<_$GetAllCommentsModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetAllCommentsModelImplToJson(
      this,
    );
  }
}

abstract class _GetAllCommentsModel extends GetAllCommentsModel {
  const factory _GetAllCommentsModel(
      {final List<CommentsModel>? top,
      final List<CommentsModel>? newest}) = _$GetAllCommentsModelImpl;
  const _GetAllCommentsModel._() : super._();

  factory _GetAllCommentsModel.fromJson(Map<String, dynamic> json) =
      _$GetAllCommentsModelImpl.fromJson;

  @override
  List<CommentsModel>? get top;
  @override
  List<CommentsModel>? get newest;
  @override
  @JsonKey(ignore: true)
  _$$GetAllCommentsModelImplCopyWith<_$GetAllCommentsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
