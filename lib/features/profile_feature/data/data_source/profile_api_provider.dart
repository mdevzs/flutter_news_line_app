import 'dart:io';

import 'package:dio/dio.dart';
import 'package:news_line_app/features/auth_feature/data/models/user_model.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../core/utils/app_constants.dart';
import '../models/profile_model.dart';

part 'profile_api_provider.g.dart';

@RestApi(baseUrl: AppConstatns.BASE_URL)
abstract class ProfileApiProvider {
  factory ProfileApiProvider(Dio dio) = _ProfileApiProvider;

  @GET('/profile/{profileId}')
  Future<ProfileModel> profile(
    @Path('profileId') int profileId,
  );

  @MultiPart()
  @PUT('/profile/{profileId}')
  Future<UserModel> editProfile(
    @Path('profileId') int profileId,
    @Part(name: 'fullName') String? fullName,
    @Part(name: 'username') String? username,
    @Part(name: 'bio') String? bio,
    @Part(name: 'website') String? website, [
    @Part(name: 'profileImage') File? file,
  ]);
}
