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
}
