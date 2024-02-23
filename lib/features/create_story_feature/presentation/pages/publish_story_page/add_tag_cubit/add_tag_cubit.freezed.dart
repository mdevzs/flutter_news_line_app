// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_tag_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AddTagState {
  IList<String> get tags => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddTagStateCopyWith<AddTagState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddTagStateCopyWith<$Res> {
  factory $AddTagStateCopyWith(
          AddTagState value, $Res Function(AddTagState) then) =
      _$AddTagStateCopyWithImpl<$Res, AddTagState>;
  @useResult
  $Res call({IList<String> tags});
}

/// @nodoc
class _$AddTagStateCopyWithImpl<$Res, $Val extends AddTagState>
    implements $AddTagStateCopyWith<$Res> {
  _$AddTagStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tags = null,
  }) {
    return _then(_value.copyWith(
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as IList<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddTagStateImplCopyWith<$Res>
    implements $AddTagStateCopyWith<$Res> {
  factory _$$AddTagStateImplCopyWith(
          _$AddTagStateImpl value, $Res Function(_$AddTagStateImpl) then) =
      __$$AddTagStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({IList<String> tags});
}

/// @nodoc
class __$$AddTagStateImplCopyWithImpl<$Res>
    extends _$AddTagStateCopyWithImpl<$Res, _$AddTagStateImpl>
    implements _$$AddTagStateImplCopyWith<$Res> {
  __$$AddTagStateImplCopyWithImpl(
      _$AddTagStateImpl _value, $Res Function(_$AddTagStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tags = null,
  }) {
    return _then(_$AddTagStateImpl(
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as IList<String>,
    ));
  }
}

/// @nodoc

class _$AddTagStateImpl implements _AddTagState {
  const _$AddTagStateImpl({this.tags = const IListConst([])});

  @override
  @JsonKey()
  final IList<String> tags;

  @override
  String toString() {
    return 'AddTagState(tags: $tags)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddTagStateImpl &&
            const DeepCollectionEquality().equals(other.tags, tags));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(tags));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddTagStateImplCopyWith<_$AddTagStateImpl> get copyWith =>
      __$$AddTagStateImplCopyWithImpl<_$AddTagStateImpl>(this, _$identity);
}

abstract class _AddTagState implements AddTagState {
  const factory _AddTagState({final IList<String> tags}) = _$AddTagStateImpl;

  @override
  IList<String> get tags;
  @override
  @JsonKey(ignore: true)
  _$$AddTagStateImplCopyWith<_$AddTagStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
