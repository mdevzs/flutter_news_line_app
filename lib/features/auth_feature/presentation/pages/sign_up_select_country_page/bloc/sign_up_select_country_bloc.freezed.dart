// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_select_country_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SignUpSelectCountryEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? q) getCountries,
    required TResult Function(bool isTryAgain, String q) loadMore,
    required TResult Function(int id, String countryName) selectCountry,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? q)? getCountries,
    TResult? Function(bool isTryAgain, String q)? loadMore,
    TResult? Function(int id, String countryName)? selectCountry,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? q)? getCountries,
    TResult Function(bool isTryAgain, String q)? loadMore,
    TResult Function(int id, String countryName)? selectCountry,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCountries value) getCountries,
    required TResult Function(_LoadMore value) loadMore,
    required TResult Function(_SelectCountry value) selectCountry,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCountries value)? getCountries,
    TResult? Function(_LoadMore value)? loadMore,
    TResult? Function(_SelectCountry value)? selectCountry,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCountries value)? getCountries,
    TResult Function(_LoadMore value)? loadMore,
    TResult Function(_SelectCountry value)? selectCountry,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpSelectCountryEventCopyWith<$Res> {
  factory $SignUpSelectCountryEventCopyWith(SignUpSelectCountryEvent value,
          $Res Function(SignUpSelectCountryEvent) then) =
      _$SignUpSelectCountryEventCopyWithImpl<$Res, SignUpSelectCountryEvent>;
}

/// @nodoc
class _$SignUpSelectCountryEventCopyWithImpl<$Res,
        $Val extends SignUpSelectCountryEvent>
    implements $SignUpSelectCountryEventCopyWith<$Res> {
  _$SignUpSelectCountryEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetCountriesImplCopyWith<$Res> {
  factory _$$GetCountriesImplCopyWith(
          _$GetCountriesImpl value, $Res Function(_$GetCountriesImpl) then) =
      __$$GetCountriesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? q});
}

/// @nodoc
class __$$GetCountriesImplCopyWithImpl<$Res>
    extends _$SignUpSelectCountryEventCopyWithImpl<$Res, _$GetCountriesImpl>
    implements _$$GetCountriesImplCopyWith<$Res> {
  __$$GetCountriesImplCopyWithImpl(
      _$GetCountriesImpl _value, $Res Function(_$GetCountriesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? q = freezed,
  }) {
    return _then(_$GetCountriesImpl(
      freezed == q
          ? _value.q
          : q // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$GetCountriesImpl implements _GetCountries {
  const _$GetCountriesImpl(this.q);

  @override
  final String? q;

  @override
  String toString() {
    return 'SignUpSelectCountryEvent.getCountries(q: $q)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCountriesImpl &&
            (identical(other.q, q) || other.q == q));
  }

  @override
  int get hashCode => Object.hash(runtimeType, q);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCountriesImplCopyWith<_$GetCountriesImpl> get copyWith =>
      __$$GetCountriesImplCopyWithImpl<_$GetCountriesImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? q) getCountries,
    required TResult Function(bool isTryAgain, String q) loadMore,
    required TResult Function(int id, String countryName) selectCountry,
  }) {
    return getCountries(q);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? q)? getCountries,
    TResult? Function(bool isTryAgain, String q)? loadMore,
    TResult? Function(int id, String countryName)? selectCountry,
  }) {
    return getCountries?.call(q);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? q)? getCountries,
    TResult Function(bool isTryAgain, String q)? loadMore,
    TResult Function(int id, String countryName)? selectCountry,
    required TResult orElse(),
  }) {
    if (getCountries != null) {
      return getCountries(q);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCountries value) getCountries,
    required TResult Function(_LoadMore value) loadMore,
    required TResult Function(_SelectCountry value) selectCountry,
  }) {
    return getCountries(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCountries value)? getCountries,
    TResult? Function(_LoadMore value)? loadMore,
    TResult? Function(_SelectCountry value)? selectCountry,
  }) {
    return getCountries?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCountries value)? getCountries,
    TResult Function(_LoadMore value)? loadMore,
    TResult Function(_SelectCountry value)? selectCountry,
    required TResult orElse(),
  }) {
    if (getCountries != null) {
      return getCountries(this);
    }
    return orElse();
  }
}

