import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_line_app/core/routes/names.dart';
import 'package:news_line_app/core/services/storage_service.dart';
import 'package:news_line_app/core/utils/injection.dart';
import 'package:news_line_app/features/auth_feature/presentation/pages/sign_up_create_prfile_page/bloc/sign_up_create_prfile_bloc.dart';
import 'package:news_line_app/features/auth_feature/presentation/pages/sign_up_create_prfile_page/sign_up_create_profile_page.dart';
import 'package:news_line_app/features/auth_feature/presentation/pages/sign_up_enable_notification_page/bloc/sign_up_enable_notification_bloc.dart';
import 'package:news_line_app/features/auth_feature/presentation/pages/sign_up_enable_notification_page/sign_up_enable_notification_page.dart';
import 'package:news_line_app/features/auth_feature/presentation/pages/sign_up_follow_official_author/bloc/sign_up_follow_official_author_bloc.dart';
import 'package:news_line_app/features/auth_feature/presentation/pages/sign_up_follow_official_author/sign_up_follow_official_author_page.dart';
import 'package:news_line_app/features/auth_feature/presentation/pages/sign_up_page/sign_up_page.dart';
import 'package:news_line_app/features/auth_feature/presentation/pages/sign_up_select_country_page/bloc/sign_up_select_country_bloc.dart';
import 'package:news_line_app/features/auth_feature/presentation/pages/sign_up_select_country_page/sign_up_select_country_page.dart';
import 'package:news_line_app/features/auth_feature/presentation/pages/sign_up_select_intrested_tag_page/sign_up_select_intrested_tag_page.dart';
import 'package:news_line_app/features/bookmark_feature/presentation/pages/bloc/bookmark_bloc.dart';
import 'package:news_line_app/features/bookmark_feature/presentation/pages/bookmark_page.dart';
import 'package:news_line_app/features/dashboard_feature/presentation/page/bloc/dashboard_bloc.dart';
import 'package:news_line_app/features/dashboard_feature/presentation/page/dashboard_page.dart';
import 'package:news_line_app/features/discover_feature/presentation/pages/discover_page/discover_page.dart';
import 'package:news_line_app/features/discover_feature/presentation/pages/search_page/bloc/search_bloc.dart';
import 'package:news_line_app/features/discover_feature/presentation/pages/search_page/search_page.dart';
import 'package:news_line_app/features/home_feature/presentation/pages/comments_page/comments_page.dart';
import 'package:news_line_app/features/home_feature/presentation/pages/news_detail_page/bloc/news_detail_bloc.dart';
import 'package:news_line_app/features/home_feature/presentation/pages/news_detail_page/news_detail_page.dart';
import 'package:news_line_app/features/home_feature/presentation/pages/recent_news_page/bloc/recent_news_bloc.dart';
import 'package:news_line_app/features/home_feature/presentation/pages/recent_news_page/recent_news_page.dart';
import 'package:news_line_app/features/home_feature/presentation/pages/trending_news_page/bloc/trending_news_bloc.dart';
import 'package:news_line_app/features/home_feature/presentation/pages/trending_news_page/trending_news_page.dart';
import 'package:news_line_app/features/profile_feature/presentation/pages/edit_profile_page/bloc/edit_profile_bloc.dart';
import 'package:news_line_app/features/profile_feature/presentation/pages/edit_profile_page/edit_profile_page.dart';
import '../../features/auth_feature/presentation/pages/auth_page/auth_page.dart';
import '../../features/auth_feature/presentation/pages/auth_page/bloc/auth_bloc.dart';
import '../../features/auth_feature/presentation/pages/sign_in_page/bloc/sign_in_bloc.dart';
import '../../features/auth_feature/presentation/pages/sign_in_page/sign_in_page.dart';
import '../../features/auth_feature/presentation/pages/sign_up_page/bloc/sign_up_bloc.dart';
import '../../features/auth_feature/presentation/pages/sign_up_select_intrested_tag_page/bloc/sign_up_select_intrested_tag_bloc.dart';
import '../../features/discover_feature/presentation/pages/discover_page/bloc/discover_bloc.dart';
import '../../features/home_feature/presentation/pages/comments_page/bloc/comments_bloc.dart';
import '../../features/home_feature/presentation/pages/home_page/bloc/home_bloc.dart';
import '../../features/home_feature/presentation/pages/home_page/home_page.dart';
import '../../features/on_boarding_feature/presentation/pages/on_boarding_page/bloc/on_boarding_bloc.dart';
import '../../features/on_boarding_feature/presentation/pages/on_boarding_page/on_boarding_page.dart';
import '../../features/profile_feature/presentation/pages/profile_page/bloc/profile_bloc.dart';
import '../../features/profile_feature/presentation/pages/profile_page/profile_page.dart';

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
          create: (context) => sl.get<SignInBloc>(),
        ),
      ),
      PageEntity(
        route: AppRoutes.SIGN_UP_ROUTE,
        page: const SignUpPage(),
        bloc: BlocProvider(
          create: (context) => SignUpBloc(),
        ),
      ),
      PageEntity(
        route: AppRoutes.SIGN_UP_Select_Country_ROUTE,
        page: const SignUpSelectCountryPage(),
        bloc: BlocProvider(
          create: (context) => sl.get<SignUpSelectCountryBloc>(),
        ),
      ),
      PageEntity(
        route: AppRoutes.SIGN_UP_Select_Intrested_Tag_ROUTE,
        page: const SignUpSelectIntrestedTagPage(),
        bloc: BlocProvider(
          create: (context) => sl.get<SignUpSelectIntrestedTagBloc>(),
        ),
      ),
      PageEntity(
        route: AppRoutes.SIGN_UP_Follow_Official_Author_ROUTE,
        page: const SignUpFollowOfficialAuthorPage(),
        bloc: BlocProvider(
          create: (context) => sl.get<SignUpFollowOfficialAuthorBloc>(),
        ),
      ),
      PageEntity(
        route: AppRoutes.SIGN_UP_Enable_Notification_ROUTE,
        page: const SignUpEnableNotificationPage(),
        bloc: BlocProvider(
          create: (context) => SignUpEnableNotificationBloc(),
        ),
      ),
      PageEntity(
        route: AppRoutes.SIGN_UP_Create_Profile_ROUTE,
        page: const SignUpCreateProfilePage(),
        bloc: BlocProvider(
          create: (context) => sl.get<SignUpCreatePrfileBloc>(),
        ),
      ),
      PageEntity(
        route: AppRoutes.Dashboard_ROUTE,
        page: const DashboardPage(),
        bloc: BlocProvider(
          create: (context) => DashboardBloc(),
        ),
      ),
      PageEntity(
        route: AppRoutes.Home_ROUTE,
        page: const HomePage(),
        bloc: BlocProvider(
          create: (context) => sl.get<HomeBloc>(),
        ),
      ),
      PageEntity(
        route: AppRoutes.Trending_News_ROUTE,
        page: const TrendingNewsPage(),
        bloc: BlocProvider(
          create: (context) => sl.get<TrendingNewsBloc>(),
        ),
      ),
      PageEntity(
        route: AppRoutes.Recent_News_ROUTE,
        page: const RecentNewsPage(),
        bloc: BlocProvider(
          create: (context) => sl.get<RecentNewsBloc>(),
        ),
      ),
      PageEntity(
        route: AppRoutes.News_Details_ROUTE,
        page: const NewsDetailPage(),
        bloc: BlocProvider(
          create: (context) => sl.get<NewsDetailBloc>(),
        ),
      ),
      PageEntity(
        route: AppRoutes.Comments_ROUTE,
        page: const CommentsPage(),
        bloc: BlocProvider(
          create: (context) => sl.get<CommentsBloc>(),
        ),
      ),
      PageEntity(
        route: AppRoutes.Discover_ROUTE,
        page: const DiscoverPage(),
        bloc: BlocProvider(
          create: (context) => sl.get<DiscoverBloc>(),
        ),
      ),
      PageEntity(
        route: AppRoutes.Search_ROUTE,
        page: const SearchPage(),
        bloc: BlocProvider(
          create: (context) => sl.get<SearchBloc>(),
        ),
      ),
      PageEntity(
        route: AppRoutes.Profile_ROUTE,
        page: const ProfilePage(),
        bloc: BlocProvider(
          create: (context) => sl.get<ProfileBloc>(),
        ),
      ),
      PageEntity(
        route: AppRoutes.Bookmark_ROUTE,
        page: const BookmarkPage(),
        bloc: BlocProvider(
          create: (context) => sl.get<BookmarkBloc>(),
        ),
      ),
      PageEntity(
        route: AppRoutes.Edit_Profile_ROUTE,
        page: const EditProfilePage(),
        bloc: BlocProvider(
          create: (context) => sl.get<EditProfileBloc>(),
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
    final currentPage = settings.name;
    final storage = sl.get<StorageService>();
    final isFirstTimeUseApp = storage.isFirstTimeAppUsed();
    final isAuthenticated = storage.userToken() != null ? true : false;

    if (isFirstTimeUseApp) {
      //debugPrint("it's first time to open the app");
      return MaterialPageRoute(builder: (context) => const OnBoardingPage());
    }
    if (isAuthenticated &&
        (currentPage == AppRoutes.Dashboard_ROUTE || page.isEmpty)) {
      //debugPrint('dashboard route called!');
      return MaterialPageRoute(builder: (context) => const DashboardPage());
    }
    if (page.isNotEmpty) {
      //debugPrint('route is not empty!');
      return MaterialPageRoute(
        builder: (context) => page.first.page,
        settings: settings,
      );
    }
    //debugPrint('openning the auth page!');
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
