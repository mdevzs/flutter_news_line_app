import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_line_app/core/routes/names.dart';
import 'package:news_line_app/core/services/storage_service.dart';
import 'package:news_line_app/core/utils/injection.dart';
import '../../features/auth_feature/presentation/pages/auth_page/auth_page.dart';
import '../../features/auth_feature/presentation/pages/auth_page/bloc/auth_bloc.dart';
import '../../features/auth_feature/presentation/pages/sign_in_page/bloc/sign_in_bloc.dart';
import '../../features/auth_feature/presentation/pages/sign_in_page/sign_in_page.dart';
import '../../features/on_boarding_feature/presentation/pages/on_boarding_page/bloc/on_boarding_bloc.dart';
import '../../features/on_boarding_feature/presentation/pages/on_boarding_page/on_boarding_page.dart';

class AppPages {
  static List<PageEntity> routes() {
    return [
      PageEntity(
        route: AppRoutes.INITIAL,
        page: const OnBoardingPage(),
        bloc: BlocProvider(
          create: (context) => OnBoardingBloc(),
        ),
      ),
      PageEntity(
        route: AppRoutes.AUTH_ROUTE,
        page: const AuthPage(),
        bloc: BlocProvider(
          create: (context) => AuthBloc(),
        ),
      ),
      PageEntity(
        route: AppRoutes.SIGN_IN_ROUTE,
        page: const SignInPage(),
        bloc: BlocProvider(
          create: (context) => SignInBloc(),
        ),
      ),
    ];
  }

  static List allBlocProviders() {
    final blocs = [];
    routes().forEach((e) {
      blocs.add(e.bloc);
    });
    return blocs;
  }

  static MaterialPageRoute generateRouteSettings(RouteSettings settings) {
    final page = routes().where(
      (p) => p.route == settings.name,
    );
    final isFirstTimeUseApp = sl.get<StorageService>().isFirstTimeAppUsed();
    if(isFirstTimeUseApp){
      return MaterialPageRoute(builder: (context) => const OnBoardingPage());
    }  
    if (page.isNotEmpty) {
      return MaterialPageRoute(builder: (context) => page.first.page);
    }  
    return MaterialPageRoute(builder: (context) => const AuthPage());
  }
}

class PageEntity {
  String route;
  Widget page;
  dynamic bloc;
  PageEntity({
    required this.route,
    required this.page,
    this.bloc,
  });
}
