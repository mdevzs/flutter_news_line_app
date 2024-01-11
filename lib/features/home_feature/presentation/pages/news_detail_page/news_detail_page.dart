import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_line_app/core/widgets/widgets.dart';
import 'package:news_line_app/features/home_feature/presentation/pages/news_detail_page/bloc/news_detail_bloc.dart';
import 'package:news_line_app/features/home_feature/presentation/widgets/news_detail_widgets.dart';
import 'package:sizer_pro/sizer.dart';

class NewsDetailPage extends StatefulWidget {
  final int newsId;
  const NewsDetailPage({
    super.key,
    this.newsId = -1,
  });

  @override
  State<NewsDetailPage> createState() => _NewsDetailPageState();
}

class _NewsDetailPageState extends State<NewsDetailPage> {
  String newsId = '-1';
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      final args =
          ModalRoute.of(context)?.settings.arguments as Map<String, String>;
      debugPrint(args['newsId']);
      newsId = args['newsId']!;
      context.read<NewsDetailBloc>().add(
            NewsDetailEvent.getNewsById(
              newsId,
            ),
          );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: newsDetailPageAppbar(context),
      body: BlocBuilder<NewsDetailBloc, NewsDetailState>(
        builder: (context, state) {
          return SingleChildScrollView(
            child: SizedBox(
              child: state.newsDetailsStatus.when(
                loading: () {
                  return SizedBox(
                    width: 100.h,
                    height: 100.h,
                    child: const Center(
                      child: CircularProgressIndicator(),
                    ),
                  );
                },
                success: (newsDetails) {
                  debugPrint(
                      'profile image is:${newsDetails.creator.profileImage}');
                  return NewsDetailsPageBody(
                    newsDetailsEntity: newsDetails,
                  );
                },
                error: (message) {
                  return SizedBox(
                    width: 100.h,
                    height: 100.h,
                    child: Center(
                      child: errorWidget(
                        errorMessage: message,
                        onTryAgainPressed: () {
                          context.read<NewsDetailBloc>().add(
                                NewsDetailEvent.getNewsById(
                                  newsId,
                                ),
                              );
                        },
                      ),
                    ),
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
