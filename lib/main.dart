import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_line_app/config/app_colors.dart';
import 'package:news_line_app/core/utils/injection.dart';
import 'package:news_line_app/features/bookmark_feature/presentation/pages/cubit/toggle_collection_item_cubit.dart';
import 'package:news_line_app/features/create_story_feature/presentation/pages/preview_story_page/preview_story_page.dart';
import 'package:news_line_app/features/create_story_feature/presentation/pages/publish_story_page/add_tag_cubit/add_tag_cubit.dart';
import 'package:news_line_app/features/discover_feature/presentation/pages/search_page/cubit/search_text_cubit.dart';
import 'package:news_line_app/features/discover_feature/presentation/pages/search_page/cubit/toggle_section_cubit.dart';
import 'package:news_line_app/features/home_feature/presentation/pages/comments_page/comment_page_cubit/comment_page_cubit.dart';
import 'package:sizer_pro/sizer.dart';

import 'core/routes/pages.dart';
import 'core/widgets/show_snackbar.dart';
import 'features/create_story_feature/presentation/pages/write_story_page/write_story_page.dart';
// import 'package:device_preview/device_preview.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initDependencies();
  runApp(const MyApp());
  // runApp(DevicePreview(
  //   builder: (context) => const MyApp(),
  // ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MultiBlocProvider(
          providers: [
            ...AppPages.allBlocProviders(),
            BlocProvider(
              create: (context) => CommentPageCubit(),
            ),
            BlocProvider(
              create: (context) => ToggleSectionCubit(),
            ),
            BlocProvider(
              create: (context) => SearchTextCubit(),
            ),
            BlocProvider(
              create: (context) => ToggleCollectionItemCubit(),
            ),
            BlocProvider(
              create: (context) => AddTagCubit(),
            ),
          ],
          child: MaterialApp(
            // locale: DevicePreview.locale(context),
            // builder: DevicePreview.appBuilder,
            scaffoldMessengerKey: globalScaffoldKey,
            debugShowCheckedModeBanner: false,
            title: 'NewsLine',
            theme: ThemeData(
              fontFamily: 'Manrope',
              colorScheme:
                  ColorScheme.fromSeed(seedColor: AppColors.primaryColor),
              useMaterial3: true,
            ),
            onGenerateRoute: AppPages.generateRouteSettings,
            //home: const WriteStoryPage(),
          ),
        );
      },
    );
  }
}
