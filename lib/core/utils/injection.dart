import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
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
import 'package:news_line_app/features/home_feature/data/data_source/home_api_provider.dart';
import 'package:news_line_app/features/home_feature/data/repository/home_repository_impl.dart';
import 'package:news_line_app/features/home_feature/domain/repository/home_repository.dart';
import 'package:news_line_app/features/home_feature/domain/usecases/home_usecase.dart';
import 'package:news_line_app/features/home_feature/domain/usecases/recent_stories_usecase.dart';
import 'package:news_line_app/features/home_feature/domain/usecases/trending_news_usecase.dart';
import 'package:news_line_app/features/home_feature/presentation/pages/home_page/bloc/home_bloc.dart';
import 'package:news_line_app/features/home_feature/presentation/pages/recent_news_page/bloc/recent_news_bloc.dart';
import 'package:news_line_app/features/home_feature/presentation/pages/trending_news_page/bloc/trending_news_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../features/home_feature/domain/usecases/recent_stories_tags.dart';

final sl = GetIt.I;

Future<void> initDependencies() async {
  final dio = Dio(BaseOptions(
    connectTimeout: const Duration(seconds: 10),
    receiveTimeout: const Duration(seconds: 10),
  ));
  sl.registerSingleton<Dio>(dio);
  // api providers
  sl.registerSingleton<AuthApiProvider>(AuthApiProvider(sl()));
  sl.registerSingleton<HomeApiProvider>(HomeApiProvider(sl()));
  // repositories
  sl.registerSingleton<AuthRepository>(AuthRepositoryImpl(sl()));
  sl.registerSingleton<HomeRepository>(HomeRepositoryImpl(sl()));
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
  sl.registerSingleton<RecentStoriesTagsUseCase>(RecentStoriesTagsUseCase(sl()));
  sl.registerSingleton<RecentStoriesUsecase>(RecentStoriesUsecase(sl()));
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
  sl.registerSingleton<RecentNewsBloc>(RecentNewsBloc(sl(),sl()));
  // other
  await _initSharedPrefs();
  sl.registerSingleton<StorageService>(StorageServiceImpl(prefs: sl()));
  dio.interceptors.add(TokenInterceptor(sl()));
}

Future<void> _initSharedPrefs() async {
  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  sl.registerSingleton<SharedPreferences>(sharedPreferences);
}
