import 'package:dio/dio.dart';
import 'package:news_line_app/features/home_feature/data/models/home_model/home_model.dart';
import 'package:news_line_app/features/home_feature/data/models/home_model/recent_news_model.dart';
import 'package:news_line_app/features/home_feature/data/models/home_model/trending_news_model.dart';
import 'package:retrofit/retrofit.dart';
import '../../../../core/utils/app_constants.dart';

part 'home_api_provider.g.dart';

@RestApi(baseUrl: AppConstatns.BASE_URL)
abstract class HomeApiProvider {
  factory HomeApiProvider(Dio dio) = _HomeApiProvider;

  @GET('/home')
  Future<HomeModel> home();

  @POST('/news/recent')
  Future<RecentNewsModel> recentStories(
    @Body() Map<String,String> body,
    @Query('page') String? page,
    @Query('perPage') String? perPage,
  );

  @GET('/news/all-trending-news')
  Future<TrendingNewsModel> trendingNews(
    @Query('page') String? page,
    @Query('perPage') String? perPage,
  );
}
