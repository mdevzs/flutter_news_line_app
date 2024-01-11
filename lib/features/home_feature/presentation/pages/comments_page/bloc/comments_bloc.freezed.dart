// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'comments_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CommentsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String newsId) getAllComments,
    required TResult Function(
            String comment, int? parentId, int selectedTabIndex, String newsId)
        sendComment,
    required TResult Function(int commentId, int selectedTabIndex) likeComment,
    required TResult Function(String? username) replyComment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String newsId)? getAllComments,
    TResult? Function(
            String comment, int? parentId, int selectedTabIndex, String newsId)?
        sendComment,
    TResult? Function(int commentId, int selectedTabIndex)? likeComment,
    TResult? Function(String? username)? replyComment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String newsId)? getAllComments,
    TResult Function(
            String comment, int? parentId, int selectedTabIndex, String newsId)?
        sendComment,
    TResult Function(int commentId, int selectedTabIndex)? likeComment,
    TResult Function(String? username)? replyComment,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllComments value) getAllComments,
    required TResult Function(_SendComment value) sendComment,
    required TResult Function(_LikeComment value) likeComment,
    required TResult Function(_ReplyComment value) replyComment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAllComments value)? getAllComments,
    TResult? Function(_SendComment value)? sendComment,
    TResult? Function(_LikeComment value)? likeComment,
    TResult? Function(_ReplyComment value)? replyComment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllComments value)? getAllComments,
    TResult Function(_SendComment value)? sendComment,
    TResult Function(_LikeComment value)? likeComment,
    TResult Function(_ReplyComment value)? replyComment,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentsEventCopyWith<$Res> {
  factory $CommentsEventCopyWith(
          CommentsEvent value, $Res Function(CommentsEvent) then) =
      _$CommentsEventCopyWithImpl<$Res, CommentsEvent>;
}

/// @nodoc
class _$CommentsEventCopyWithImpl<$Res, $Val extends CommentsEvent>
    implements $CommentsEventCopyWith<$Res> {
  _$CommentsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetAllCommentsImplCopyWith<$Res> {
  factory _$$GetAllCommentsImplCopyWith(_$GetAllCommentsImpl value,
          $Res Function(_$GetAllCommentsImpl) then) =
      __$$GetAllCommentsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String newsId});
}

/// @nodoc
class __$$GetAllCommentsImplCopyWithImpl<$Res>
    extends _$CommentsEventCopyWithImpl<$Res, _$GetAllCommentsImpl>
    implements _$$GetAllCommentsImplCopyWith<$Res> {
  __$$GetAllCommentsImplCopyWithImpl(
      _$GetAllCommentsImpl _value, $Res Function(_$GetAllCommentsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newsId = null,
  }) {
    return _then(_$GetAllCommentsImpl(
      null == newsId
          ? _value.newsId
          : newsId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetAllCommentsImpl implements _GetAllComments {
  const _$GetAllCommentsImpl(this.newsId);

  @override
  final String newsId;

  @override
  String toString() {
    return 'CommentsEvent.getAllComments(newsId: $newsId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAllCommentsImpl &&
            (identical(other.newsId, newsId) || other.newsId == newsId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newsId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAllCommentsImplCopyWith<_$GetAllCommentsImpl> get copyWith =>
      __$$GetAllCommentsImplCopyWithImpl<_$GetAllCommentsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String newsId) getAllComments,
    required TResult Function(
            String comment, int? parentId, int selectedTabIndex, String newsId)
        sendComment,
    required TResult Function(int commentId, int selectedTabIndex) likeComment,
    required TResult Function(String? username) replyComment,
  }) {
    return getAllComments(newsId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String newsId)? getAllComments,
    TResult? Function(
            String comment, int? parentId, int selectedTabIndex, String newsId)?
        sendComment,
    TResult? Function(int commentId, int selectedTabIndex)? likeComment,
    TResult? Function(String? username)? replyComment,
  }) {
    return getAllComments?.call(newsId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String newsId)? getAllComments,
    TResult Function(
            String comment, int? parentId, int selectedTabIndex, String newsId)?
        sendComment,
    TResult Function(int commentId, int selectedTabIndex)? likeComment,
    TResult Function(String? username)? replyComment,
    required TResult orElse(),
  }) {
    if (getAllComments != null) {
      return getAllComments(newsId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllComments value) getAllComments,
    required TResult Function(_SendComment value) sendComment,
    required TResult Function(_LikeComment value) likeComment,
    required TResult Function(_ReplyComment value) replyComment,
  }) {
    return getAllComments(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAllComments value)? getAllComments,
    TResult? Function(_SendComment value)? sendComment,
    TResult? Function(_LikeComment value)? likeComment,
    TResult? Function(_ReplyComment value)? replyComment,
  }) {
    return getAllComments?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllComments value)? getAllComments,
    TResult Function(_SendComment value)? sendComment,
    TResult Function(_LikeComment value)? likeComment,
    TResult Function(_ReplyComment value)? replyComment,
    required TResult orElse(),
  }) {
    if (getAllComments != null) {
      return getAllComments(this);
    }
    return orElse();
  }
}

