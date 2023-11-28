import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_line_app/core/widgets/widgets.dart';
import 'package:news_line_app/features/home_feature/presentation/pages/recent_news_page/bloc/recent_news_bloc.dart';
import 'package:news_line_app/features/home_feature/presentation/widgets/home_widgets.dart';
import 'package:news_line_app/features/home_feature/presentation/widgets/recent_news_widgets.dart';
import 'package:news_line_app/features/home_feature/presentation/widgets/trending_news_widgets.dart';
import 'package:sizer_pro/sizer.dart';

class RecentNewsPage extends StatefulWidget {
  const RecentNewsPage({super.key});

  @override
  State<RecentNewsPage> createState() => _RecentNewsPageState();
}

class _RecentNewsPageState extends State<RecentNewsPage> {
  //late RecentNewsBloc _recentNewsBloc;
  @override
  void initState() {
    super.initState();
    //_recentNewsBloc = context.read<RecentNewsBloc>();
    context.read<RecentNewsBloc>().add(
          const RecentNewsEvent.getAllTags(),
        );
    context.read<RecentNewsBloc>().add(
          const RecentNewsEvent.getAllRecentNews(),
        );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: trReNewsPageAppBar('Recent Stories'),
      body: Padding(
        padding: EdgeInsets.all(4.sp),
        child: BlocBuilder<RecentNewsBloc, RecentNewsState>(
          builder: (context, state) {
            return Column(
              children: [
                tagsSection(context, state: state),
                Expanded(
                  child: SizedBox(
                    child: state.recentNewsStatus.when(
                      loading: () {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      },
                      success: () {
                        return Padding(
                          padding: EdgeInsets.only(top: 6.0.sp),
                          child: ListView.builder(
                            controller:
                                context.read<RecentNewsBloc>().scrollController,
                            itemCount: state.hasNewsReachedEnd
                                ? state.recentNews.length
                                : state.recentNews.length + 1,
                            itemBuilder: (context, index) {
                              if (index >= state.recentNews.length) {
                                return state.recentLoadingMoreStatus.when(
                                  loading: () {
                                    return Padding(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 4.sp),
                                      child: const Center(
                                          child: CircularProgressIndicator()),
                                    );
                                  },
                                  error: (message) {
                                    return Padding(
                                      padding: EdgeInsets.all(4.sp),
                                      child: errorWidget(
                                        errorMessage: message,
                                        onTryAgainPressed: () {
                                          context.read<RecentNewsBloc>().add(
                                                const RecentNewsEvent
                                                    .loadMoreNews(
                                                  loadingMoreTryAgin: true,
                                                ),
                                              );
                                        },
                                      ),
                                    );
                                  },
                                );
                              } else {
                                return Padding(
                                  padding: EdgeInsets.only(top: 4.sp),
                                  child: recentStoriesListItem(
                                    state.recentNews[index],
                                  ),
                                );
                              }
                            },
                          ),
                        );
                      },
                      error: (message) {
                        return Center(
                          child: errorWidget(
                            errorMessage: message,
                            onTryAgainPressed: () {
                              context.read<RecentNewsBloc>().add(
                                    RecentNewsEvent.getAllRecentNews(
                                      tag: context
                                          .read<RecentNewsBloc>()
                                          .tagName,
                                    ),
                                  );
                            },
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
