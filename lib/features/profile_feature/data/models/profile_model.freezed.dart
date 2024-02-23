// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProfileModel _$ProfileModelFromJson(Map<String, dynamic> json) {
  return _ProfileModel.fromJson(json);
}

/// @nodoc
mixin _$ProfileModel {
  int get id => throw _privateConstructorUsedError;
  String get fullName => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  String get gender => throw _privateConstructorUsedError;
  String get dateOfBirth => throw _privateConstructorUsedError;
  String? get bio => throw _privateConstructorUsedError;
  String? get profileImage => throw _privateConstructorUsedError;
  String get userType => throw _privateConstructorUsedError;
  int get storiesCount => throw _privateConstructorUsedError;
  int get followersCount => throw _privateConstructorUsedError;
  int get followingCount => throw _privateConstructorUsedError;
  bool get isFollowing => throw _privateConstructorUsedError;
  List<NewsModel> get userNews => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfileModelCopyWith<ProfileModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileModelCopyWith<$Res> {
  factory $ProfileModelCopyWith(
          ProfileModel value, $Res Function(ProfileModel) then) =
      _$ProfileModelCopyWithImpl<$Res, ProfileModel>;
  @useResult
  $Res call(
      {int id,
      String fullName,
      String username,
      String email,
      String phone,
      String gender,
      String dateOfBirth,
      String? bio,
      String? profileImage,
      String userType,
      int storiesCount,
      int followersCount,
      int followingCount,
      bool isFollowing,
      List<NewsModel> userNews});
}

/// @nodoc
class _$ProfileModelCopyWithImpl<$Res, $Val extends ProfileModel>
    implements $ProfileModelCopyWith<$Res> {
  _$ProfileModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? fullName = null,
    Object? username = null,
    Object? email = null,
    Object? phone = null,
    Object? gender = null,
    Object? dateOfBirth = null,
    Object? bio = freezed,
    Object? profileImage = freezed,
    Object? userType = null,
    Object? storiesCount = null,
    Object? followersCount = null,
    Object? followingCount = null,
    Object? isFollowing = null,
    Object? userNews = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      dateOfBirth: null == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as String,
      bio: freezed == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
      profileImage: freezed == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as String?,
      userType: null == userType
          ? _value.userType
          : userType // ignore: cast_nullable_to_non_nullable
              as String,
      storiesCount: null == storiesCount
          ? _value.storiesCount
          : storiesCount // ignore: cast_nullable_to_non_nullable
              as int,
      followersCount: null == followersCount
          ? _value.followersCount
          : followersCount // ignore: cast_nullable_to_non_nullable
              as int,
      followingCount: null == followingCount
          ? _value.followingCount
          : followingCount // ignore: cast_nullable_to_non_nullable
              as int,
      isFollowing: null == isFollowing
          ? _value.isFollowing
          : isFollowing // ignore: cast_nullable_to_non_nullable
              as bool,
      userNews: null == userNews
          ? _value.userNews
          : userNews // ignore: cast_nullable_to_non_nullable
              as List<NewsModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProfileModelImplCopyWith<$Res>
    implements $ProfileModelCopyWith<$Res> {
  factory _$$ProfileModelImplCopyWith(
          _$ProfileModelImpl value, $Res Function(_$ProfileModelImpl) then) =
      __$$ProfileModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String fullName,
      String username,
      String email,
      String phone,
      String gender,
      String dateOfBirth,
      String? bio,
      String? profileImage,
      String userType,
      int storiesCount,
      int followersCount,
      int followingCount,
      bool isFollowing,
      List<NewsModel> userNews});
}