abstract class _GetAllComments implements CommentsEvent {
  const factory _GetAllComments(final String newsId) = _$GetAllCommentsImpl;

  String get newsId;
  @JsonKey(ignore: true)
  _$$GetAllCommentsImplCopyWith<_$GetAllCommentsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SendCommentImplCopyWith<$Res> {
  factory _$$SendCommentImplCopyWith(
          _$SendCommentImpl value, $Res Function(_$SendCommentImpl) then) =
      __$$SendCommentImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String comment, int? parentId, int selectedTabIndex, String newsId});
}

/// @nodoc
class __$$SendCommentImplCopyWithImpl<$Res>
    extends _$CommentsEventCopyWithImpl<$Res, _$SendCommentImpl>
    implements _$$SendCommentImplCopyWith<$Res> {
  __$$SendCommentImplCopyWithImpl(
      _$SendCommentImpl _value, $Res Function(_$SendCommentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? comment = null,
    Object? parentId = freezed,
    Object? selectedTabIndex = null,
    Object? newsId = null,
  }) {
    return _then(_$SendCommentImpl(
      null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
      freezed == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as int?,
      null == selectedTabIndex
          ? _value.selectedTabIndex
          : selectedTabIndex // ignore: cast_nullable_to_non_nullable
              as int,
      null == newsId
          ? _value.newsId
          : newsId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SendCommentImpl implements _SendComment {
  const _$SendCommentImpl(
      this.comment, this.parentId, this.selectedTabIndex, this.newsId);

  @override
  final String comment;
  @override
  final int? parentId;
  @override
  final int selectedTabIndex;
  @override
  final String newsId;

  @override
  String toString() {
    return 'CommentsEvent.sendComment(comment: $comment, parentId: $parentId, selectedTabIndex: $selectedTabIndex, newsId: $newsId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendCommentImpl &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.parentId, parentId) ||
                other.parentId == parentId) &&
            (identical(other.selectedTabIndex, selectedTabIndex) ||
                other.selectedTabIndex == selectedTabIndex) &&
            (identical(other.newsId, newsId) || other.newsId == newsId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, comment, parentId, selectedTabIndex, newsId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SendCommentImplCopyWith<_$SendCommentImpl> get copyWith =>
      __$$SendCommentImplCopyWithImpl<_$SendCommentImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String newsId) getAllComments,
    required TResult Function(
            String comment, int? parentId, int selectedTabIndex, String newsId)
        sendComment,
    required TResult Function(int commentId, int selectedTabIndex) likeComment,
    required TResult Function(String? username) replyComment,
  }) {
    return sendComment(comment, parentId, selectedTabIndex, newsId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String newsId)? getAllComments,
    TResult? Function(
            String comment, int? parentId, int selectedTabIndex, String newsId)?
        sendComment,
    TResult? Function(int commentId, int selectedTabIndex)? likeComment,
    TResult? Function(String? username)? replyComment,
  }) {
    return sendComment?.call(comment, parentId, selectedTabIndex, newsId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String newsId)? getAllComments,
    TResult Function(
            String comment, int? parentId, int selectedTabIndex, String newsId)?
        sendComment,
    TResult Function(int commentId, int selectedTabIndex)? likeComment,
    TResult Function(String? username)? replyComment,
    required TResult orElse(),
  }) {
    if (sendComment != null) {
      return sendComment(comment, parentId, selectedTabIndex, newsId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllComments value) getAllComments,
    required TResult Function(_SendComment value) sendComment,
    required TResult Function(_LikeComment value) likeComment,
    required TResult Function(_ReplyComment value) replyComment,
  }) {
    return sendComment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAllComments value)? getAllComments,
    TResult? Function(_SendComment value)? sendComment,
    TResult? Function(_LikeComment value)? likeComment,
    TResult? Function(_ReplyComment value)? replyComment,
  }) {
    return sendComment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllComments value)? getAllComments,
    TResult Function(_SendComment value)? sendComment,
    TResult Function(_LikeComment value)? likeComment,
    TResult Function(_ReplyComment value)? replyComment,
    required TResult orElse(),
  }) {
    if (sendComment != null) {
      return sendComment(this);
    }
    return orElse();
  }
}

