import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:news_line_app/core/services/storage_service.dart';
import 'package:news_line_app/features/auth_feature/data/data_source/remote/auth_api_provider.dart';
import 'package:news_line_app/features/auth_feature/data/repository/auth_repository_impl.dart';
import 'package:news_line_app/features/auth_feature/domain/repository/auth_repository.dart';
import 'package:news_line_app/features/auth_feature/domain/usecases/sign_in_usecase.dart';
import 'package:news_line_app/features/auth_feature/domain/usecases/sign_up/sign_up_usecase.dart';
import 'package:news_line_app/features/auth_feature/presentation/pages/sign_in_page/bloc/sign_in_bloc.dart';
import 'package:news_line_app/features/auth_feature/presentation/pages/sign_up_select_country_page/bloc/sign_up_select_country_bloc.dart';
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
  sl.registerSingleton<SignUpUsecase>(SignUpUsecase(sl()));
  // blocs
  sl.registerSingleton<SignInBloc>(SignInBloc(sl()));
  sl.registerSingleton<SignUpSelectCountryBloc>(SignUpSelectCountryBloc(sl()));
  // other
  await _initSharedPrefs();
  sl.registerSingleton<StorageService>(StorageServiceImpl(prefs: sl()));
}

Future<void> _initSharedPrefs() async {
  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  sl.registerSingleton<SharedPreferences>(sharedPreferences);
}