/// @nodoc
class __$$ProfileModelImplCopyWithImpl<$Res>
    extends _$ProfileModelCopyWithImpl<$Res, _$ProfileModelImpl>
    implements _$$ProfileModelImplCopyWith<$Res> {
  __$$ProfileModelImplCopyWithImpl(
      _$ProfileModelImpl _value, $Res Function(_$ProfileModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? fullName = null,
    Object? username = null,
    Object? email = null,
    Object? phone = null,
    Object? gender = null,
    Object? dateOfBirth = null,
    Object? bio = freezed,
    Object? profileImage = freezed,
    Object? userType = null,
    Object? storiesCount = null,
    Object? followersCount = null,
    Object? followingCount = null,
    Object? isFollowing = null,
    Object? userNews = null,
  }) {
    return _then(_$ProfileModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      dateOfBirth: null == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as String,
      bio: freezed == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
      profileImage: freezed == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as String?,
      userType: null == userType
          ? _value.userType
          : userType // ignore: cast_nullable_to_non_nullable
              as String,
      storiesCount: null == storiesCount
          ? _value.storiesCount
          : storiesCount // ignore: cast_nullable_to_non_nullable
              as int,
      followersCount: null == followersCount
          ? _value.followersCount
          : followersCount // ignore: cast_nullable_to_non_nullable
              as int,
      followingCount: null == followingCount
          ? _value.followingCount
          : followingCount // ignore: cast_nullable_to_non_nullable
              as int,
      isFollowing: null == isFollowing
          ? _value.isFollowing
          : isFollowing // ignore: cast_nullable_to_non_nullable
              as bool,
      userNews: null == userNews
          ? _value._userNews
          : userNews // ignore: cast_nullable_to_non_nullable
              as List<NewsModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProfileModelImpl extends _ProfileModel {
  const _$ProfileModelImpl(
      {required this.id,
      required this.fullName,
      required this.username,
      required this.email,
      required this.phone,
      required this.gender,
      required this.dateOfBirth,
      this.bio,
      this.profileImage,
      required this.userType,
      required this.storiesCount,
      required this.followersCount,
      required this.followingCount,
      required this.isFollowing,
      required final List<NewsModel> userNews})
      : _userNews = userNews,
        super._();

  factory _$ProfileModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProfileModelImplFromJson(json);

  @override
  final int id;
  @override
  final String fullName;
  @override
  final String username;
  @override
  final String email;
  @override
  final String phone;
  @override
  final String gender;
  @override
  final String dateOfBirth;
  @override
  final String? bio;
  @override
  final String? profileImage;
  @override
  final String userType;
  @override
  final int storiesCount;
  @override
  final int followersCount;
  @override
  final int followingCount;
  @override
  final bool isFollowing;
  final List<NewsModel> _userNews;
  @override
  List<NewsModel> get userNews {
    if (_userNews is EqualUnmodifiableListView) return _userNews;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_userNews);
  }

  @override
  String toString() {
    return 'ProfileModel(id: $id, fullName: $fullName, username: $username, email: $email, phone: $phone, gender: $gender, dateOfBirth: $dateOfBirth, bio: $bio, profileImage: $profileImage, userType: $userType, storiesCount: $storiesCount, followersCount: $followersCount, followingCount: $followingCount, isFollowing: $isFollowing, userNews: $userNews)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.dateOfBirth, dateOfBirth) ||
                other.dateOfBirth == dateOfBirth) &&
            (identical(other.bio, bio) || other.bio == bio) &&
            (identical(other.profileImage, profileImage) ||
                other.profileImage == profileImage) &&
            (identical(other.userType, userType) ||
                other.userType == userType) &&
            (identical(other.storiesCount, storiesCount) ||
                other.storiesCount == storiesCount) &&
            (identical(other.followersCount, followersCount) ||
                other.followersCount == followersCount) &&
            (identical(other.followingCount, followingCount) ||
                other.followingCount == followingCount) &&
            (identical(other.isFollowing, isFollowing) ||
                other.isFollowing == isFollowing) &&
            const DeepCollectionEquality().equals(other._userNews, _userNews));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      fullName,
      username,
      email,
      phone,
      gender,
      dateOfBirth,
      bio,
      profileImage,
      userType,
      storiesCount,
      followersCount,
      followingCount,
      isFollowing,
      const DeepCollectionEquality().hash(_userNews));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileModelImplCopyWith<_$ProfileModelImpl> get copyWith =>
      __$$ProfileModelImplCopyWithImpl<_$ProfileModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProfileModelImplToJson(
      this,
    );
  }
}

abstract class _ProfileModel extends ProfileModel {
  const factory _ProfileModel(
      {required final int id,
      required final String fullName,
      required final String username,
      required final String email,
      required final String phone,
      required final String gender,
      required final String dateOfBirth,
      final String? bio,
      final String? profileImage,
      required final String userType,
      required final int storiesCount,
      required final int followersCount,
      required final int followingCount,
      required final bool isFollowing,
      required final List<NewsModel> userNews}) = _$ProfileModelImpl;
  const _ProfileModel._() : super._();

  factory _ProfileModel.fromJson(Map<String, dynamic> json) =
      _$ProfileModelImpl.fromJson;

  @override
  int get id;
  @override
  String get fullName;
  @override
  String get username;
  @override
  String get email;
  @override
  String get phone;
  @override
  String get gender;
  @override
  String get dateOfBirth;
  @override
  String? get bio;
  @override
  String? get profileImage;
  @override
  String get userType;
  @override
  int get storiesCount;
  @override
  int get followersCount;
  @override
  int get followingCount;
  @override
  bool get isFollowing;
  @override
  List<NewsModel> get userNews;
  @override
  @JsonKey(ignore: true)
  _$$ProfileModelImplCopyWith<_$ProfileModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
