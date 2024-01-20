// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_text_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchTextState {
  String get searchText => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchTextStateCopyWith<SearchTextState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchTextStateCopyWith<$Res> {
  factory $SearchTextStateCopyWith(
          SearchTextState value, $Res Function(SearchTextState) then) =
      _$SearchTextStateCopyWithImpl<$Res, SearchTextState>;
  @useResult
  $Res call({String searchText});
}

/// @nodoc
class _$SearchTextStateCopyWithImpl<$Res, $Val extends SearchTextState>
    implements $SearchTextStateCopyWith<$Res> {
  _$SearchTextStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchText = null,
  }) {
    return _then(_value.copyWith(
      searchText: null == searchText
          ? _value.searchText
          : searchText // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchTextStateImplCopyWith<$Res>
    implements $SearchTextStateCopyWith<$Res> {
  factory _$$SearchTextStateImplCopyWith(_$SearchTextStateImpl value,
          $Res Function(_$SearchTextStateImpl) then) =
      __$$SearchTextStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String searchText});
}

/// @nodoc
class __$$SearchTextStateImplCopyWithImpl<$Res>
    extends _$SearchTextStateCopyWithImpl<$Res, _$SearchTextStateImpl>
    implements _$$SearchTextStateImplCopyWith<$Res> {
  __$$SearchTextStateImplCopyWithImpl(
      _$SearchTextStateImpl _value, $Res Function(_$SearchTextStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchText = null,
  }) {
    return _then(_$SearchTextStateImpl(
      searchText: null == searchText
          ? _value.searchText
          : searchText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchTextStateImpl implements _SearchTextState {
  const _$SearchTextStateImpl({this.searchText = ''});

  @override
  @JsonKey()
  final String searchText;

  @override
  String toString() {
    return 'SearchTextState(searchText: $searchText)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchTextStateImpl &&
            (identical(other.searchText, searchText) ||
                other.searchText == searchText));
  }

  @override
  int get hashCode => Object.hash(runtimeType, searchText);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchTextStateImplCopyWith<_$SearchTextStateImpl> get copyWith =>
      __$$SearchTextStateImplCopyWithImpl<_$SearchTextStateImpl>(
          this, _$identity);
}

abstract class _SearchTextState implements SearchTextState {
  const factory _SearchTextState({final String searchText}) =
      _$SearchTextStateImpl;

  @override
  String get searchText;
  @override
  @JsonKey(ignore: true)
  _$$SearchTextStateImplCopyWith<_$SearchTextStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
