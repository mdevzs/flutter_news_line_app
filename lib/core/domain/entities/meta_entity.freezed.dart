// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meta_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MetaEntity {
  int? get total => throw _privateConstructorUsedError;
  int? get lastPage => throw _privateConstructorUsedError;
  int? get currentPage => throw _privateConstructorUsedError;
  int? get perPage => throw _privateConstructorUsedError;
  int? get prev => throw _privateConstructorUsedError;
  int? get next => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MetaEntityCopyWith<MetaEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MetaEntityCopyWith<$Res> {
  factory $MetaEntityCopyWith(
          MetaEntity value, $Res Function(MetaEntity) then) =
      _$MetaEntityCopyWithImpl<$Res, MetaEntity>;
  @useResult
  $Res call(
      {int? total,
      int? lastPage,
      int? currentPage,
      int? perPage,
      int? prev,
      int? next});
}

/// @nodoc
class _$MetaEntityCopyWithImpl<$Res, $Val extends MetaEntity>
    implements $MetaEntityCopyWith<$Res> {
  _$MetaEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = freezed,
    Object? lastPage = freezed,
    Object? currentPage = freezed,
    Object? perPage = freezed,
    Object? prev = freezed,
    Object? next = freezed,
  }) {
    return _then(_value.copyWith(
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      lastPage: freezed == lastPage
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int?,
      currentPage: freezed == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      perPage: freezed == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int?,
      prev: freezed == prev
          ? _value.prev
          : prev // ignore: cast_nullable_to_non_nullable
              as int?,
      next: freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MetaEntityImplCopyWith<$Res>
    implements $MetaEntityCopyWith<$Res> {
  factory _$$MetaEntityImplCopyWith(
          _$MetaEntityImpl value, $Res Function(_$MetaEntityImpl) then) =
      __$$MetaEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? total,
      int? lastPage,
      int? currentPage,
      int? perPage,
      int? prev,
      int? next});
}

/// @nodoc
class __$$MetaEntityImplCopyWithImpl<$Res>
    extends _$MetaEntityCopyWithImpl<$Res, _$MetaEntityImpl>
    implements _$$MetaEntityImplCopyWith<$Res> {
  __$$MetaEntityImplCopyWithImpl(
      _$MetaEntityImpl _value, $Res Function(_$MetaEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = freezed,
    Object? lastPage = freezed,
    Object? currentPage = freezed,
    Object? perPage = freezed,
    Object? prev = freezed,
    Object? next = freezed,
  }) {
    return _then(_$MetaEntityImpl(
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      lastPage: freezed == lastPage
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int?,
      currentPage: freezed == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      perPage: freezed == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int?,
      prev: freezed == prev
          ? _value.prev
          : prev // ignore: cast_nullable_to_non_nullable
              as int?,
      next: freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$MetaEntityImpl implements _MetaEntity {
  const _$MetaEntityImpl(
      {required this.total,
      required this.lastPage,
      required this.currentPage,
      required this.perPage,
      required this.prev,
      required this.next});

  @override
  final int? total;
  @override
  final int? lastPage;
  @override
  final int? currentPage;
  @override
  final int? perPage;
  @override
  final int? prev;
  @override
  final int? next;

  @override
  String toString() {
    return 'MetaEntity(total: $total, lastPage: $lastPage, currentPage: $currentPage, perPage: $perPage, prev: $prev, next: $next)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MetaEntityImpl &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.lastPage, lastPage) ||
                other.lastPage == lastPage) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.perPage, perPage) || other.perPage == perPage) &&
            (identical(other.prev, prev) || other.prev == prev) &&
            (identical(other.next, next) || other.next == next));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, total, lastPage, currentPage, perPage, prev, next);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MetaEntityImplCopyWith<_$MetaEntityImpl> get copyWith =>
      __$$MetaEntityImplCopyWithImpl<_$MetaEntityImpl>(this, _$identity);
}

abstract class _MetaEntity implements MetaEntity {
  const factory _MetaEntity(
      {required final int? total,
      required final int? lastPage,
      required final int? currentPage,
      required final int? perPage,
      required final int? prev,
      required final int? next}) = _$MetaEntityImpl;

  @override
  int? get total;
  @override
  int? get lastPage;
  @override
  int? get currentPage;
  @override
  int? get perPage;
  @override
  int? get prev;
  @override
  int? get next;
  @override
  @JsonKey(ignore: true)
  _$$MetaEntityImplCopyWith<_$MetaEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