abstract class _SendComment implements CommentsEvent {
  const factory _SendComment(final String comment, final int? parentId,
      final int selectedTabIndex, final String newsId) = _$SendCommentImpl;

  String get comment;
  int? get parentId;
  int get selectedTabIndex;
  String get newsId;
  @JsonKey(ignore: true)
  _$$SendCommentImplCopyWith<_$SendCommentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LikeCommentImplCopyWith<$Res> {
  factory _$$LikeCommentImplCopyWith(
          _$LikeCommentImpl value, $Res Function(_$LikeCommentImpl) then) =
      __$$LikeCommentImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int commentId, int selectedTabIndex});
}

/// @nodoc
class __$$LikeCommentImplCopyWithImpl<$Res>
    extends _$CommentsEventCopyWithImpl<$Res, _$LikeCommentImpl>
    implements _$$LikeCommentImplCopyWith<$Res> {
  __$$LikeCommentImplCopyWithImpl(
      _$LikeCommentImpl _value, $Res Function(_$LikeCommentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? commentId = null,
    Object? selectedTabIndex = null,
  }) {
    return _then(_$LikeCommentImpl(
      null == commentId
          ? _value.commentId
          : commentId // ignore: cast_nullable_to_non_nullable
              as int,
      null == selectedTabIndex
          ? _value.selectedTabIndex
          : selectedTabIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$LikeCommentImpl implements _LikeComment {
  const _$LikeCommentImpl(this.commentId, this.selectedTabIndex);

  @override
  final int commentId;
  @override
  final int selectedTabIndex;

  @override
  String toString() {
    return 'CommentsEvent.likeComment(commentId: $commentId, selectedTabIndex: $selectedTabIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LikeCommentImpl &&
            (identical(other.commentId, commentId) ||
                other.commentId == commentId) &&
            (identical(other.selectedTabIndex, selectedTabIndex) ||
                other.selectedTabIndex == selectedTabIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, commentId, selectedTabIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LikeCommentImplCopyWith<_$LikeCommentImpl> get copyWith =>
      __$$LikeCommentImplCopyWithImpl<_$LikeCommentImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String newsId) getAllComments,
    required TResult Function(
            String comment, int? parentId, int selectedTabIndex, String newsId)
        sendComment,
    required TResult Function(int commentId, int selectedTabIndex) likeComment,
    required TResult Function(String? username) replyComment,
  }) {
    return likeComment(commentId, selectedTabIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String newsId)? getAllComments,
    TResult? Function(
            String comment, int? parentId, int selectedTabIndex, String newsId)?
        sendComment,
    TResult? Function(int commentId, int selectedTabIndex)? likeComment,
    TResult? Function(String? username)? replyComment,
  }) {
    return likeComment?.call(commentId, selectedTabIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String newsId)? getAllComments,
    TResult Function(
            String comment, int? parentId, int selectedTabIndex, String newsId)?
        sendComment,
    TResult Function(int commentId, int selectedTabIndex)? likeComment,
    TResult Function(String? username)? replyComment,
    required TResult orElse(),
  }) {
    if (likeComment != null) {
      return likeComment(commentId, selectedTabIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllComments value) getAllComments,
    required TResult Function(_SendComment value) sendComment,
    required TResult Function(_LikeComment value) likeComment,
    required TResult Function(_ReplyComment value) replyComment,
  }) {
    return likeComment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAllComments value)? getAllComments,
    TResult? Function(_SendComment value)? sendComment,
    TResult? Function(_LikeComment value)? likeComment,
    TResult? Function(_ReplyComment value)? replyComment,
  }) {
    return likeComment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllComments value)? getAllComments,
    TResult Function(_SendComment value)? sendComment,
    TResult Function(_LikeComment value)? likeComment,
    TResult Function(_ReplyComment value)? replyComment,
    required TResult orElse(),
  }) {
    if (likeComment != null) {
      return likeComment(this);
    }
    return orElse();
  }
}

