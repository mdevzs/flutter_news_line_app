import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_line_app/core/routes/names.dart';
import 'package:news_line_app/core/widgets/widgets.dart';
import 'package:news_line_app/features/home_feature/presentation/pages/home_page/bloc/home_bloc.dart';
import 'package:news_line_app/features/home_feature/presentation/widgets/home_widgets.dart';
import 'package:sizer_pro/sizer.dart';

import '../../../../../core/utils/gaps.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(builder: (context, state) {
      return SizedBox(
        child: state.homeStatus.when(
          initial: () {
            context.read<HomeBloc>().add(const HomeEvent.getHome());
            Future.delayed(const Duration(seconds: 5), () {
              context
                  .read<HomeBloc>()
                  .add(const HomeEvent.getRecentStories('all'));
            });
            return null;
          },
          loading: () {
            debugPrint('home loading sate');
            return const Center(child: CircularProgressIndicator());
          },
          success: (home) {
            //debugPrint(home.user.fullName);
            //debugPrint(home.tags.toString());
            return Padding(
              padding: EdgeInsets.only(top: 4.sp),
              child: Scaffold(
                appBar: homeAppBar(
                  image: home.user.profileImage,
                  fullName: home.user.fullName,
                ),
                body: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.sp),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        trendingNewsSectionHomePage(
                          context: context,
                          trendingNews: home.trendingNews ?? [],
                          onItemPressed: (newsId) {
                            Navigator.of(context).pushNamed(
                              AppRoutes.News_Details_ROUTE,
                              arguments: {
                                'newsId': '$newsId',
                              },
                            );
                          },
                        ),
                        gapH12,
                        recentStoriesSection(
                          context: context,
                          entity: home,
                          recentStState: state.recentStoriesStatus,
                          selectedTagId: state.selectedTagId,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
          error: (message) {
            debugPrint(message);
            return errorWidget(
              errorMessage: message,
              onTryAgainPressed: () {
                context.read<HomeBloc>().add(const HomeEvent.getHome());
              },
            );
          },
        ),
      );
    });
  }
}
