import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:news_line_app/core/services/storage_service.dart';
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
import 'package:shared_preferences/shared_preferences.dart';

final sl = GetIt.I;

Future<void> initDependencies() async {
  sl.registerSingleton<Dio>(Dio(BaseOptions(
    connectTimeout: const Duration(seconds: 10),
    receiveTimeout: const Duration(seconds: 10),
  )));
  // api providers
  sl.registerSingleton<AuthApiProvider>(AuthApiProvider(sl()));
  // repositories
  sl.registerSingleton<AuthRepository>(AuthRepositoryImpl(sl()));
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
  // blocs
  sl.registerSingleton<SignInBloc>(SignInBloc(sl()));
  sl.registerSingleton<SignUpSelectCountryBloc>(SignUpSelectCountryBloc(sl()));
  sl.registerSingleton<SignUpSelectIntrestedTagBloc>(SignUpSelectIntrestedTagBloc(sl()));
  sl.registerSingleton<SignUpFollowOfficialAuthorBloc>(SignUpFollowOfficialAuthorBloc(sl()));
  sl.registerSingleton<SignUpCreatePrfileBloc>(SignUpCreatePrfileBloc(sl()));
  // other
  await _initSharedPrefs();
  sl.registerSingleton<StorageService>(StorageServiceImpl(prefs: sl()));
}

Future<void> _initSharedPrefs() async {
  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  sl.registerSingleton<SharedPreferences>(sharedPreferences);
}