abstract class _GetCountries implements SignUpSelectCountryEvent {
  const factory _GetCountries(final String? q) = _$GetCountriesImpl;

  String? get q;
  @JsonKey(ignore: true)
  _$$GetCountriesImplCopyWith<_$GetCountriesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadMoreImplCopyWith<$Res> {
  factory _$$LoadMoreImplCopyWith(
          _$LoadMoreImpl value, $Res Function(_$LoadMoreImpl) then) =
      __$$LoadMoreImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isTryAgain, String q});
}

/// @nodoc
class __$$LoadMoreImplCopyWithImpl<$Res>
    extends _$SignUpSelectCountryEventCopyWithImpl<$Res, _$LoadMoreImpl>
    implements _$$LoadMoreImplCopyWith<$Res> {
  __$$LoadMoreImplCopyWithImpl(
      _$LoadMoreImpl _value, $Res Function(_$LoadMoreImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isTryAgain = null,
    Object? q = null,
  }) {
    return _then(_$LoadMoreImpl(
      isTryAgain: null == isTryAgain
          ? _value.isTryAgain
          : isTryAgain // ignore: cast_nullable_to_non_nullable
              as bool,
      q: null == q
          ? _value.q
          : q // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoadMoreImpl implements _LoadMore {
  const _$LoadMoreImpl({required this.isTryAgain, required this.q});

  @override
  final bool isTryAgain;
  @override
  final String q;

  @override
  String toString() {
    return 'SignUpSelectCountryEvent.loadMore(isTryAgain: $isTryAgain, q: $q)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadMoreImpl &&
            (identical(other.isTryAgain, isTryAgain) ||
                other.isTryAgain == isTryAgain) &&
            (identical(other.q, q) || other.q == q));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isTryAgain, q);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadMoreImplCopyWith<_$LoadMoreImpl> get copyWith =>
      __$$LoadMoreImplCopyWithImpl<_$LoadMoreImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? q) getCountries,
    required TResult Function(bool isTryAgain, String q) loadMore,
    required TResult Function(int id, String countryName) selectCountry,
  }) {
    return loadMore(isTryAgain, q);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? q)? getCountries,
    TResult? Function(bool isTryAgain, String q)? loadMore,
    TResult? Function(int id, String countryName)? selectCountry,
  }) {
    return loadMore?.call(isTryAgain, q);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? q)? getCountries,
    TResult Function(bool isTryAgain, String q)? loadMore,
    TResult Function(int id, String countryName)? selectCountry,
    required TResult orElse(),
  }) {
    if (loadMore != null) {
      return loadMore(isTryAgain, q);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCountries value) getCountries,
    required TResult Function(_LoadMore value) loadMore,
    required TResult Function(_SelectCountry value) selectCountry,
  }) {
    return loadMore(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCountries value)? getCountries,
    TResult? Function(_LoadMore value)? loadMore,
    TResult? Function(_SelectCountry value)? selectCountry,
  }) {
    return loadMore?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCountries value)? getCountries,
    TResult Function(_LoadMore value)? loadMore,
    TResult Function(_SelectCountry value)? selectCountry,
    required TResult orElse(),
  }) {
    if (loadMore != null) {
      return loadMore(this);
    }
    return orElse();
  }
}

abstract class _LoadMore implements SignUpSelectCountryEvent {
  const factory _LoadMore(
      {required final bool isTryAgain,
      required final String q}) = _$LoadMoreImpl;

  bool get isTryAgain;
  String get q;
  @JsonKey(ignore: true)
  _$$LoadMoreImplCopyWith<_$LoadMoreImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelectCountryImplCopyWith<$Res> {
  factory _$$SelectCountryImplCopyWith(
          _$SelectCountryImpl value, $Res Function(_$SelectCountryImpl) then) =
      __$$SelectCountryImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id, String countryName});
}

