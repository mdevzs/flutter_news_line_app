// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'toggle_collection_item_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ToggleCollectionItemState {
  int get index => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ToggleCollectionItemStateCopyWith<ToggleCollectionItemState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ToggleCollectionItemStateCopyWith<$Res> {
  factory $ToggleCollectionItemStateCopyWith(ToggleCollectionItemState value,
          $Res Function(ToggleCollectionItemState) then) =
      _$ToggleCollectionItemStateCopyWithImpl<$Res, ToggleCollectionItemState>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class _$ToggleCollectionItemStateCopyWithImpl<$Res,
        $Val extends ToggleCollectionItemState>
    implements $ToggleCollectionItemStateCopyWith<$Res> {
  _$ToggleCollectionItemStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_value.copyWith(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ToggleCollectionItemStateImplCopyWith<$Res>
    implements $ToggleCollectionItemStateCopyWith<$Res> {
  factory _$$ToggleCollectionItemStateImplCopyWith(
          _$ToggleCollectionItemStateImpl value,
          $Res Function(_$ToggleCollectionItemStateImpl) then) =
      __$$ToggleCollectionItemStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$ToggleCollectionItemStateImplCopyWithImpl<$Res>
    extends _$ToggleCollectionItemStateCopyWithImpl<$Res,
        _$ToggleCollectionItemStateImpl>
    implements _$$ToggleCollectionItemStateImplCopyWith<$Res> {
  __$$ToggleCollectionItemStateImplCopyWithImpl(
      _$ToggleCollectionItemStateImpl _value,
      $Res Function(_$ToggleCollectionItemStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$ToggleCollectionItemStateImpl(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ToggleCollectionItemStateImpl implements _ToggleCollectionItemState {
  const _$ToggleCollectionItemStateImpl({this.index = 1});

  @override
  @JsonKey()
  final int index;

  @override
  String toString() {
    return 'ToggleCollectionItemState(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToggleCollectionItemStateImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ToggleCollectionItemStateImplCopyWith<_$ToggleCollectionItemStateImpl>
      get copyWith => __$$ToggleCollectionItemStateImplCopyWithImpl<
          _$ToggleCollectionItemStateImpl>(this, _$identity);
}

abstract class _ToggleCollectionItemState implements ToggleCollectionItemState {
  const factory _ToggleCollectionItemState({final int index}) =
      _$ToggleCollectionItemStateImpl;

  @override
  int get index;
  @override
  @JsonKey(ignore: true)
  _$$ToggleCollectionItemStateImplCopyWith<_$ToggleCollectionItemStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
