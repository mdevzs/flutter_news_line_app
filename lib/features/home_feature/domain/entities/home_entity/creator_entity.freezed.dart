// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'creator_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CreatorEntity {
  @Id(assignable: true)
  int get id => throw _privateConstructorUsedError;
  String? get profileImage => throw _privateConstructorUsedError;
  String get fullName => throw _privateConstructorUsedError;
  String get bio => throw _privateConstructorUsedError;
  int get followersCount => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreatorEntityCopyWith<CreatorEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreatorEntityCopyWith<$Res> {
  factory $CreatorEntityCopyWith(
          CreatorEntity value, $Res Function(CreatorEntity) then) =
      _$CreatorEntityCopyWithImpl<$Res, CreatorEntity>;
  @useResult
  $Res call(
      {@Id(assignable: true) int id,
      String? profileImage,
      String fullName,
      String bio,
      int followersCount});
}

/// @nodoc
class _$CreatorEntityCopyWithImpl<$Res, $Val extends CreatorEntity>
    implements $CreatorEntityCopyWith<$Res> {
  _$CreatorEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? profileImage = freezed,
    Object? fullName = null,
    Object? bio = null,
    Object? followersCount = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      profileImage: freezed == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      bio: null == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String,
      followersCount: null == followersCount
          ? _value.followersCount
          : followersCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreatorModelImplCopyWith<$Res>
    implements $CreatorEntityCopyWith<$Res> {
  factory _$$CreatorModelImplCopyWith(
          _$CreatorModelImpl value, $Res Function(_$CreatorModelImpl) then) =
      __$$CreatorModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@Id(assignable: true) int id,
      String? profileImage,
      String fullName,
      String bio,
      int followersCount});
}

/// @nodoc
class __$$CreatorModelImplCopyWithImpl<$Res>
    extends _$CreatorEntityCopyWithImpl<$Res, _$CreatorModelImpl>
    implements _$$CreatorModelImplCopyWith<$Res> {
  __$$CreatorModelImplCopyWithImpl(
      _$CreatorModelImpl _value, $Res Function(_$CreatorModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? profileImage = freezed,
    Object? fullName = null,
    Object? bio = null,
    Object? followersCount = null,
  }) {
    return _then(_$CreatorModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      profileImage: freezed == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      bio: null == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String,
      followersCount: null == followersCount
          ? _value.followersCount
          : followersCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@Entity(realClass: CreatorEntity)
class _$CreatorModelImpl implements _CreatorModel {
  _$CreatorModelImpl(
      {@Id(assignable: true) required this.id,
      this.profileImage,
      required this.fullName,
      required this.bio,
      required this.followersCount});

  @override
  @Id(assignable: true)
  final int id;
  @override
  final String? profileImage;
  @override
  final String fullName;
  @override
  final String bio;
  @override
  final int followersCount;

  @override
  String toString() {
    return 'CreatorEntity(id: $id, profileImage: $profileImage, fullName: $fullName, bio: $bio, followersCount: $followersCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreatorModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.profileImage, profileImage) ||
                other.profileImage == profileImage) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.bio, bio) || other.bio == bio) &&
            (identical(other.followersCount, followersCount) ||
                other.followersCount == followersCount));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, profileImage, fullName, bio, followersCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreatorModelImplCopyWith<_$CreatorModelImpl> get copyWith =>
      __$$CreatorModelImplCopyWithImpl<_$CreatorModelImpl>(this, _$identity);
}

abstract class _CreatorModel implements CreatorEntity {
  factory _CreatorModel(
      {@Id(assignable: true) required final int id,
      final String? profileImage,
      required final String fullName,
      required final String bio,
      required final int followersCount}) = _$CreatorModelImpl;

  @override
  @Id(assignable: true)
  int get id;
  @override
  String? get profileImage;
  @override
  String get fullName;
  @override
  String get bio;
  @override
  int get followersCount;
  @override
  @JsonKey(ignore: true)
  _$$CreatorModelImplCopyWith<_$CreatorModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