/// @nodoc
class __$$SelectCountryImplCopyWithImpl<$Res>
    extends _$SignUpSelectCountryEventCopyWithImpl<$Res, _$SelectCountryImpl>
    implements _$$SelectCountryImplCopyWith<$Res> {
  __$$SelectCountryImplCopyWithImpl(
      _$SelectCountryImpl _value, $Res Function(_$SelectCountryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? countryName = null,
  }) {
    return _then(_$SelectCountryImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      countryName: null == countryName
          ? _value.countryName
          : countryName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SelectCountryImpl implements _SelectCountry {
  const _$SelectCountryImpl({required this.id, required this.countryName});

  @override
  final int id;
  @override
  final String countryName;

  @override
  String toString() {
    return 'SignUpSelectCountryEvent.selectCountry(id: $id, countryName: $countryName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectCountryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.countryName, countryName) ||
                other.countryName == countryName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, countryName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectCountryImplCopyWith<_$SelectCountryImpl> get copyWith =>
      __$$SelectCountryImplCopyWithImpl<_$SelectCountryImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? q) getCountries,
    required TResult Function(bool isTryAgain, String q) loadMore,
    required TResult Function(int id, String countryName) selectCountry,
  }) {
    return selectCountry(id, countryName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? q)? getCountries,
    TResult? Function(bool isTryAgain, String q)? loadMore,
    TResult? Function(int id, String countryName)? selectCountry,
  }) {
    return selectCountry?.call(id, countryName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? q)? getCountries,
    TResult Function(bool isTryAgain, String q)? loadMore,
    TResult Function(int id, String countryName)? selectCountry,
    required TResult orElse(),
  }) {
    if (selectCountry != null) {
      return selectCountry(id, countryName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCountries value) getCountries,
    required TResult Function(_LoadMore value) loadMore,
    required TResult Function(_SelectCountry value) selectCountry,
  }) {
    return selectCountry(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCountries value)? getCountries,
    TResult? Function(_LoadMore value)? loadMore,
    TResult? Function(_SelectCountry value)? selectCountry,
  }) {
    return selectCountry?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCountries value)? getCountries,
    TResult Function(_LoadMore value)? loadMore,
    TResult Function(_SelectCountry value)? selectCountry,
    required TResult orElse(),
  }) {
    if (selectCountry != null) {
      return selectCountry(this);
    }
    return orElse();
  }
}

abstract class _SelectCountry implements SignUpSelectCountryEvent {
  const factory _SelectCountry(
      {required final int id,
      required final String countryName}) = _$SelectCountryImpl;

