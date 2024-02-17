import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:news_line_app/core/data/local/app_db.dart';
import 'package:news_line_app/core/services/storage_service.dart';
import 'package:news_line_app/core/utils/token_interceptor.dart';
import 'package:news_line_app/features/auth_feature/data/data_source/remote/auth_api_provider.dart';
import 'package:news_line_app/features/auth_feature/data/repository/auth_repository_impl.dart';
import 'package:news_line_app/features/auth_feature/domain/repository/auth_repository.dart';
import 'package:news_line_app/features/auth_feature/domain/usecases/sign_in_usecase.dart';
import 'package:news_line_app/features/auth_feature/domain/usecases/sign_up/sign_up_create_profile_usecase.dart';
import 'package:news_line_app/features/auth_feature/domain/usecases/sign_up/sign_up_follow_official_author_usecase.dart';
import 'package:news_line_app/features/auth_feature/domain/usecases/sign_up/sign_up_select_country_usecase.dart';
import 'package:news_line_app/features/auth_feature/domain/usecases/sign_up/sign_up_select_intrested_tag_usecase.dart';
import 'package:news_line_app/features/auth_feature/presentation/pages/sign_in_page/bloc/sign_in_bloc.dart';
import 'package:news_line_app/features/auth_feature/presentation/pages/sign_up_create_prfile_page/bloc/sign_up_create_prfile_bloc.dart';
import 'package:news_line_app/features/auth_feature/presentation/pages/sign_up_follow_official_author/bloc/sign_up_follow_official_author_bloc.dart';
import 'package:news_line_app/features/auth_feature/presentation/pages/sign_up_select_country_page/bloc/sign_up_select_country_bloc.dart';
import 'package:news_line_app/features/auth_feature/presentation/pages/sign_up_select_intrested_tag_page/bloc/sign_up_select_intrested_tag_bloc.dart';
import 'package:news_line_app/features/bookmark_feature/data/repository/bookmark_repository_impl.dart';
import 'package:news_line_app/features/bookmark_feature/domain/repository/bookmark_repository.dart';
import 'package:news_line_app/features/bookmark_feature/domain/usecases/add_new_collection_usecase.dart';
import 'package:news_line_app/features/bookmark_feature/domain/usecases/add_news_to_collection_usecase.dart';
import 'package:news_line_app/features/bookmark_feature/domain/usecases/get_all_collections_usecase.dart';
import 'package:news_line_app/features/bookmark_feature/domain/usecases/get_all_news_of_collection.dart';
import 'package:news_line_app/features/bookmark_feature/domain/usecases/remove_news_from_collection.dart';
import 'package:news_line_app/features/bookmark_feature/presentation/pages/bloc/bookmark_bloc.dart';
import 'package:news_line_app/features/discover_feature/data/data_source/discover_api_provider.dart';
import 'package:news_line_app/features/discover_feature/data/repository/discover_repository_impl.dart';
import 'package:news_line_app/features/discover_feature/domain/repository/discover_repository.dart';
import 'package:news_line_app/features/discover_feature/domain/usecases/discover_search_usecase.dart';
import 'package:news_line_app/features/discover_feature/domain/usecases/discover_usecase.dart';
import 'package:news_line_app/features/discover_feature/presentation/pages/search_page/bloc/search_bloc.dart';
import 'package:news_line_app/features/home_feature/data/data_source/home_api_provider.dart';
import 'package:news_line_app/features/home_feature/data/repository/home_repository_impl.dart';
import 'package:news_line_app/features/home_feature/domain/repository/home_repository.dart';
import 'package:news_line_app/features/home_feature/domain/usecases/add_comment_usecase.dart';
import 'package:news_line_app/features/home_feature/domain/usecases/home_usecase.dart';
import 'package:news_line_app/features/home_feature/domain/usecases/like_comment_usecase.dart';
import 'package:news_line_app/features/home_feature/domain/usecases/news_comments_usecase.dart';
import 'package:news_line_app/features/home_feature/domain/usecases/news_details_usecase.dart';
import 'package:news_line_app/features/home_feature/domain/usecases/recent_stories_usecase.dart';
import 'package:news_line_app/features/home_feature/domain/usecases/trending_news_usecase.dart';
import 'package:news_line_app/features/home_feature/presentation/pages/comments_page/bloc/comments_bloc.dart';
import 'package:news_line_app/features/home_feature/presentation/pages/home_page/bloc/home_bloc.dart';
import 'package:news_line_app/features/home_feature/presentation/pages/news_detail_page/bloc/news_detail_bloc.dart';
import 'package:news_line_app/features/home_feature/presentation/pages/recent_news_page/bloc/recent_news_bloc.dart';
import 'package:news_line_app/features/home_feature/presentation/pages/trending_news_page/bloc/trending_news_bloc.dart';
import 'package:news_line_app/features/profile_feature/data/data_source/profile_api_provider.dart';
import 'package:news_line_app/features/profile_feature/data/repository/profile_repository_impl.dart';
import 'package:news_line_app/features/profile_feature/domain/repository/profile_repository.dart';
import 'package:news_line_app/features/profile_feature/domain/usecases/edit_profile_usecase.dart';
import 'package:news_line_app/features/profile_feature/presentation/pages/edit_profile_page/bloc/edit_profile_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../features/discover_feature/domain/usecases/follow_author_usercase.dart';
import '../../features/discover_feature/presentation/pages/discover_page/bloc/discover_bloc.dart';
import '../../features/home_feature/domain/usecases/recent_stories_tags_usecase.dart';
import '../../features/profile_feature/domain/usecases/profile_usecase.dart';
import '../../features/profile_feature/presentation/pages/profile_page/bloc/profile_bloc.dart';

