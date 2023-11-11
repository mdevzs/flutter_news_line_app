//import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_line_app/config/app_colors.dart';
import 'package:news_line_app/core/routes/pages.dart';
import 'package:news_line_app/core/utils/injection.dart';
import 'package:sizer_pro/sizer.dart';

import 'core/widgets/show_snackbar.dart';
//import 'package:device_preview/device_preview.dart';

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
          providers: [...AppPages.allBlocProviders()],
          child: MaterialApp(
            //locale: DevicePreview.locale(context),
            //builder: DevicePreview.appBuilder,
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
            //home: const SignUpCreateProfilePage(),
          ),
        );
      },
    );
  }
}