  int get id;
  String get countryName;
  @JsonKey(ignore: true)
  _$$SelectCountryImplCopyWith<_$SelectCountryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SignUpSelectCountryState {
  int get countrySelectedId => throw _privateConstructorUsedError;
  String get countrySelectedName => throw _privateConstructorUsedError;
  bool get hasReachedEnd => throw _privateConstructorUsedError;
  bool get isLoadingMoreError => throw _privateConstructorUsedError;
  List<CountriesDataEntity> get countries => throw _privateConstructorUsedError;
  SignUpGetAllCountriesState get getAllCountriesState =>
      throw _privateConstructorUsedError;
  LoadingMore get loadingMore => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignUpSelectCountryStateCopyWith<SignUpSelectCountryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpSelectCountryStateCopyWith<$Res> {
  factory $SignUpSelectCountryStateCopyWith(SignUpSelectCountryState value,
          $Res Function(SignUpSelectCountryState) then) =
      _$SignUpSelectCountryStateCopyWithImpl<$Res, SignUpSelectCountryState>;
  @useResult
  $Res call(
      {int countrySelectedId,
      String countrySelectedName,
      bool hasReachedEnd,
      bool isLoadingMoreError,
      List<CountriesDataEntity> countries,
      SignUpGetAllCountriesState getAllCountriesState,
      LoadingMore loadingMore});

  $SignUpGetAllCountriesStateCopyWith<$Res> get getAllCountriesState;
  $LoadingMoreCopyWith<$Res> get loadingMore;
}

/// @nodoc
class _$SignUpSelectCountryStateCopyWithImpl<$Res,
        $Val extends SignUpSelectCountryState>
    implements $SignUpSelectCountryStateCopyWith<$Res> {
  _$SignUpSelectCountryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? countrySelectedId = null,
    Object? countrySelectedName = null,
    Object? hasReachedEnd = null,
    Object? isLoadingMoreError = null,
    Object? countries = null,
    Object? getAllCountriesState = null,
    Object? loadingMore = null,
  }) {
    return _then(_value.copyWith(
      countrySelectedId: null == countrySelectedId
          ? _value.countrySelectedId
          : countrySelectedId // ignore: cast_nullable_to_non_nullable
              as int,
      countrySelectedName: null == countrySelectedName
          ? _value.countrySelectedName
          : countrySelectedName // ignore: cast_nullable_to_non_nullable
              as String,
      hasReachedEnd: null == hasReachedEnd
          ? _value.hasReachedEnd
          : hasReachedEnd // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingMoreError: null == isLoadingMoreError
          ? _value.isLoadingMoreError
          : isLoadingMoreError // ignore: cast_nullable_to_non_nullable
              as bool,
      countries: null == countries
          ? _value.countries
          : countries // ignore: cast_nullable_to_non_nullable
              as List<CountriesDataEntity>,
      getAllCountriesState: null == getAllCountriesState
          ? _value.getAllCountriesState
          : getAllCountriesState // ignore: cast_nullable_to_non_nullable
              as SignUpGetAllCountriesState,
      loadingMore: null == loadingMore
          ? _value.loadingMore
          : loadingMore // ignore: cast_nullable_to_non_nullable
              as LoadingMore,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SignUpGetAllCountriesStateCopyWith<$Res> get getAllCountriesState {
    return $SignUpGetAllCountriesStateCopyWith<$Res>(
        _value.getAllCountriesState, (value) {
      return _then(_value.copyWith(getAllCountriesState: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LoadingMoreCopyWith<$Res> get loadingMore {
    return $LoadingMoreCopyWith<$Res>(_value.loadingMore, (value) {
      return _then(_value.copyWith(loadingMore: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SignUpSelectCountryStateImplCopyWith<$Res>
    implements $SignUpSelectCountryStateCopyWith<$Res> {
  factory _$$SignUpSelectCountryStateImplCopyWith(
          _$SignUpSelectCountryStateImpl value,
          $Res Function(_$SignUpSelectCountryStateImpl) then) =
      __$$SignUpSelectCountryStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int countrySelectedId,
      String countrySelectedName,
      bool hasReachedEnd,
      bool isLoadingMoreError,
      List<CountriesDataEntity> countries,
      SignUpGetAllCountriesState getAllCountriesState,
      LoadingMore loadingMore});

  @override
  $SignUpGetAllCountriesStateCopyWith<$Res> get getAllCountriesState;
  @override
  $LoadingMoreCopyWith<$Res> get loadingMore;
}

/// @nodoc
class __$$SignUpSelectCountryStateImplCopyWithImpl<$Res>
    extends _$SignUpSelectCountryStateCopyWithImpl<$Res,
        _$SignUpSelectCountryStateImpl>
    implements _$$SignUpSelectCountryStateImplCopyWith<$Res> {
  __$$SignUpSelectCountryStateImplCopyWithImpl(
      _$SignUpSelectCountryStateImpl _value,
      $Res Function(_$SignUpSelectCountryStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? countrySelectedId = null,
    Object? countrySelectedName = null,
    Object? hasReachedEnd = null,
    Object? isLoadingMoreError = null,
    Object? countries = null,
    Object? getAllCountriesState = null,
    Object? loadingMore = null,
  }) {
    return _then(_$SignUpSelectCountryStateImpl(
      countrySelectedId: null == countrySelectedId
          ? _value.countrySelectedId
          : countrySelectedId // ignore: cast_nullable_to_non_nullable
              as int,
      countrySelectedName: null == countrySelectedName
          ? _value.countrySelectedName
          : countrySelectedName // ignore: cast_nullable_to_non_nullable
              as String,
      hasReachedEnd: null == hasReachedEnd
          ? _value.hasReachedEnd
          : hasReachedEnd // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingMoreError: null == isLoadingMoreError
          ? _value.isLoadingMoreError
          : isLoadingMoreError // ignore: cast_nullable_to_non_nullable
              as bool,
      countries: null == countries
          ? _value._countries
          : countries // ignore: cast_nullable_to_non_nullable
              as List<CountriesDataEntity>,
      getAllCountriesState: null == getAllCountriesState
          ? _value.getAllCountriesState
          : getAllCountriesState // ignore: cast_nullable_to_non_nullable
              as SignUpGetAllCountriesState,
      loadingMore: null == loadingMore
          ? _value.loadingMore
          : loadingMore // ignore: cast_nullable_to_non_nullable
              as LoadingMore,
    ));
  }
}

/// @nodoc

class _$SignUpSelectCountryStateImpl implements _SignUpSelectCountryState {
  const _$SignUpSelectCountryStateImpl(
      {this.countrySelectedId = -1,
      this.countrySelectedName = '',
      this.hasReachedEnd = false,
      this.isLoadingMoreError = false,
      required final List<CountriesDataEntity> countries,
      required this.getAllCountriesState,
      this.loadingMore = const LoadingMore.loading()})
      : _countries = countries;

  @override
  @JsonKey()
  final int countrySelectedId;
  @override
  @JsonKey()
  final String countrySelectedName;
  @override
  @JsonKey()
  final bool hasReachedEnd;
  @override
  @JsonKey()
  final bool isLoadingMoreError;
  final List<CountriesDataEntity> _countries;
  @override
  List<CountriesDataEntity> get countries {
    if (_countries is EqualUnmodifiableListView) return _countries;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_countries);
  }

  @override
  final SignUpGetAllCountriesState getAllCountriesState;
  @override
  @JsonKey()
  final LoadingMore loadingMore;

  @override
  String toString() {
    return 'SignUpSelectCountryState(countrySelectedId: $countrySelectedId, countrySelectedName: $countrySelectedName, hasReachedEnd: $hasReachedEnd, isLoadingMoreError: $isLoadingMoreError, countries: $countries, getAllCountriesState: $getAllCountriesState, loadingMore: $loadingMore)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpSelectCountryStateImpl &&
            (identical(other.countrySelectedId, countrySelectedId) ||
                other.countrySelectedId == countrySelectedId) &&
            (identical(other.countrySelectedName, countrySelectedName) ||
                other.countrySelectedName == countrySelectedName) &&
            (identical(other.hasReachedEnd, hasReachedEnd) ||
                other.hasReachedEnd == hasReachedEnd) &&
            (identical(other.isLoadingMoreError, isLoadingMoreError) ||
                other.isLoadingMoreError == isLoadingMoreError) &&
            const DeepCollectionEquality()
                .equals(other._countries, _countries) &&
            (identical(other.getAllCountriesState, getAllCountriesState) ||
                other.getAllCountriesState == getAllCountriesState) &&
            (identical(other.loadingMore, loadingMore) ||
                other.loadingMore == loadingMore));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      countrySelectedId,
      countrySelectedName,
      hasReachedEnd,
      isLoadingMoreError,
      const DeepCollectionEquality().hash(_countries),
      getAllCountriesState,
      loadingMore);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpSelectCountryStateImplCopyWith<_$SignUpSelectCountryStateImpl>
      get copyWith => __$$SignUpSelectCountryStateImplCopyWithImpl<
          _$SignUpSelectCountryStateImpl>(this, _$identity);
}

abstract class _SignUpSelectCountryState implements SignUpSelectCountryState {
  const factory _SignUpSelectCountryState(
      {final int countrySelectedId,
      final String countrySelectedName,
      final bool hasReachedEnd,
      final bool isLoadingMoreError,
      required final List<CountriesDataEntity> countries,
      required final SignUpGetAllCountriesState getAllCountriesState,
      final LoadingMore loadingMore}) = _$SignUpSelectCountryStateImpl;

  @override
  int get countrySelectedId;
  @override
  String get countrySelectedName;
  @override
  bool get hasReachedEnd;
  @override
  bool get isLoadingMoreError;
  @override
  List<CountriesDataEntity> get countries;
  @override
  SignUpGetAllCountriesState get getAllCountriesState;
  @override
  LoadingMore get loadingMore;
  @override
  @JsonKey(ignore: true)
  _$$SignUpSelectCountryStateImplCopyWith<_$SignUpSelectCountryStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
