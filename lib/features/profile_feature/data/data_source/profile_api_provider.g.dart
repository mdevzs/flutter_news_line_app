// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_api_provider.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers

class _ProfileApiProvider implements ProfileApiProvider {
  _ProfileApiProvider(
    this._dio, {
    this.baseUrl,
  }) {
    baseUrl ??= 'http://192.168.0.103:3000';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<ProfileModel> profile(int profileId) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<ProfileModel>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/profile/${profileId}',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = ProfileModel.fromJson(_result.data!);
    return value;
  }

  @override
  Future<UserModel> editProfile(
    int profileId,
    String? fullName,
    String? username,
    String? bio,
    String? website, [
    File? file,
  ]) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final _data = FormData();
    if (fullName != null) {
      _data.fields.add(MapEntry(
        'fullName',
        fullName,
      ));
    }
    if (username != null) {
      _data.fields.add(MapEntry(
        'username',
        username,
      ));
    }
    if (bio != null) {
      _data.fields.add(MapEntry(
        'bio',
        bio,
      ));
    }
    if (website != null) {
      _data.fields.add(MapEntry(
        'website',
        website,
      ));
    }
    if (file != null) {
      _data.files.add(MapEntry(
        'profileImage',
        MultipartFile.fromFileSync(
          file.path,
          filename: file.path.split(Platform.pathSeparator).last,
        ),
      ));
    }
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<UserModel>(Options(
      method: 'PUT',
      headers: _headers,
      extra: _extra,
      contentType: 'multipart/form-data',
    )
            .compose(
              _dio.options,
              '/profile/${profileId}',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = UserModel.fromJson(_result.data!);
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }

  String _combineBaseUrls(
    String dioBaseUrl,
    String? baseUrl,
  ) {
    if (baseUrl == null || baseUrl.trim().isEmpty) {
      return dioBaseUrl;
    }

    final url = Uri.parse(baseUrl);

    if (url.isAbsolute) {
      return url.toString();
    }

    return Uri.parse(dioBaseUrl).resolveUri(url).toString();
  }
}