abstract class _LikeComment implements CommentsEvent {
  const factory _LikeComment(final int commentId, final int selectedTabIndex) =
      _$LikeCommentImpl;

  int get commentId;
  int get selectedTabIndex;
  @JsonKey(ignore: true)
  _$$LikeCommentImplCopyWith<_$LikeCommentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReplyCommentImplCopyWith<$Res> {
  factory _$$ReplyCommentImplCopyWith(
          _$ReplyCommentImpl value, $Res Function(_$ReplyCommentImpl) then) =
      __$$ReplyCommentImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? username});
}

/// @nodoc
class __$$ReplyCommentImplCopyWithImpl<$Res>
    extends _$CommentsEventCopyWithImpl<$Res, _$ReplyCommentImpl>
    implements _$$ReplyCommentImplCopyWith<$Res> {
  __$$ReplyCommentImplCopyWithImpl(
      _$ReplyCommentImpl _value, $Res Function(_$ReplyCommentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = freezed,
  }) {
    return _then(_$ReplyCommentImpl(
      freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ReplyCommentImpl implements _ReplyComment {
  const _$ReplyCommentImpl(this.username);

  @override
  final String? username;

  @override
  String toString() {
    return 'CommentsEvent.replyComment(username: $username)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReplyCommentImpl &&
            (identical(other.username, username) ||
                other.username == username));
  }

  @override
  int get hashCode => Object.hash(runtimeType, username);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReplyCommentImplCopyWith<_$ReplyCommentImpl> get copyWith =>
      __$$ReplyCommentImplCopyWithImpl<_$ReplyCommentImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String newsId) getAllComments,
    required TResult Function(
            String comment, int? parentId, int selectedTabIndex, String newsId)
        sendComment,
    required TResult Function(int commentId, int selectedTabIndex) likeComment,
    required TResult Function(String? username) replyComment,
  }) {
    return replyComment(username);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String newsId)? getAllComments,
    TResult? Function(
            String comment, int? parentId, int selectedTabIndex, String newsId)?
        sendComment,
    TResult? Function(int commentId, int selectedTabIndex)? likeComment,
    TResult? Function(String? username)? replyComment,
  }) {
    return replyComment?.call(username);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String newsId)? getAllComments,
    TResult Function(
            String comment, int? parentId, int selectedTabIndex, String newsId)?
        sendComment,
    TResult Function(int commentId, int selectedTabIndex)? likeComment,
    TResult Function(String? username)? replyComment,
    required TResult orElse(),
  }) {
    if (replyComment != null) {
      return replyComment(username);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllComments value) getAllComments,
    required TResult Function(_SendComment value) sendComment,
    required TResult Function(_LikeComment value) likeComment,
    required TResult Function(_ReplyComment value) replyComment,
  }) {
    return replyComment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAllComments value)? getAllComments,
    TResult? Function(_SendComment value)? sendComment,
    TResult? Function(_LikeComment value)? likeComment,
    TResult? Function(_ReplyComment value)? replyComment,
  }) {
    return replyComment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllComments value)? getAllComments,
    TResult Function(_SendComment value)? sendComment,
    TResult Function(_LikeComment value)? likeComment,
    TResult Function(_ReplyComment value)? replyComment,
    required TResult orElse(),
  }) {
    if (replyComment != null) {
      return replyComment(this);
    }
    return orElse();
  }
}

