import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_line_app/features/home_feature/presentation/pages/trending_news_page/bloc/trending_news_bloc.dart';

import '../../widgets/trending_news_widgets.dart';

class TrendingNewsPage extends StatelessWidget {
  const TrendingNewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    context
        .read<TrendingNewsBloc>()
        .add(const TrendingNewsEvent.getAllTrendingNews());
    return Scaffold(
      appBar: trReNewsPageAppBar(context, 'Trending'),
      body: BlocBuilder<TrendingNewsBloc, TrendingNewsState>(
        builder: (context, state) {
          return trendingNewsListSection(context,
              state: state, onItemPressed: (newsId) {});
        },
      ),
    );
  }
}
