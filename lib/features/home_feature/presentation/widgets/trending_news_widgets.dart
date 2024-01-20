import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_line_app/core/routes/names.dart';
import 'package:news_line_app/core/widgets/widgets.dart';
import 'package:news_line_app/features/home_feature/presentation/pages/trending_news_page/bloc/trending_news_bloc.dart';
import 'package:news_line_app/features/home_feature/presentation/widgets/home_widgets.dart';
import 'package:sizer_pro/sizer.dart';

PreferredSizeWidget trReNewsPageAppBar(BuildContext context, String title) {
  return AppBar(
    title: customText(
      title,
      fontSize: 10,
      fontWeight: FontWeight.bold,
    ),
    centerTitle: true,
    actions: [
      GestureDetector(
        onTap: () {
          Navigator.of(context).pushNamed(AppRoutes.Search_ROUTE);
        },
        child: Padding(
          padding: EdgeInsets.all(4.sp),
          child: Image.asset(
            'assets/icons/search.png',
            width: 11.sp,
          ),
        ),
      )
    ],
  );
}

Widget trendingNewsListSection(
  BuildContext context, {
  required TrendingNewsState state,
  required Function(int newsId) onItemPressed,
}) {
  return state.trendingNewsStatus.when(
    loading: () {
      return const Center(child: CircularProgressIndicator());
    },
    success: () {
      return ListView.builder(
        controller: context.read<TrendingNewsBloc>().scrollController,
        itemCount: state.hasReachedEnd
            ? state.trendingNews.length
            : state.trendingNews.length + 1,
        itemBuilder: (context, index) {
          if (index >= state.trendingNews.length) {
            return state.loadMoreStatus.when(
              loading: () {
                debugPrint('loadin more');
                return Padding(
                  padding: EdgeInsets.symmetric(vertical: 4.sp),
                  child: const Center(child: CircularProgressIndicator()),
                );
              },
              error: (message) {
                debugPrint('loadin more error');
                return Padding(
                  padding: EdgeInsets.all(4.sp),
                  child: errorWidget(
                    errorMessage: message,
                    onTryAgainPressed: () {
                      context.read<TrendingNewsBloc>().add(
                            const TrendingNewsEvent.loadMore(
                                loadingMoreTryAgain: true),
                          );
                    },
                  ),
                );
              },
            );
          } else {
            return GestureDetector(
              onTap: onItemPressed(state.trendingNews[index].id),
              child: Padding(
                padding: EdgeInsets.all(4.sp),
                child: RecentStoriesListItem(
                  recentSt: state.trendingNews[index],
                ),
              ),
            );
          }
        },
      );
    },
    erro: (message) {
      return errorWidget(
        errorMessage: message,
        onTryAgainPressed: () {
          context.read<TrendingNewsBloc>().add(
                const TrendingNewsEvent.getAllTrendingNews(),
              );
        },
      );
    },
  );
}