abstract class _ReplyComment implements CommentsEvent {
  const factory _ReplyComment(final String? username) = _$ReplyCommentImpl;

  String? get username;
  @JsonKey(ignore: true)
  _$$ReplyCommentImplCopyWith<_$ReplyCommentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CommentsState {
  IList<CommentsEntity> get topComments => throw _privateConstructorUsedError;
  IList<CommentsEntity> get newestComments =>
      throw _privateConstructorUsedError;
  CommentsStatus get commentsSatus => throw _privateConstructorUsedError;
  AddCommentStatus get addCommentState => throw _privateConstructorUsedError;
  bool get isReplying => throw _privateConstructorUsedError;
  String? get repliedUsername => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CommentsStateCopyWith<CommentsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentsStateCopyWith<$Res> {
  factory $CommentsStateCopyWith(
          CommentsState value, $Res Function(CommentsState) then) =
      _$CommentsStateCopyWithImpl<$Res, CommentsState>;
  @useResult
  $Res call(
      {IList<CommentsEntity> topComments,
      IList<CommentsEntity> newestComments,
      CommentsStatus commentsSatus,
      AddCommentStatus addCommentState,
      bool isReplying,
      String? repliedUsername});

  $CommentsStatusCopyWith<$Res> get commentsSatus;
  $AddCommentStatusCopyWith<$Res> get addCommentState;
}

/// @nodoc
class _$CommentsStateCopyWithImpl<$Res, $Val extends CommentsState>
    implements $CommentsStateCopyWith<$Res> {
  _$CommentsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? topComments = null,
    Object? newestComments = null,
    Object? commentsSatus = null,
    Object? addCommentState = null,
    Object? isReplying = null,
    Object? repliedUsername = freezed,
  }) {
    return _then(_value.copyWith(
      topComments: null == topComments
          ? _value.topComments
          : topComments // ignore: cast_nullable_to_non_nullable
              as IList<CommentsEntity>,
      newestComments: null == newestComments
          ? _value.newestComments
          : newestComments // ignore: cast_nullable_to_non_nullable
              as IList<CommentsEntity>,
      commentsSatus: null == commentsSatus
          ? _value.commentsSatus
          : commentsSatus // ignore: cast_nullable_to_non_nullable
              as CommentsStatus,
      addCommentState: null == addCommentState
          ? _value.addCommentState
          : addCommentState // ignore: cast_nullable_to_non_nullable
              as AddCommentStatus,
      isReplying: null == isReplying
          ? _value.isReplying
          : isReplying // ignore: cast_nullable_to_non_nullable
              as bool,
      repliedUsername: freezed == repliedUsername
          ? _value.repliedUsername
          : repliedUsername // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CommentsStatusCopyWith<$Res> get commentsSatus {
    return $CommentsStatusCopyWith<$Res>(_value.commentsSatus, (value) {
      return _then(_value.copyWith(commentsSatus: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AddCommentStatusCopyWith<$Res> get addCommentState {
    return $AddCommentStatusCopyWith<$Res>(_value.addCommentState, (value) {
      return _then(_value.copyWith(addCommentState: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CommentsStateImplCopyWith<$Res>
    implements $CommentsStateCopyWith<$Res> {
  factory _$$CommentsStateImplCopyWith(
          _$CommentsStateImpl value, $Res Function(_$CommentsStateImpl) then) =
      __$$CommentsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {IList<CommentsEntity> topComments,
      IList<CommentsEntity> newestComments,
      CommentsStatus commentsSatus,
      AddCommentStatus addCommentState,
      bool isReplying,
      String? repliedUsername});

  @override
  $CommentsStatusCopyWith<$Res> get commentsSatus;
  @override
  $AddCommentStatusCopyWith<$Res> get addCommentState;
}

/// @nodoc
class __$$CommentsStateImplCopyWithImpl<$Res>
    extends _$CommentsStateCopyWithImpl<$Res, _$CommentsStateImpl>
    implements _$$CommentsStateImplCopyWith<$Res> {
  __$$CommentsStateImplCopyWithImpl(
      _$CommentsStateImpl _value, $Res Function(_$CommentsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? topComments = null,
    Object? newestComments = null,
    Object? commentsSatus = null,
    Object? addCommentState = null,
    Object? isReplying = null,
    Object? repliedUsername = freezed,
  }) {
    return _then(_$CommentsStateImpl(
      topComments: null == topComments
          ? _value.topComments
          : topComments // ignore: cast_nullable_to_non_nullable
              as IList<CommentsEntity>,
      newestComments: null == newestComments
          ? _value.newestComments
          : newestComments // ignore: cast_nullable_to_non_nullable
              as IList<CommentsEntity>,
      commentsSatus: null == commentsSatus
          ? _value.commentsSatus
          : commentsSatus // ignore: cast_nullable_to_non_nullable
              as CommentsStatus,
      addCommentState: null == addCommentState
          ? _value.addCommentState
          : addCommentState // ignore: cast_nullable_to_non_nullable
              as AddCommentStatus,
      isReplying: null == isReplying
          ? _value.isReplying
          : isReplying // ignore: cast_nullable_to_non_nullable
              as bool,
      repliedUsername: freezed == repliedUsername
          ? _value.repliedUsername
          : repliedUsername // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$CommentsStateImpl implements _CommentsState {
  _$CommentsStateImpl(
      {this.topComments = const IListConst([]),
      this.newestComments = const IListConst([]),
      this.commentsSatus = const CommentsStatus.loading(),
      this.addCommentState = const AddCommentStatus.initial(),
      this.isReplying = false,
      this.repliedUsername});

  @override
  @JsonKey()
  final IList<CommentsEntity> topComments;
  @override
  @JsonKey()
  final IList<CommentsEntity> newestComments;
  @override
  @JsonKey()
  final CommentsStatus commentsSatus;
  @override
  @JsonKey()
  final AddCommentStatus addCommentState;
  @override
  @JsonKey()
  final bool isReplying;
  @override
  final String? repliedUsername;

  @override
  String toString() {
    return 'CommentsState(topComments: $topComments, newestComments: $newestComments, commentsSatus: $commentsSatus, addCommentState: $addCommentState, isReplying: $isReplying, repliedUsername: $repliedUsername)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CommentsStateImplCopyWith<_$CommentsStateImpl> get copyWith =>
      __$$CommentsStateImplCopyWithImpl<_$CommentsStateImpl>(this, _$identity);
}

abstract class _CommentsState implements CommentsState {
  factory _CommentsState(
      {final IList<CommentsEntity> topComments,
      final IList<CommentsEntity> newestComments,
      final CommentsStatus commentsSatus,
      final AddCommentStatus addCommentState,
      final bool isReplying,
      final String? repliedUsername}) = _$CommentsStateImpl;

  @override
  IList<CommentsEntity> get topComments;
  @override
  IList<CommentsEntity> get newestComments;
  @override
  CommentsStatus get commentsSatus;
  @override
  AddCommentStatus get addCommentState;
  @override
  bool get isReplying;
  @override
  String? get repliedUsername;
  @override
  @JsonKey(ignore: true)
  _$$CommentsStateImplCopyWith<_$CommentsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
