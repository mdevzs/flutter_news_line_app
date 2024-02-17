import 'package:dio/dio.dart';
import 'package:news_line_app/features/discover_feature/data/models/discover_model.dart';
import 'package:news_line_app/features/discover_feature/data/models/discover_search_model.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../core/utils/app_constants.dart';

part 'discover_api_provider.g.dart';

@RestApi(baseUrl: AppConstatns.BASE_URL)
abstract class DiscoverApiProvider {
  factory DiscoverApiProvider(Dio dio) = _DiscoverApiProvider;

  @GET('/discover')
  Future<DiscoverModel> discover();

  @GET('/auth/follow/{followingId}')
  Future<void> followAuthor(
    @Path('followingId') String followingId,
  );

  @GET('/discover')
  Future<DiscoverSearchModel> search(
    @Query('search') String s,
  );
}