final sl = GetIt.I;

Future<void> initDependencies() async {
  final dio = Dio(BaseOptions(
    connectTimeout: const Duration(seconds: 10),
    receiveTimeout: const Duration(seconds: 10),
  ));
  sl.registerSingleton<Dio>(dio);

  //localdb
  sl.registerSingleton<AppDb>(await AppDb.create());

  // api providers
  sl.registerSingleton<AuthApiProvider>(AuthApiProvider(sl()));
  sl.registerSingleton<HomeApiProvider>(HomeApiProvider(sl()));
  sl.registerSingleton<DiscoverApiProvider>(DiscoverApiProvider(sl()));
  sl.registerSingleton<ProfileApiProvider>(ProfileApiProvider(sl()));
  // repositories
  sl.registerSingleton<AuthRepository>(AuthRepositoryImpl(sl()));
  sl.registerSingleton<HomeRepository>(HomeRepositoryImpl(sl()));
  sl.registerSingleton<DiscoverRepository>(DiscoverRepositoryImpl(sl()));
  sl.registerSingleton<BookmarkRepository>(BookmarkRepositoryImpl(sl()));
  sl.registerSingleton<ProfileRepository>(ProfileRepositoryImpl(sl()));
  // usecases
  sl.registerSingleton<SignInUsecase>(SignInUsecase(sl()));
  sl.registerSingleton<SignUpSelectCountryUsecase>(
      SignUpSelectCountryUsecase(sl()));
  sl.registerSingleton<SignUpSelectIntrestedTagUseCase>(
      SignUpSelectIntrestedTagUseCase(sl()));
  sl.registerSingleton<SignUpFollowOfficialAuthorUseCase>(
      SignUpFollowOfficialAuthorUseCase(sl()));
  sl.registerSingleton<SignUpCreateProfileUseCase>(
      SignUpCreateProfileUseCase(sl()));
  sl.registerSingleton<HomeUsecase>(HomeUsecase(sl()));
  sl.registerSingleton<TrendingUsecase>(TrendingUsecase(sl()));
  sl.registerSingleton<RecentStoriesTagsUseCase>(
      RecentStoriesTagsUseCase(sl()));
  sl.registerSingleton<RecentStoriesUsecase>(RecentStoriesUsecase(sl()));
  sl.registerSingleton<NewsDetailsUsecase>(NewsDetailsUsecase(sl()));
  sl.registerSingleton<NewsCommentsUsecase>(NewsCommentsUsecase(sl()));
  sl.registerSingleton<AddCommentUsecase>(AddCommentUsecase(sl()));
  sl.registerSingleton<LikeCommentUsecase>(LikeCommentUsecase(sl()));
  sl.registerSingleton<DiscoverUsecase>(DiscoverUsecase(sl()));
  sl.registerSingleton<FollowAuthorUsecase>(FollowAuthorUsecase(sl()));
  sl.registerSingleton<DiscoverSearchUsecase>(DiscoverSearchUsecase(sl()));
  sl.registerSingleton<ProfileUsecase>(ProfileUsecase(sl()));
  sl.registerSingleton<AddNewCollectionUsecase>(AddNewCollectionUsecase(sl()));
  sl.registerSingleton<GetAllCollectionsUsecase>(
      GetAllCollectionsUsecase(sl()));
  sl.registerSingleton<AddNewsToCollectionUsecase>(
      AddNewsToCollectionUsecase(sl()));
  sl.registerSingleton<GetAllNewsOfCollectionUsecase>(
      GetAllNewsOfCollectionUsecase(sl()));
  sl.registerSingleton<RemoveNewsFromCollectionUsecase>(
      RemoveNewsFromCollectionUsecase(sl()));
  sl.registerSingleton<EditProfileUsecase>(EditProfileUsecase(sl()));

  // blocs
  sl.registerSingleton<SignInBloc>(SignInBloc(sl()));
  sl.registerSingleton<SignUpSelectCountryBloc>(SignUpSelectCountryBloc(sl()));
  sl.registerSingleton<SignUpSelectIntrestedTagBloc>(
      SignUpSelectIntrestedTagBloc(sl()));
  sl.registerSingleton<SignUpFollowOfficialAuthorBloc>(
      SignUpFollowOfficialAuthorBloc(sl()));
  sl.registerSingleton<SignUpCreatePrfileBloc>(SignUpCreatePrfileBloc(sl()));
  sl.registerSingleton<HomeBloc>(HomeBloc(sl(), sl()));
  sl.registerSingleton<TrendingNewsBloc>(TrendingNewsBloc(sl()));
  sl.registerSingleton<RecentNewsBloc>(RecentNewsBloc(sl(), sl()));
  sl.registerSingleton<NewsDetailBloc>(NewsDetailBloc(sl()));
  sl.registerSingleton<CommentsBloc>(CommentsBloc(sl(), sl(), sl()));
  sl.registerSingleton<DiscoverBloc>(DiscoverBloc(sl(), sl()));
  sl.registerSingleton<SearchBloc>(SearchBloc(sl()));
  sl.registerSingleton<ProfileBloc>(ProfileBloc(sl()));
  sl.registerSingleton<BookmarkBloc>(
      BookmarkBloc(sl(), sl(), sl(), sl(), sl()));
  sl.registerSingleton<EditProfileBloc>(EditProfileBloc(sl()));

  // other
  await _initSharedPrefs();
  sl.registerSingleton<StorageService>(StorageServiceImpl(prefs: sl()));
  dio.interceptors.add(TokenInterceptor(sl()));
}

Future<void> _initSharedPrefs() async {
  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  sl.registerSingleton<SharedPreferences>(sharedPreferences);
}
