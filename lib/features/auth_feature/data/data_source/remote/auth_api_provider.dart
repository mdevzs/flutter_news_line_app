import 'dart:io';

import 'package:dio/dio.dart';
import 'package:news_line_app/core/utils/app_constants.dart';
import 'package:news_line_app/features/auth_feature/data/models/countries_model.dart';
import 'package:news_line_app/features/auth_feature/data/models/tags_model.dart';
import 'package:news_line_app/features/auth_feature/data/models/user_model.dart';
import 'package:retrofit/retrofit.dart';

part 'auth_api_provider.g.dart';

@RestApi(baseUrl: AppConstatns.BASE_URL)
abstract class AuthApiProvider {
  factory AuthApiProvider(Dio dio) = _AuthApiProvider;

  @POST('/auth/signin')
  Future<UserModel> signIn(
    @Body() Map<String, dynamic> body,
    @CancelRequest() CancelToken? cancelToken,
  );

  @GET('/public/countries')
  Future<CountriesModel> getAllCountries(
    @Query('page') String? page,
    @Query('perPage') String? perPage,
    @Query('q') String? q,
  );

  @GET('/public/tags')
  Future<List<TagsModel>> getAllTags();

  @GET('/public/official-authors')
  Future<List<UserModel>> getAllOfficialAuthors();

  @MultiPart()
  @POST('/auth/signup/author')
  Future<UserModel> signUp(
    @Part(name: 'email') String email,
    @Part(name: 'password') String password,
    @Part(name: 'fullName') String fullName,
    @Part(name: 'country') String country,
    @Part(name: 'username') String username,
    @Part(name: 'dateOfBirth') String dateOfBirth,
    @Part(name: 'gender') String gender,
    @Part(name: 'phone') String phone,
    @Part(name: 'bio') String? bio, [
    @Part(name: 'profileImage') File? file,
    @Part(name: 'intrestedTags[]') List<String>? intrestedTags,
    @Part(name: 'following[]') List<String>? following,
  ]);
}
